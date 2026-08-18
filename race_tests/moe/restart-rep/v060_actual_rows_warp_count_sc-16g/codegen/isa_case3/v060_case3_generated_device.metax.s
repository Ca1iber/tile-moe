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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	and_b32 r0, 0x3ff, r0
	ldu_b256 s16, s0, 0x0
	ldu_b64 s6, s0, 0x30
	ldu_b128 s24, s0, 0x20
	smul_i32 s0, 0xe0000, s5
	smov_b32 s12, s5
	shr_b32 r1, 6, r0
	smov_b32 s5, 0x38000
	mov_b32 r2, s0
	mad_u24 r2, r1, s5, r2
	and_b32 r10, r0, 15
	smov_b32 s5, 0x1c00
	mad_u24 r2, r10, s5, r2
	shr_b32 r11, 1, r0
	and_or_b32 r148, r11, 24, r2
.Ltmp4:
	.loc	2 33 59 prologue_end            ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:59
	mov_b32 r149, 0
	shl_b64 r2, 1, r148
	arrive slcnt(0)
	add_co_u32 r4, s24, r2
	mov_b32 r2, s25
	addc_co_u32 r5, r2, r3
	add_co_u32 r6, 0x38000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 33 41 is_stmt 0               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:41
	ldg_b128 r150, r4, 0x0
	.loc	2 33 218                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:218
	or_b32 r4, r148, 32
	.loc	2 33 59                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:59
	mov_b32 r5, 0
	shl_b64 r4, 1, r4
	.loc	2 33 41                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:41
	ldg_b128 r154, r6, 0x0
	.loc	2 33 59                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:59
	add_co_u32 r4, s24, r4
	.loc	2 33 218                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:218
	add_u32 r6, 0x1c020, r148
	.loc	2 33 59                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:59
	mov_b32 r7, 0
	addc_co_u32 r5, r2, r5
	shl_b64 r6, 1, r6
	add_co_u32 r6, s24, r6
	addc_co_u32 r7, r2, r7
	.loc	2 33 41                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:41
	ldg_b128 r162, r4, 0x0
	.loc	2 18 19 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:18:19
	smov_b32 s13, 0
	.loc	2 33 41                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:33:41
	ldg_b128 r166, r6, 0x0
	.loc	2 18 19                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:18:19
	sshl_b64 s2, 2, s12
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s2, s2, 0x0
	shl_b32 r27, 3, r0
	and_b32 r18, r27, 32
	add_u32 r2, r18, r0
	and_b32 r4, r2, 32
	and_b32 r2, r27, 16
	add_u32 r2, r2, r0
	arrive slcnt(0)
	sashr_i32 s3, 31, s2
	.loc	2 19 20                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:19:20
	sshl_b64 s8, 2, s2
	sadd_co_u32 s10, s22, s8
	saddc_co_u32 s11, s23, s9
	.loc	2 20 22                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:20:22
	sadd_co_u32 s8, s20, s8
	saddc_co_u32 s9, s21, s9
	.loc	2 19 20                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:19:20
	ldu_b32 s1, s10, 0x0
	.loc	2 20 22                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:20:22
	ldu_b32 s3, s8, 0x0
	sshl_b32 s0, 7, s12
	and_b32 r5, r2, 16
	mul_u24 r2, r0, 9
	and_b32 r6, r2, 8
	shr_b32 r2, 5, r0
	arrive slcnt(0)
	ssub_co_i32 s0, s1, s0
	sadd_co_i32 s8, s0, s3
	sadd_co_u32 s0, 0x80, s24
	add_shl_u32 r2, r2, r11, 4
	and_b32 r12, r2, 16
	shr_b32 r2, 4, r0
	smul_i32 s13, 0xe00000, s2
	saddc_co_u32 s1, s25, 0
	smin_i32 s2, 0x80, s8
	smax_i32 s2, s2, 0
	add_shl_u32 r13, r2, r0, 3
	and_b32 r3, 0x1fc0, r27
	or_b32 r2, r4, r6
	sadd_co_i32 s2, s2, 31
	or3_b32 r2, r2, r3, r5
	or_b32 r3, r3, r4
	or3_b32 r3, r3, r5, r6
	sshr_b32 s2, 5, s2
	shl_b32 r5, 1, r3
	cmp_lt_u32 s14, r1, s2
	sadd_co_u32 s2, 0x100, s24
	shl_b32 r7, 1, r2
	saddc_co_u32 s3, s25, 0
	add_u32 r8, 0x1000, r5
	add_u32 r9, 0x2000, r5
	sadd_co_i32 s9, 0x4000, 0
	add_u32 r14, 0x3000, r5
	shl_b32 r1, 6, r0
	add_u32 r2, 0, r7
	add_u32 r3, 0, r8
	add_u32 r4, 0, r9
	add_u32 r6, s9, r7
	add_u32 r7, s9, r8
	add_u32 r8, s9, r9
	add_u32 r9, s9, r14
	smov_b32 s9, 0x1e0
	and_b32 r17, 0x3c0, r1
	and_or_b32 r10, r11, s9, r10
	and_or_b32 r25, r13, 8, r12
	smul_i32 s18, 0xe0000, s4
	cmp_lt_i32 s10, r10, s8
	or_b32 r10, r10, 16
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:35:3
	sadd_co_i32 s13, s13, s18
	or_b32 r20, 0x400, r17
	or_b32 r21, r25, r18
	or_b32 r22, 0x800, r17
	or_b32 r23, 0xc00, r17
	or_b32 r24, 0x1000, r17
	or_b32 r28, 0x1400, r17
	or_b32 r29, 0x1800, r17
	or_b32 r30, 0x1c00, r17
	xor_b32 r31, r18, 32
	or_b32 r11, r21, r20
	or_b32 r12, r21, r22
	or_b32 r13, r21, r23
	or_b32 r15, r21, r28
	or_b32 r16, r21, r29
	shr_b32 r26, 3, r0
	add_u32 r5, 0, r14
	or_b32 r14, r21, r24
	cmp_lt_i32 s8, r10, s8
	or_b32 r19, r25, r17
	or_b32 r17, r21, r30
	or3_b32 r21, r25, r23, r31
	or3_b32 r23, r25, r28, r31
	mov_b32 r28, s13
	or_b32 r10, r19, r18
	or_b32 r18, r19, r31
	or3_b32 r19, r25, r20, r31
	or3_b32 r20, r25, r22, r31
	or3_b32 r22, r25, r24, r31
	or3_b32 r24, r25, r29, r31
	mad_u24 r26, r26, s5, r28
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:0
	shl_b64 r28, 0, 0
	shl_b64 r180, 0, 0
	or3_b32 r25, r25, r30, r31
	shl_b64 r30, 0, 0
	smov_b64 s18, 0
	shl_b64 r36, 0, r28
	shl_b64 r44, 0, r28
	shl_b64 r52, 0, r28
	shl_b64 r60, 0, r28
	shl_b64 r68, 0, r28
	shl_b64 r76, 0, r28
	shl_b64 r84, 0, r28
	shl_b64 r92, 0, r28
	shl_b64 r100, 0, r28
	shl_b64 r108, 0, r28
	shl_b64 r116, 0, r28
	shl_b64 r124, 0, r28
	shl_b64 r132, 0, r28
	shl_b64 r140, 0, r28
	shl_b64 r158, 0, r28
	shl_b64 r32, 0, r28
	shl_b64 r40, 0, r28
	shl_b64 r48, 0, r28
	shl_b64 r56, 0, r28
	shl_b64 r64, 0, r28
	shl_b64 r72, 0, r28
	shl_b64 r80, 0, r28
	shl_b64 r88, 0, r28
	shl_b64 r96, 0, r28
	shl_b64 r104, 0, r28
	shl_b64 r112, 0, r28
	shl_b64 r120, 0, r28
	shl_b64 r128, 0, r28
	shl_b64 r136, 0, r28
	shl_b64 r144, 0, r28
	shl_b64 r170, 0, r28
	shr_b32 r1, 2, r0
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
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:35:3
	mad_u32 r174, r148, 2, s24
	and_or_b32 r176, r27, 56, r26
	smov_b64 s20, s18
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
	shl_b64 r160, 0, r30
	shl_b64 r34, 0, r30
	shl_b64 r42, 0, r30
	shl_b64 r178, 0, r180
	shl_b64 r184, 0, r180
	shl_b64 r182, 0, r180
	shl_b64 r192, 0, r180
	shl_b64 r190, 0, r180
	shl_b64 r188, 0, r180
	shl_b64 r186, 0, r180
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
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %for.inc811
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 35 31                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:35:31
	sadd_co_u32 s20, 0x80, s20
	saddc_co_u32 s21, s21, 0
	sadd_co_u32 s18, 0x100, s18
	saddc_co_u32 s19, s19, 0
	scmp_eq_u64 0x3800, s18
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:35:3
	snop 0
	bra_smsks LBB2_26
LBB2_2:                                 ; %for.cond64.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 38 362 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:38:362
	add_co_u32 r26, r176, s20
	add_u32 r27, 0x38000, r26
	mad_i32 r194, r26, 2, s16
	mad_i32 r196, r27, 2, s16
	add_u32 r177, 0x70000, r26
	.loc	2 38 345 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:38:345
	ldg_b128 r198, r194, 0x0
	ldg_b128 r202, r196, 0x0
	.loc	2 38 362                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:38:362
	mad_i32 r196, r177, 2, s16
	add_u32 r194, 0xa8000, r26
	mad_i32 r206, r194, 2, s16
	.loc	2 38 345                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:38:345
	ldg_b128 r208, r196, 0x0
	.loc	2 42 369 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:42:369
	mad_i32 r196, r26, 2, s26
	.loc	2 38 345                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:38:345
	ldg_b128 r212, r206, 0x0
	.loc	2 42 369                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:42:369
	mad_i32 r206, r27, 2, s26
	.loc	2 42 354 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:42:354
	ldg_b128 r216, r196, 0x0
	.loc	2 42 369                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:42:369
	mad_i32 r196, r177, 2, s26
	mad_i32 r194, r194, 2, s26
	.loc	2 42 354                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:42:354
	ldg_b128 r220, r206, 0x0
	ldg_b128 r224, r196, 0x0
	ldg_b128 r194, r194, 0x0
	.loc	2 38 362 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:38:362
	mov_b32 r27, s21
	.loc	2 38 345 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:38:345
	arrive gvmcnt(7)
	sts_b128 r2, 0x0, r198
	arrive gvmcnt(6)
	sts_b128 r3, 0x0, r202
	arrive gvmcnt(5)
	sts_b128 r4, 0x0, r208
	arrive gvmcnt(4)
	sts_b128 r5, 0x0, r212
	.loc	2 42 354 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:42:354
	arrive gvmcnt(3)
	sts_b128 r6, 0x0, r216
	arrive gvmcnt(2)
	sts_b128 r7, 0x0, r220
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r224
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r194
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 47 11                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:47:11
	add_co_u32 r194, r148, s20
	addc_co_u32 r195, r149, r27
	and_xmsk s22, s10
	snop 0
	bra_xmsks LBB2_11
; %bb.3:                                ; %for.inc234
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s22
	.loc	2 47 11                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:47:11
	and_xmsk s22, s8
	snop 0
	bra_xmsks LBB2_12
LBB2_4:                                 ; %for.inc234.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s22
	.loc	2 47 11                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:47:11
	and_xmsk s22, s10
	snop 0
	bra_xmsks LBB2_13
LBB2_5:                                 ; %for.inc234.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s22
	.loc	2 47 11                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:47:11
	and_xmsk s22, s8
	snop 0
	bra_xmsks LBB2_14
LBB2_6:                                 ; %for.inc234.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s22
	.loc	2 51 9 is_stmt 1                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:51:9
	and_xmsk s22, s14
	snop 0
	bra_xmskz LBB2_8
LBB2_7:                                 ; %for.cond253.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r196, r10, 0x0
	lds_b128 r200, r11, 0x0
	lds_b128 r204, r12, 0x0
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	add_i32 r27, 0x4000, r10
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r196, r150, r158
	mma_16x16x16f16 r84, r196, r154, r84
	mma_16x16x16f16 r158, r198, r152, r158
	mma_16x16x16f16 r84, r198, r156, r84
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r196, r13, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r200, r150, r140
	mma_16x16x16f16 r76, r200, r154, r76
	mma_16x16x16f16 r140, r202, r152, r140
	mma_16x16x16f16 r76, r202, r156, r76
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r200, r14, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r150, r132
	mma_16x16x16f16 r68, r204, r154, r68
	mma_16x16x16f16 r132, r206, r152, r132
	mma_16x16x16f16 r68, r206, r156, r68
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r204, r15, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r196, r150, r124
	mma_16x16x16f16 r60, r196, r154, r60
	mma_16x16x16f16 r124, r198, r152, r124
	mma_16x16x16f16 r60, r198, r156, r60
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r196, r16, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r200, r150, r116
	mma_16x16x16f16 r52, r200, r154, r52
	mma_16x16x16f16 r116, r202, r152, r116
	mma_16x16x16f16 r52, r202, r156, r52
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r200, r17, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r204, r150, r108
	mma_16x16x16f16 r44, r204, r154, r44
	mma_16x16x16f16 r108, r206, r152, r108
	mma_16x16x16f16 r44, r206, r156, r44
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r204, r27, 0x0
	add_i32 r27, 0x4000, r11
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r196, r150, r100
	mma_16x16x16f16 r36, r196, r154, r36
	mma_16x16x16f16 r100, r198, r152, r100
	mma_16x16x16f16 r36, r198, r156, r36
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r196, r27, 0x0
	add_i32 r27, 0x4000, r12
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r200, r150, r92
	mma_16x16x16f16 r28, r200, r154, r28
	mma_16x16x16f16 r92, r202, r152, r92
	mma_16x16x16f16 r28, r202, r156, r28
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r200, r27, 0x0
	add_i32 r27, 0x4000, r13
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r204, r150, r170
	mma_16x16x16f16 r88, r204, r154, r88
	mma_16x16x16f16 r170, r206, r152, r170
	mma_16x16x16f16 r88, r206, r156, r88
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r204, r27, 0x0
	add_i32 r27, 0x4000, r14
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r196, r150, r144
	mma_16x16x16f16 r80, r196, r154, r80
	mma_16x16x16f16 r144, r198, r152, r144
	mma_16x16x16f16 r80, r198, r156, r80
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r196, r27, 0x0
	add_i32 r27, 0x4000, r15
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r200, r150, r136
	mma_16x16x16f16 r72, r200, r154, r72
	mma_16x16x16f16 r136, r202, r152, r136
	mma_16x16x16f16 r72, r202, r156, r72
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r200, r27, 0x0
	add_i32 r27, 0x4000, r16
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r204, r150, r128
	mma_16x16x16f16 r64, r204, r154, r64
	mma_16x16x16f16 r128, r206, r152, r128
	mma_16x16x16f16 r64, r206, r156, r64
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r204, r27, 0x0
	add_i32 r27, 0x4000, r17
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r196, r150, r120
	mma_16x16x16f16 r56, r196, r154, r56
	mma_16x16x16f16 r120, r198, r152, r120
	mma_16x16x16f16 r56, r198, r156, r56
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r196, r27, 0x0
	add_i32 r27, 0x4000, r18
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r200, r150, r112
	mma_16x16x16f16 r48, r200, r154, r48
	mma_16x16x16f16 r112, r202, r152, r112
	mma_16x16x16f16 r48, r202, r156, r48
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r200, r18, 0x0
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r204, r150, r104
	mma_16x16x16f16 r40, r204, r154, r40
	mma_16x16x16f16 r104, r206, r152, r104
	mma_16x16x16f16 r40, r206, r156, r40
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r204, r19, 0x0
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r196, r150, r96
	mma_16x16x16f16 r32, r196, r154, r32
	mma_16x16x16f16 r96, r198, r152, r96
	mma_16x16x16f16 r32, r198, r156, r32
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r196, r20, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r200, r162, r158
	mma_16x16x16f16 r84, r200, r166, r84
	mma_16x16x16f16 r158, r202, r164, r158
	mma_16x16x16f16 r84, r202, r168, r84
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r200, r21, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r162, r140
	mma_16x16x16f16 r76, r204, r166, r76
	mma_16x16x16f16 r140, r206, r164, r140
	mma_16x16x16f16 r76, r206, r168, r76
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r204, r22, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r196, r162, r132
	mma_16x16x16f16 r68, r196, r166, r68
	mma_16x16x16f16 r132, r198, r164, r132
	mma_16x16x16f16 r68, r198, r168, r68
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r196, r23, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r200, r162, r124
	mma_16x16x16f16 r60, r200, r166, r60
	mma_16x16x16f16 r124, r202, r164, r124
	mma_16x16x16f16 r60, r202, r168, r60
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r200, r24, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r204, r162, r116
	mma_16x16x16f16 r52, r204, r166, r52
	mma_16x16x16f16 r116, r206, r164, r116
	mma_16x16x16f16 r52, r206, r168, r52
	.loc	2 54 45                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:54:45
	lds_b128 r204, r25, 0x0
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r196, r162, r108
	mma_16x16x16f16 r44, r196, r166, r44
	mma_16x16x16f16 r108, r198, r164, r108
	mma_16x16x16f16 r44, r198, r168, r44
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r196, r27, 0x0
	add_i32 r27, 0x4000, r19
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r200, r162, r100
	mma_16x16x16f16 r36, r200, r166, r36
	mma_16x16x16f16 r100, r202, r164, r100
	mma_16x16x16f16 r36, r202, r168, r36
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r200, r27, 0x0
	add_i32 r27, 0x4000, r20
	.loc	2 60 57                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:60:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r204, r162, r92
	mma_16x16x16f16 r28, r204, r166, r28
	mma_16x16x16f16 r92, r206, r164, r92
	mma_16x16x16f16 r28, r206, r168, r28
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r204, r27, 0x0
	add_i32 r27, 0x4000, r21
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r196, r162, r170
	mma_16x16x16f16 r88, r196, r166, r88
	mma_16x16x16f16 r170, r198, r164, r170
	mma_16x16x16f16 r88, r198, r168, r88
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r196, r27, 0x0
	add_i32 r27, 0x4000, r22
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r200, r162, r144
	mma_16x16x16f16 r80, r200, r166, r80
	mma_16x16x16f16 r144, r202, r164, r144
	mma_16x16x16f16 r80, r202, r168, r80
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r200, r27, 0x0
	add_i32 r27, 0x4000, r23
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r204, r162, r136
	mma_16x16x16f16 r72, r204, r166, r72
	mma_16x16x16f16 r136, r206, r164, r136
	mma_16x16x16f16 r72, r206, r168, r72
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r204, r27, 0x0
	add_i32 r27, 0x4000, r24
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r196, r162, r128
	mma_16x16x16f16 r64, r196, r166, r64
	mma_16x16x16f16 r128, r198, r164, r128
	mma_16x16x16f16 r64, r198, r168, r64
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r196, r27, 0x0
	add_i32 r27, 0x4000, r25
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r200, r162, r120
	mma_16x16x16f16 r56, r200, r166, r56
	mma_16x16x16f16 r120, r202, r164, r120
	mma_16x16x16f16 r56, r202, r168, r56
	.loc	2 68 47                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:68:47
	lds_b128 r200, r27, 0x0
	.loc	2 74 55                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:74:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r204, r162, r112
	mma_16x16x16f16 r48, r204, r166, r48
	mma_16x16x16f16 r112, r206, r164, r112
	mma_16x16x16f16 r48, r206, r168, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r104, r196, r162, r104
	mma_16x16x16f16 r40, r196, r166, r40
	mma_16x16x16f16 r104, r198, r164, r104
	mma_16x16x16f16 r40, r198, r168, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r96, r200, r162, r96
	mma_16x16x16f16 r32, r200, r166, r32
	mma_16x16x16f16 r96, r202, r164, r96
	mma_16x16x16f16 r32, r202, r168, r32
LBB2_8:                                 ; %if.end431
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 55 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:55
	sor_b64 xmsk, xmsk, s22
.Ltmp7:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 86 362                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:86:362
	add_u32 r27, r26, 64
	mad_i32 r196, r27, 2, s16
	add_u32 r177, 0x38040, r26
	mad_i32 r198, r177, 2, s16
	.loc	2 86 345 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:86:345
	ldg_b128 r200, r196, 0x0
	.loc	2 86 362                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:86:362
	add_u32 r196, 0x70040, r26
	add_u32 r26, 0xa8040, r26
	.loc	2 86 345                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:86:345
	ldg_b128 r204, r198, 0x0
	.loc	2 86 362                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:86:362
	mad_i32 r198, r196, 2, s16
	mad_i32 r208, r26, 2, s16
	.loc	2 90 369 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:90:369
	mad_i32 r196, r196, 2, s26
	.loc	2 86 345                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:86:345
	ldg_b128 r210, r198, 0x0
	ldg_b128 r214, r208, 0x0
	.loc	2 90 369                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:90:369
	mad_i32 r198, r27, 2, s26
	mad_i32 r208, r177, 2, s26
	mad_i32 r26, r26, 2, s26
	.loc	2 90 354 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:90:354
	ldg_b128 r218, r198, 0x0
	ldg_b128 r222, r208, 0x0
	ldg_b128 r196, r196, 0x0
	ldg_b128 r226, r26, 0x0
	.loc	2 86 345 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:86:345
	arrive gvmcnt(7)
	sts_b128 r2, 0x0, r200
	arrive gvmcnt(6)
	sts_b128 r3, 0x0, r204
	arrive gvmcnt(5)
	sts_b128 r4, 0x0, r210
	arrive gvmcnt(4)
	sts_b128 r5, 0x0, r214
	.loc	2 90 354                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:90:354
	arrive gvmcnt(3)
	sts_b128 r6, 0x0, r218
	arrive gvmcnt(2)
	sts_b128 r7, 0x0, r222
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r196
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r226
.Ltmp9:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 93 16                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:93:16
	mov_b32 r26, 0x3700
	mov_b32 r27, 0
	cmp_lg_u64 s22, s18, r26
	scmp_eq_u64 0x3700, s18
	.loc	2 93 9 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:93:9
	snop 0
	bra_smskz LBB2_15
; %bb.9:                                ; %if.end612
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 101 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:101:9
	and_xmsk s24, s14
	snop 0
	bra_xmsks LBB2_21
LBB2_10:                                ; %if.end807
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s24
	.loc	2 133 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:133:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB2_1
	bra LBB2_22
	.p2align	5
LBB2_11:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	add_co_u32 r186, r174, s18
	mov_b32 r27, s19
	addc_co_u32 r187, r175, r27
	.loc	2 48 47 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:48:47
	snop 1
	ldg_b128 r186, r186, 0x80
	sor_b64 xmsk, xmsk, s22
	.loc	2 47 11                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:47:11
	and_xmsk s22, s8
	snop 0
	bra_xmskz LBB2_4
LBB2_12:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	add_co_u32 r27, r174, s18
	mov_b32 r177, s19
	addc_co_u32 r177, r175, r177
	.loc	2 48 47 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:48:47
	add_co_u32 r190, 0x38080, r27
	addc_co_u32 r191, r177, 0
	snop 1
	ldg_b128 r190, r190, 0x0
	sor_b64 xmsk, xmsk, s22
	.loc	2 47 11                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:47:11
	and_xmsk s22, s10
	snop 0
	bra_xmskz LBB2_5
LBB2_13:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	add_co_u32 r182, r174, s18
	mov_b32 r27, s19
	addc_co_u32 r183, r175, r27
	.loc	2 48 47 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:48:47
	snop 1
	ldg_b128 r182, r182, 0xc0
	sor_b64 xmsk, xmsk, s22
	.loc	2 47 11                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:47:11
	and_xmsk s22, s8
	snop 0
	bra_xmskz LBB2_6
LBB2_14:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	shl_b64 r178, 1, r194
	or_b32 r27, r178, 64
	add_co_u32 r27, s0, r27
	mov_b32 r177, s1
	addc_co_u32 r177, r177, r179
	add_co_u32 r178, 0x38000, r27
	addc_co_u32 r179, r177, 0
	.loc	2 48 47 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:48:47
	snop 1
	ldg_b128 r178, r178, 0x0
	sor_b64 xmsk, xmsk, s22
	.loc	2 51 9                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:51:9
	and_xmsk s22, s14
	snop 0
	bra_xmsks LBB2_7
	bra LBB2_8
	.p2align	5
LBB2_15:                                ; %for.cond559.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 96 13                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:96:13
	and_xmsk s24, s10
	snop 0
	bra_xmsks LBB2_23
; %bb.16:                               ; %for.inc609
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s24
	.loc	2 96 13                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:96:13
	and_xmsk s24, s8
	snop 0
	bra_xmsks LBB2_24
LBB2_17:                                ; %for.inc609.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s24
	.loc	2 96 13                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:96:13
	and_xmsk s24, s10
	snop 0
	bra_xmsks LBB2_25
LBB2_18:                                ; %for.inc609.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s24
	.loc	2 96 13                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:96:13
	and_xmsk s24, s8
	snop 0
	bra_xmskz LBB2_20
LBB2_19:                                ; %if.then577.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	shl_b64 r166, 1, r194
	or_b32 r26, r166, 64
	add_co_u32 r26, s2, r26
	mov_b32 r27, s3
	addc_co_u32 r27, r27, r167
	add_co_u32 r26, 0x38000, r26
	addc_co_u32 r27, r27, 0
	.loc	2 97 48 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:97:48
	snop 1
	ldg_b128 r166, r26, 0x0
LBB2_20:                                ; %Flow
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s24
	.loc	2 101 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:101:9
	and_xmsk s24, s14
	snop 0
	bra_xmskz LBB2_10
LBB2_21:                                ; %for.cond629.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r194, r10, 0x0
	lds_b128 r198, r11, 0x0
	lds_b128 r202, r12, 0x0
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	add_i32 r26, 0x4000, r10
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r194, r186, r158
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r158, r196, r188, r158
	mma_16x16x16f16 r84, r196, r192, r84
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r194, r13, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r198, r186, r140
	mma_16x16x16f16 r76, r198, r190, r76
	mma_16x16x16f16 r140, r200, r188, r140
	mma_16x16x16f16 r76, r200, r192, r76
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r198, r14, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r186, r132
	mma_16x16x16f16 r68, r202, r190, r68
	mma_16x16x16f16 r132, r204, r188, r132
	mma_16x16x16f16 r68, r204, r192, r68
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r202, r15, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r194, r186, r124
	mma_16x16x16f16 r60, r194, r190, r60
	mma_16x16x16f16 r124, r196, r188, r124
	mma_16x16x16f16 r60, r196, r192, r60
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r194, r16, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r198, r186, r116
	mma_16x16x16f16 r52, r198, r190, r52
	mma_16x16x16f16 r116, r200, r188, r116
	mma_16x16x16f16 r52, r200, r192, r52
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r198, r17, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r202, r186, r108
	mma_16x16x16f16 r44, r202, r190, r44
	mma_16x16x16f16 r108, r204, r188, r108
	mma_16x16x16f16 r44, r204, r192, r44
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r202, r26, 0x0
	add_i32 r26, 0x4000, r11
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r194, r186, r100
	mma_16x16x16f16 r36, r194, r190, r36
	mma_16x16x16f16 r100, r196, r188, r100
	mma_16x16x16f16 r36, r196, r192, r36
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r194, r26, 0x0
	add_i32 r26, 0x4000, r12
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r198, r186, r92
	mma_16x16x16f16 r28, r198, r190, r28
	mma_16x16x16f16 r92, r200, r188, r92
	mma_16x16x16f16 r28, r200, r192, r28
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r198, r26, 0x0
	add_i32 r26, 0x4000, r13
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r202, r186, r170
	mma_16x16x16f16 r88, r202, r190, r88
	mma_16x16x16f16 r170, r204, r188, r170
	mma_16x16x16f16 r88, r204, r192, r88
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r202, r26, 0x0
	add_i32 r26, 0x4000, r14
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r194, r186, r144
	mma_16x16x16f16 r80, r194, r190, r80
	mma_16x16x16f16 r144, r196, r188, r144
	mma_16x16x16f16 r80, r196, r192, r80
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r194, r26, 0x0
	add_i32 r26, 0x4000, r15
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r186, r136
	mma_16x16x16f16 r72, r198, r190, r72
	mma_16x16x16f16 r136, r200, r188, r136
	mma_16x16x16f16 r72, r200, r192, r72
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r198, r26, 0x0
	add_i32 r26, 0x4000, r16
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r202, r186, r128
	mma_16x16x16f16 r64, r202, r190, r64
	mma_16x16x16f16 r128, r204, r188, r128
	mma_16x16x16f16 r64, r204, r192, r64
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r202, r26, 0x0
	add_i32 r26, 0x4000, r17
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r194, r186, r120
	mma_16x16x16f16 r56, r194, r190, r56
	mma_16x16x16f16 r120, r196, r188, r120
	mma_16x16x16f16 r56, r196, r192, r56
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r194, r26, 0x0
	add_i32 r26, 0x4000, r18
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r198, r186, r112
	mma_16x16x16f16 r48, r198, r190, r48
	mma_16x16x16f16 r112, r200, r188, r112
	mma_16x16x16f16 r48, r200, r192, r48
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r198, r18, 0x0
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r202, r186, r104
	mma_16x16x16f16 r40, r202, r190, r40
	mma_16x16x16f16 r104, r204, r188, r104
	mma_16x16x16f16 r40, r204, r192, r40
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r202, r19, 0x0
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r194, r186, r96
	mma_16x16x16f16 r32, r194, r190, r32
	mma_16x16x16f16 r96, r196, r188, r96
	mma_16x16x16f16 r32, r196, r192, r32
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r194, r20, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r198, r182, r158
	mma_16x16x16f16 r84, r198, r178, r84
	mma_16x16x16f16 r158, r200, r184, r158
	mma_16x16x16f16 r84, r200, r180, r84
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r198, r21, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r182, r140
	mma_16x16x16f16 r76, r202, r178, r76
	mma_16x16x16f16 r140, r204, r184, r140
	mma_16x16x16f16 r76, r204, r180, r76
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r202, r22, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r194, r182, r132
	mma_16x16x16f16 r68, r194, r178, r68
	mma_16x16x16f16 r132, r196, r184, r132
	mma_16x16x16f16 r68, r196, r180, r68
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r194, r23, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r182, r124
	mma_16x16x16f16 r60, r198, r178, r60
	mma_16x16x16f16 r124, r200, r184, r124
	mma_16x16x16f16 r60, r200, r180, r60
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r198, r24, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r202, r182, r116
	mma_16x16x16f16 r52, r202, r178, r52
	mma_16x16x16f16 r116, r204, r184, r116
	mma_16x16x16f16 r52, r204, r180, r52
	.loc	2 104 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:104:47
	lds_b128 r202, r25, 0x0
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r194, r182, r108
	mma_16x16x16f16 r44, r194, r178, r44
	mma_16x16x16f16 r108, r196, r184, r108
	mma_16x16x16f16 r44, r196, r180, r44
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r194, r26, 0x0
	add_i32 r26, 0x4000, r19
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r198, r182, r100
	mma_16x16x16f16 r36, r198, r178, r36
	mma_16x16x16f16 r100, r200, r184, r100
	mma_16x16x16f16 r36, r200, r180, r36
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r198, r26, 0x0
	add_i32 r26, 0x4000, r20
	.loc	2 110 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:110:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r202, r182, r92
	mma_16x16x16f16 r28, r202, r178, r28
	mma_16x16x16f16 r92, r204, r184, r92
	mma_16x16x16f16 r28, r204, r180, r28
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r202, r26, 0x0
	add_i32 r26, 0x4000, r21
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r194, r182, r170
	mma_16x16x16f16 r88, r194, r178, r88
	mma_16x16x16f16 r170, r196, r184, r170
	mma_16x16x16f16 r88, r196, r180, r88
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r194, r26, 0x0
	add_i32 r26, 0x4000, r22
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r182, r144
	mma_16x16x16f16 r80, r198, r178, r80
	mma_16x16x16f16 r144, r200, r184, r144
	mma_16x16x16f16 r80, r200, r180, r80
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r198, r26, 0x0
	add_i32 r26, 0x4000, r23
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r202, r182, r136
	mma_16x16x16f16 r72, r202, r178, r72
	mma_16x16x16f16 r136, r204, r184, r136
	mma_16x16x16f16 r72, r204, r180, r72
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r202, r26, 0x0
	add_i32 r26, 0x4000, r24
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r182, r128
	mma_16x16x16f16 r64, r194, r178, r64
	mma_16x16x16f16 r128, r196, r184, r128
	mma_16x16x16f16 r64, r196, r180, r64
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r194, r26, 0x0
	add_i32 r26, 0x4000, r25
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r198, r182, r120
	mma_16x16x16f16 r56, r198, r178, r56
	mma_16x16x16f16 r120, r200, r184, r120
	mma_16x16x16f16 r56, r200, r180, r56
	.loc	2 118 47                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:118:47
	lds_b128 r198, r26, 0x0
	.loc	2 124 56                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:124:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r202, r182, r112
	mma_16x16x16f16 r48, r202, r178, r48
	mma_16x16x16f16 r112, r204, r184, r112
	mma_16x16x16f16 r48, r204, r180, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r104, r194, r182, r104
	mma_16x16x16f16 r40, r194, r178, r40
	mma_16x16x16f16 r104, r196, r184, r104
	mma_16x16x16f16 r40, r196, r180, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r96, r198, r182, r96
	mma_16x16x16f16 r32, r198, r178, r32
	mma_16x16x16f16 r96, r200, r184, r96
	mma_16x16x16f16 r32, r200, r180, r32
	sor_b64 xmsk, xmsk, s24
	.loc	2 133 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:133:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB2_1
LBB2_22:                                ; %if.then809
                                        ;   in Loop: Header=BB2_2 Depth=1
.Ltmp11:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB2_1
.Ltmp12:
	.p2align	5
LBB2_23:                                ; %if.then577
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	add_co_u32 r150, r174, s18
	mov_b32 r26, s19
	addc_co_u32 r151, r175, r26
	.loc	2 97 48 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:97:48
	snop 1
	ldg_b128 r150, r150, 0x100
	sor_b64 xmsk, xmsk, s24
	.loc	2 96 13                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:96:13
	and_xmsk s24, s8
	snop 0
	bra_xmskz LBB2_17
LBB2_24:                                ; %if.then577.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	add_co_u32 r26, r174, s18
	mov_b32 r27, s19
	addc_co_u32 r27, r175, r27
	.loc	2 97 48 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:97:48
	add_co_u32 r26, 0x38100, r26
	addc_co_u32 r27, r27, 0
	snop 1
	ldg_b128 r154, r26, 0x0
	sor_b64 xmsk, xmsk, s24
	.loc	2 96 13                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:96:13
	and_xmsk s24, s10
	snop 0
	bra_xmskz LBB2_18
LBB2_25:                                ; %if.then577.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	add_co_u32 r162, r174, s18
	mov_b32 r26, s19
	addc_co_u32 r163, r175, r26
	.loc	2 97 48 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:97:48
	snop 1
	ldg_b128 r162, r162, 0x140
	sor_b64 xmsk, xmsk, s24
	.loc	2 96 13                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:96:13
	and_xmsk s24, s8
	snop 0
	bra_xmsks LBB2_19
	bra LBB2_20
LBB2_26:                                ; %for.cond814.preheader
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	shl_b32 r2, 10, r0
	sshl_b32 s0, 18, s12
	sshl_b32 s1, 7, s4
	shl_b32 r0, 11, r0
	and_b32 r2, 0xf0000, r2
	sadd_co_i32 s0, s1, s0
	and_b32 r0, 0x7800, r0
	add_u32 r2, s0, r2
	add_u32 r0, r2, r0
	and_or_b32 r0, r1, 12, r0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_43
; %bb.27:                               ; %if.end991
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_44
LBB2_28:                                ; %if.end991.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_45
LBB2_29:                                ; %if.end991.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_46
LBB2_30:                                ; %if.end991.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_47
LBB2_31:                                ; %if.end991.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_48
LBB2_32:                                ; %if.end991.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_49
LBB2_33:                                ; %if.end991.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_50
LBB2_34:                                ; %if.end991.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_51
LBB2_35:                                ; %if.end991.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_52
LBB2_36:                                ; %if.end991.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_53
LBB2_37:                                ; %if.end991.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_54
LBB2_38:                                ; %if.end991.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_55
LBB2_39:                                ; %if.end991.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_56
LBB2_40:                                ; %if.end991.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_57
LBB2_41:                                ; %if.end991.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_58
LBB2_42:                                ; %if.end991.15
	.loc	2 193 1 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:193:1
	snop 1
	endk
LBB2_43:                                ; %if.then931
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r161
.Ltmp13:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r161, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp14:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r160
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp16:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r161, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r173
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r160, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp18:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r159
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp20:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r160, r5
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r159, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp22:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r158
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp24:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r159, r6
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r158, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp26:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r158, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r170
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r171
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r172
.Ltmp27:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp28:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp29:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp30:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp31:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_b32 r3, 1, r0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_28
LBB2_44:                                ; %if.then931.1
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r143
.Ltmp32:
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
.Ltmp33:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r142
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp35:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r143, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r147
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r142, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp37:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r141
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp39:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r142, r5
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r141, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp41:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r140
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp43:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r141, r6
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r140, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp45:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r140, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r144
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r145
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r146
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp47:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp48:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp49:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp50:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_or_b32 r3, 1, r0, 32
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_29
LBB2_45:                                ; %if.then931.2
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r135
.Ltmp51:
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
.Ltmp52:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r134
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp54:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r135, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r139
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r134, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp56:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r133
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp58:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r134, r5
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r133, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp60:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r132
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp62:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r133, r6
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r132, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp64:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r132, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r136
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r137
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r138
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp66:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp68:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp69:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_or_b32 r3, 1, r0, 64
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_30
LBB2_46:                                ; %if.then931.3
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r127
.Ltmp70:
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
.Ltmp71:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r126
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp73:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r127, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r131
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r126, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp75:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r125
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp77:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r126, r5
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r125, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp79:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r124
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp81:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r125, r6
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r124, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp83:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r124, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r128
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r129
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r130
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp85:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp87:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp88:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	mov_b32 r3, 0x60
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_31
LBB2_47:                                ; %if.then931.4
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r119
.Ltmp89:
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
.Ltmp90:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r118
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp92:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r119, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r123
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r118, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp94:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r117
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp96:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r118, r5
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r117, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp98:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r116
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp100:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r117, r6
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r116, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp102:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r116, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r120
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r121
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r122
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp104:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp106:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp107:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	mov_b32 r3, 0x80
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_32
LBB2_48:                                ; %if.then931.5
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r111
.Ltmp108:
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
.Ltmp109:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r110
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp111:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r111, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r115
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r110, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp113:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r109
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp115:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r110, r5
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r109, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp117:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r108
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp119:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r109, r6
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r108, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp121:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r108, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r112
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r113
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r114
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp123:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp125:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp126:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	mov_b32 r3, 0xa0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_33
LBB2_49:                                ; %if.then931.6
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r103
.Ltmp127:
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
.Ltmp128:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r102
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp130:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r103, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r107
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r102, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp132:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r101
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp134:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r102, r5
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r101, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp136:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r100
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp138:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r101, r6
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r100, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp140:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r100, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r104
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r105
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r106
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp142:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp144:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp145:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	mov_b32 r3, 0xc0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_34
LBB2_50:                                ; %if.then931.7
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r95
.Ltmp146:
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
.Ltmp147:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r94
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp149:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r95, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r99
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r94, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp151:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r93
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp153:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r94, r5
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r93, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp155:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r92
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp157:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r93, r6
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r92, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp159:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r92, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r96
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r97
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r98
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp161:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp163:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp164:
	.loc	2 190 259 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 190 27 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	mov_b32 r3, 0xe0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_35
LBB2_51:                                ; %if.then931.8
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r87
.Ltmp165:
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
.Ltmp166:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r86
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp168:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r87, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r91
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r86, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp170:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r85
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp172:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r86, r5
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r85, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp174:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r84
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp176:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r85, r6
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r84, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp178:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r84, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r88
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r89
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r90
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp182:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp183:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10000, r3
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r9, r4, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_36
LBB2_52:                                ; %if.then931.9
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r79
.Ltmp184:
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
.Ltmp185:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r78
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp187:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r79, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r83
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r78, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp189:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r77
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp191:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r78, r5
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r77, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp193:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r76
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp195:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r77, r6
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r76, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp197:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r76, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r80
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r81
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r82
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp199:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp201:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp202:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10020, r3
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r9, r4, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_37
LBB2_53:                                ; %if.then931.10
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r71
.Ltmp203:
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
.Ltmp204:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r70
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp206:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r71, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r75
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r70, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp208:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r69
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp210:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r70, r5
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r69, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp212:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r68
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp214:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r69, r6
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r68, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp216:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r68, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r72
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r73
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r74
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp218:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp220:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp221:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10040, r3
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r9, r4, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_38
LBB2_54:                                ; %if.then931.11
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r63
.Ltmp222:
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
.Ltmp223:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r62
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp225:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r63, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r67
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r62, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp227:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r61
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp229:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r62, r5
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r61, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp231:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r60
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp233:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r61, r6
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r60, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp235:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r60, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r64
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r65
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r66
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp237:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp239:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp240:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10060, r3
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r9, r4, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_39
LBB2_55:                                ; %if.then931.12
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r55
.Ltmp241:
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
.Ltmp242:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r54
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp244:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r55, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r59
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r54, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp246:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r53
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp248:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r54, r5
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r53, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp250:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r52
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp252:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r53, r6
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r52, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp254:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r52, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r56
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r57
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r58
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp256:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp258:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp259:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10080, r3
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r9, r4, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_40
LBB2_56:                                ; %if.then931.13
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r47
.Ltmp260:
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
.Ltmp261:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r46
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp263:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r47, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r51
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r46, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp265:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r45
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp267:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r46, r5
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r45, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp269:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r44
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp271:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r45, r6
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r44, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp273:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r44, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r48
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r49
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r50
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp275:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp277:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp278:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x100a0, r3
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r9, r4, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_41
LBB2_57:                                ; %if.then931.14
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r39
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r39, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp280:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r38
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp282:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r39, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r43
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r38, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp284:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r37
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp286:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r38, r5
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r37, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp288:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r36
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp290:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r37, r6
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r36, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp292:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r36, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r40
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r41
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r42
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp294:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp296:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp297:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x100c0, r3
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r9, r4, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 179 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:179:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_42
LBB2_58:                                ; %if.then931.15
	.loc	2 161 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:161:27
	mul_f32 r1, 0xbfb8aa3b, r31
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r31, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp299:
	.loc	2 169 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:169:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
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
	.loc	2 160 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:160:27
	mul_f32 r5, 0xbfb8aa3b, r30
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp301:
	.loc	2 173 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:173:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 177 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:177:20
	mul_f32 r3, r31, r3
	.loc	2 187 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:187:24
	mul_f32 r3, r3, r35
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r30, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp303:
	.loc	2 168 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:168:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
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
	.loc	2 159 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:159:27
	mul_f32 r6, 0xbfb8aa3b, r29
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp305:
	.loc	2 172 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:172:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 176 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:176:20
	mul_f32 r5, r30, r5
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r29, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp307:
	.loc	2 167 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:167:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
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
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:158:27
	mul_f32 r7, 0xbfb8aa3b, r28
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp309:
	.loc	2 171 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:171:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 175 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:175:20
	mul_f32 r6, r29, r6
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r28, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp311:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:170:24
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
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:174:20
	mul_f32 r1, r28, r1
	.loc	2 184 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:184:24
	mul_f32 r1, r1, r32
	.loc	2 185 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:185:24
	mul_f32 r2, r6, r33
	.loc	2 186 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:186:24
	mul_f32 r4, r5, r34
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp313:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp314:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp315:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp316:
	.loc	2 190 27 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s6, r0
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x100e0, r0
	.loc	2 190 259 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	shl_b32 r0, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:27
	addc_co_u32 r7, r3, 0
	.loc	2 190 259                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:190:259
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 193 1 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:193:1
	snop 2
	endk
.Ltmp317:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 29
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
; codeLenInByte = 24824
; NumMTRegsForWarps/PEU: 230
; NumSTRegsForWarps/PEU: 32
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 195 0                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:195:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s24, s5
.Ltmp318:
	.loc	2 205 19 prologue_end           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:205:19
	smov_b32 s25, 0
	sshl_b64 s2, 2, s24
	ldu_b256 s16, s0, 0x20
	and_b32 r30, 0x3ff, r0
	shl_b32 r2, 10, r30
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	ldu_b32 s26, s2, 0x0
	shr_b32 r4, 1, r30
	and_b32 r2, 0xf0000, r2
	mov_b32 r3, s24
	shl_add_u32 r29, 18, r3, r2
	shl_b32 r2, 11, r30
	and_b32 r0, r30, 15
	arrive slcnt(0)
	sashr_i32 s27, 31, s26
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:206:20
	sshl_b64 s0, 2, s26
	sadd_co_u32 s2, s16, s0
	saddc_co_u32 s3, s17, s1
	ldu_b32 s5, s2, 0x0
	.loc	2 207 19                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:207:19
	sadd_co_u32 s2, s44, s0
	saddc_co_u32 s3, s45, s1
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:208:22
	sadd_co_u32 s0, s46, s0
	saddc_co_u32 s1, s47, s1
	ldu_b32 s0, s0, 0x0
	sshl_b32 s1, 7, s24
	arrive slcnt(0)
	ssub_co_i32 s5, s5, s1
	and_b32 r1, 0x1e0, r4
	and_b32 r31, 0x7800, r2
	.loc	2 221 64                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:64
	or_b32 r2, r1, r0
	shl_b64 r146, 0, 0
	sadd_co_i32 s6, s5, s0
	.loc	2 221 93 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:93
	cmp_ge_i32 s10, r2, s6
	cmp_lt_i32 s14, r2, s6
	and_b32 r28, r4, 24
	shl_b64 r144, 0, r146
	.loc	2 221 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:9
	snop 1
	and_xmsk s8, s14
	snop 0
	bra_xmskz LBB3_2
; %bb.1:                                ; %if.then
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	or3_b32 r6, r29, r31, r28
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s22, r6
	mov_b32 r3, s23
	addc_co_u32 r7, r3, r7
	.loc	2 222 47 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:222:47
	snop 1
	ldg_b128 r144, r6, 0x0
LBB3_2:                                 ; %for.inc72
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s8
	.loc	2 221 64 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:64
	or_b32 r2, r2, 16
	.loc	2 221 93 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:93
	cmp_ge_i32 s8, r2, s6
	cmp_lt_i32 s12, r2, s6
	shl_b64 r154, 0, 0
	shl_b64 r152, 0, r154
	.loc	2 221 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:9
	snop 1
	and_xmsk s16, s12
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	or_b32 r2, r29, r31
	smov_b32 s5, 0x8000
	or3_b32 r2, r2, r28, s5
	mov_b32 r3, 0
	shl_b64 r2, 1, r2
	add_co_u32 r6, s22, r2
	mov_b32 r2, s23
	addc_co_u32 r7, r2, r3
	.loc	2 222 47 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:222:47
	snop 1
	ldg_b128 r152, r6, 0x0
LBB3_4:                                 ; %for.inc72.1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s16
	shl_b64 r162, 0, 0
	shl_b64 r160, 0, r162
	.loc	2 221 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:9
	and_xmsk s16, s14
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	or_b32 r2, r29, r31
	or3_b32 r2, r2, r28, 32
	mov_b32 r3, 0
	shl_b64 r2, 1, r2
	add_co_u32 r6, s22, r2
	mov_b32 r2, s23
	addc_co_u32 r7, r2, r3
	.loc	2 222 47 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:222:47
	snop 1
	ldg_b128 r160, r6, 0x0
LBB3_6:                                 ; %for.inc72.2
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s16
	shl_b64 r170, 0, 0
	shl_b64 r168, 0, r170
	.loc	2 221 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:221:9
	and_xmsk s16, s12
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	or_b32 r2, r29, r31
	smov_b32 s5, 0x8020
	or3_b32 r2, r2, r28, s5
	mov_b32 r3, 0
	shl_b64 r2, 1, r2
	add_co_u32 r6, s22, r2
	mov_b32 r2, s23
	addc_co_u32 r7, r2, r3
	.loc	2 222 47 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:222:47
	snop 1
	ldg_b128 r168, r6, 0x0
LBB3_8:                                 ; %for.inc72.3
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s16
	shl_b32 r2, 8, r30
	sshl_b32 s27, 19, s4
	and_b32 r32, 0x3f800, r2
	shl_b32 r2, 3, r30
	ldu_b32 s2, s2, 0x0
	sadd_co_u32 s3, 0x80, s22
	and_b32 r20, r2, 32
	saddc_co_u32 s5, s23, 0
	smin_i32 s6, 0x80, s6
	and_b32 r33, r2, 56
	and_b32 r5, 0x1fc0, r2
	and_b32 r2, r2, 16
	smax_i32 s6, s6, 0
	add_u32 r2, r2, r30
	sadd_co_i32 s6, s6, 31
	and_b32 r7, r2, 16
	mul_u24 r2, r30, 9
	and_b32 r8, r2, 8
	shr_b32 r2, 6, r30
	sshr_b32 s6, 5, s6
	cmp_lt_u32 s16, r2, s6
	sadd_co_u32 s6, 0x100, s22
	smul_i32 s26, 0xe00000, s26
	saddc_co_u32 s7, s23, 0
	.loc	2 225 3 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:225:3
	sadd_co_i32 s26, s26, s27
	add_u32 r31, r29, r31
	shr_b32 r9, 5, r30
	or3_b32 r176, s26, r32, r33
	add_u32 r32, 0x8000, r31
	add_u32 r3, r20, r30
	add_shl_u32 r4, r9, r4, 4
	mov_b32 r39, 0
	add_co_u32 r28, r28, r32
	and_b32 r38, r30, 48
	and_b32 r6, r3, 32
	shl_b32 r3, 6, r30
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r30
	addc_co_u32 r29, 0, r39
	mad_u32 r32, r32, 2, r38
	and_b32 r19, 0x3c0, r3
	add_shl_u32 r13, r4, r30, 3
	shr_b32 r3, 2, r30
	add_co_u32 r30, r32, s22
	mov_b32 r32, s23
	addc_co_u32 r33, r33, r32
	add_co_u32 r178, 0x88, r30
	or_b32 r4, r6, r8
	addc_co_u32 r179, r33, 0
	mad_u32 r30, r31, 2, r38
	or3_b32 r4, r4, r5, r7
	add_co_u32 r30, r30, s22
	or_b32 r5, r5, r6
	and_or_b32 r27, r13, 8, r12
	addc_co_u32 r31, r31, r32
	or3_b32 r5, r5, r7, r8
	or_b32 r21, r27, r19
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r25, 0xc00, r19
	or_b32 r26, 0x1000, r19
	or_b32 r34, 0x1400, r19
	or_b32 r35, 0x1800, r19
	or_b32 r36, 0x1c00, r19
	xor_b32 r37, r20, 32
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:0
	shl_b64 r92, 0, 0
	shl_b64 r184, 0, 0
	shl_add_u32 r11, 1, r5, 0
	or_b32 r12, r21, r20
	or_b32 r20, r21, r37
	or_b32 r13, r23, r22
	or_b32 r14, r23, r24
	or_b32 r15, r23, r25
	or_b32 r16, r23, r26
	or_b32 r17, r23, r34
	or_b32 r18, r23, r35
	or_b32 r19, r23, r36
	or3_b32 r23, r27, r25, r37
	or3_b32 r21, r27, r22, r37
	or3_b32 r22, r27, r24, r37
	or3_b32 r24, r27, r26, r37
	or3_b32 r25, r27, r34, r37
	or3_b32 r26, r27, r35, r37
	or3_b32 r27, r27, r36, r37
	.loc	2 225 3                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:225:3
	add_co_u32 r180, 0xc0, r30
	shl_add_u32 r4, 1, r4, 0
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:0
	shl_b64 r94, 0, 0
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
	shl_b64 r148, 0, r92
	shl_b64 r156, 0, r92
	shl_b64 r164, 0, r92
	shl_b64 r172, 0, r92
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
	shl_b64 r96, 0, r92
	add_u32 r5, 0x1000, r11
	add_u32 r6, 0x2000, r11
	add_u32 r7, 0x3000, r11
	add_u32 r8, 0x4000, r4
	add_u32 r9, 0x5000, r11
	add_u32 r10, 0x6000, r11
	add_u32 r11, 0x7000, r11
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
	.loc	2 225 3                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:225:3
	addc_co_u32 r181, r31, 0
	smov_b64 s22, 0
	shl_b64 r102, 0, r94
	shl_b64 r106, 0, r94
	shl_b64 r110, 0, r94
	shl_b64 r114, 0, r94
	shl_b64 r118, 0, r94
	shl_b64 r122, 0, r94
	shl_b64 r126, 0, r94
	shl_b64 r130, 0, r94
	shl_b64 r134, 0, r94
	shl_b64 r138, 0, r94
	shl_b64 r142, 0, r94
	shl_b64 r150, 0, r94
	shl_b64 r158, 0, r94
	shl_b64 r166, 0, r94
	shl_b64 r174, 0, r94
	shl_b64 r34, 0, r94
	shl_b64 r38, 0, r94
	shl_b64 r42, 0, r94
	shl_b64 r46, 0, r94
	shl_b64 r50, 0, r94
	shl_b64 r54, 0, r94
	shl_b64 r182, 0, r184
	shl_b64 r188, 0, r184
	shl_b64 r186, 0, r184
	shl_b64 r192, 0, r184
	shl_b64 r190, 0, r184
	shl_b64 r196, 0, r184
	shl_b64 r194, 0, r184
	shl_b64 r58, 0, r94
	shl_b64 r62, 0, r94
	shl_b64 r66, 0, r94
	shl_b64 r70, 0, r94
	shl_b64 r74, 0, r94
	shl_b64 r78, 0, r94
	shl_b64 r82, 0, r94
	shl_b64 r86, 0, r94
	shl_b64 r90, 0, r94
	shl_b64 r98, 0, r94
	bra LBB3_10
	.p2align	5
LBB3_9:                                 ; %for.inc705
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 225 31                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:225:31
	sadd_co_u32 s22, 0x80, s22
	add_co_u32 r178, 0x100, r178
	saddc_co_u32 s23, s23, 0
	addc_co_u32 r179, r179, 0
	add_co_u32 r180, 0x100, r180
	scmp_eq_u64 0x800, s22
	addc_co_u32 r181, r181, 0
	.loc	2 225 3                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:225:3
	bra_smsks LBB3_34
LBB3_10:                                ; %for.cond80.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 228 349 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:228:349
	add_co_u32 r30, r176, s22
	add_u32 r31, 0x10000, r30
	mad_i32 r200, r31, 2, s40
	add_u32 r31, 0x20000, r30
	mad_i32 r206, r31, 2, s40
	add_u32 r31, 0x30000, r30
	mad_i32 r208, r31, 2, s40
	add_u32 r31, 0x40000, r30
	mad_i32 r214, r31, 2, s40
	add_u32 r31, 0x50000, r30
	mad_i32 r216, r31, 2, s40
	add_u32 r31, 0x60000, r30
	mad_i32 r222, r31, 2, s40
	add_u32 r31, 0x70000, r30
	mad_i32 r198, r30, 2, s40
	mad_i32 r224, r31, 2, s40
	.loc	2 228 332 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:228:332
	snop 0
	ldg_b128 r202, r198, 0x0
	ldg_b128 r198, r200, 0x0
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	ldg_b128 r218, r214, 0x0
	ldg_b128 r214, r216, 0x0
	ldg_b128 r226, r222, 0x0
	ldg_b128 r222, r224, 0x0
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r202
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r198
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r210
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r206
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r218
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r214
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r226
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r222
.Ltmp319:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp320:
	.loc	2 233 11                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:233:11
	and_xmsk s26, s14
	snop 0
	bra_xmsks LBB3_19
; %bb.11:                               ; %for.inc191
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s26
	.loc	2 233 11                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:233:11
	and_xmsk s26, s12
	snop 0
	bra_xmsks LBB3_20
LBB3_12:                                ; %for.inc191.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s26
	.loc	2 233 11                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:233:11
	and_xmsk s26, s14
	snop 0
	bra_xmsks LBB3_21
LBB3_13:                                ; %for.inc191.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s26
	.loc	2 233 11                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:233:11
	and_xmsk s26, s12
	snop 0
	bra_xmsks LBB3_22
LBB3_14:                                ; %for.inc191.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s26
	.loc	2 237 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:237:9
	and_xmsk s26, s16
	snop 0
	bra_xmskz LBB3_16
LBB3_15:                                ; %for.cond210.preheader.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r198, r12, 0x0
	lds_b128 r202, r13, 0x0
	lds_b128 r206, r14, 0x0
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	add_i32 r31, 0x4000, r12
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r198, r144, r172
	mma_16x16x16f16 r124, r198, r152, r124
	mma_16x16x16f16 r172, r200, r146, r172
	mma_16x16x16f16 r124, r200, r154, r124
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r198, r15, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r202, r144, r164
	mma_16x16x16f16 r120, r202, r152, r120
	mma_16x16x16f16 r164, r204, r146, r164
	mma_16x16x16f16 r120, r204, r154, r120
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r202, r16, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r144, r156
	mma_16x16x16f16 r116, r206, r152, r116
	mma_16x16x16f16 r156, r208, r146, r156
	mma_16x16x16f16 r116, r208, r154, r116
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r206, r17, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r198, r144, r148
	mma_16x16x16f16 r112, r198, r152, r112
	mma_16x16x16f16 r148, r200, r146, r148
	mma_16x16x16f16 r112, r200, r154, r112
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r198, r18, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r144, r140
	mma_16x16x16f16 r108, r202, r152, r108
	mma_16x16x16f16 r140, r204, r146, r140
	mma_16x16x16f16 r108, r204, r154, r108
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r202, r19, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r206, r144, r136
	mma_16x16x16f16 r104, r206, r152, r104
	mma_16x16x16f16 r136, r208, r146, r136
	mma_16x16x16f16 r104, r208, r154, r104
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r206, r31, 0x0
	add_i32 r31, 0x4000, r13
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r198, r144, r132
	mma_16x16x16f16 r100, r198, r152, r100
	mma_16x16x16f16 r132, r200, r146, r132
	mma_16x16x16f16 r100, r200, r154, r100
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r14
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r202, r144, r128
	mma_16x16x16f16 r92, r202, r152, r92
	mma_16x16x16f16 r128, r204, r146, r128
	mma_16x16x16f16 r92, r204, r154, r92
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r15
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r206, r144, r96
	mma_16x16x16f16 r60, r206, r152, r60
	mma_16x16x16f16 r96, r208, r146, r96
	mma_16x16x16f16 r60, r208, r154, r60
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r206, r31, 0x0
	add_i32 r31, 0x4000, r16
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r198, r144, r88
	mma_16x16x16f16 r56, r198, r152, r56
	mma_16x16x16f16 r88, r200, r146, r88
	mma_16x16x16f16 r56, r200, r154, r56
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r17
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r202, r144, r84
	mma_16x16x16f16 r52, r202, r152, r52
	mma_16x16x16f16 r84, r204, r146, r84
	mma_16x16x16f16 r52, r204, r154, r52
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r18
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r206, r144, r80
	mma_16x16x16f16 r48, r206, r152, r48
	mma_16x16x16f16 r80, r208, r146, r80
	mma_16x16x16f16 r48, r208, r154, r48
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r206, r31, 0x0
	add_i32 r31, 0x4000, r19
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r198, r144, r76
	mma_16x16x16f16 r44, r198, r152, r44
	mma_16x16x16f16 r76, r200, r146, r76
	mma_16x16x16f16 r44, r200, r154, r44
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r20
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r202, r144, r72
	mma_16x16x16f16 r40, r202, r152, r40
	mma_16x16x16f16 r72, r204, r146, r72
	mma_16x16x16f16 r40, r204, r154, r40
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r202, r20, 0x0
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r206, r144, r68
	mma_16x16x16f16 r36, r206, r152, r36
	mma_16x16x16f16 r68, r208, r146, r68
	mma_16x16x16f16 r36, r208, r154, r36
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r206, r21, 0x0
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r198, r144, r64
	mma_16x16x16f16 r32, r198, r152, r32
	mma_16x16x16f16 r64, r200, r146, r64
	mma_16x16x16f16 r32, r200, r154, r32
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r198, r22, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r202, r160, r172
	mma_16x16x16f16 r124, r202, r168, r124
	mma_16x16x16f16 r172, r204, r162, r172
	mma_16x16x16f16 r124, r204, r170, r124
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r202, r23, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r206, r160, r164
	mma_16x16x16f16 r120, r206, r168, r120
	mma_16x16x16f16 r164, r208, r162, r164
	mma_16x16x16f16 r120, r208, r170, r120
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r206, r24, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r198, r160, r156
	mma_16x16x16f16 r116, r198, r168, r116
	mma_16x16x16f16 r156, r200, r162, r156
	mma_16x16x16f16 r116, r200, r170, r116
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r198, r25, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r202, r160, r148
	mma_16x16x16f16 r112, r202, r168, r112
	mma_16x16x16f16 r148, r204, r162, r148
	mma_16x16x16f16 r112, r204, r170, r112
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r202, r26, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r206, r160, r140
	mma_16x16x16f16 r108, r206, r168, r108
	mma_16x16x16f16 r140, r208, r162, r140
	mma_16x16x16f16 r108, r208, r170, r108
	.loc	2 240 43                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:240:43
	lds_b128 r206, r27, 0x0
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r160, r136
	mma_16x16x16f16 r104, r198, r168, r104
	mma_16x16x16f16 r136, r200, r162, r136
	mma_16x16x16f16 r104, r200, r170, r104
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r21
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r160, r132
	mma_16x16x16f16 r100, r202, r168, r100
	mma_16x16x16f16 r132, r204, r162, r132
	mma_16x16x16f16 r100, r204, r170, r100
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r22
	.loc	2 246 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:246:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r206, r160, r128
	mma_16x16x16f16 r92, r206, r168, r92
	mma_16x16x16f16 r128, r208, r162, r128
	mma_16x16x16f16 r92, r208, r170, r92
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r206, r31, 0x0
	add_i32 r31, 0x4000, r23
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r198, r160, r96
	mma_16x16x16f16 r60, r198, r168, r60
	mma_16x16x16f16 r96, r200, r162, r96
	mma_16x16x16f16 r60, r200, r170, r60
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r24
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r160, r88
	mma_16x16x16f16 r56, r202, r168, r56
	mma_16x16x16f16 r88, r204, r162, r88
	mma_16x16x16f16 r56, r204, r170, r56
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r25
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r160, r84
	mma_16x16x16f16 r52, r206, r168, r52
	mma_16x16x16f16 r84, r208, r162, r84
	mma_16x16x16f16 r52, r208, r170, r52
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r206, r31, 0x0
	add_i32 r31, 0x4000, r26
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r160, r80
	mma_16x16x16f16 r48, r198, r168, r48
	mma_16x16x16f16 r80, r200, r162, r80
	mma_16x16x16f16 r48, r200, r170, r48
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r27
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r160, r76
	mma_16x16x16f16 r44, r202, r168, r44
	mma_16x16x16f16 r76, r204, r162, r76
	mma_16x16x16f16 r44, r204, r170, r44
	.loc	2 254 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:254:45
	lds_b128 r202, r31, 0x0
	.loc	2 260 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:260:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r160, r72
	mma_16x16x16f16 r40, r206, r168, r40
	mma_16x16x16f16 r72, r208, r162, r72
	mma_16x16x16f16 r40, r208, r170, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r198, r160, r68
	mma_16x16x16f16 r36, r198, r168, r36
	mma_16x16x16f16 r68, r200, r162, r68
	mma_16x16x16f16 r36, r200, r170, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r202, r160, r64
	mma_16x16x16f16 r32, r202, r168, r32
	mma_16x16x16f16 r64, r204, r162, r64
	mma_16x16x16f16 r32, r204, r170, r32
LBB3_16:                                ; %if.end388
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 58 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:58
	sor_b64 xmsk, xmsk, s26
.Ltmp321:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp322:
	.loc	2 272 349                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:272:349
	add_u32 r31, 0x10040, r30
	mad_i32 r200, r31, 2, s40
	add_u32 r31, 0x20040, r30
	mad_i32 r206, r31, 2, s40
	add_u32 r31, 0x30040, r30
	mad_i32 r208, r31, 2, s40
	add_u32 r31, 0x40040, r30
	mad_i32 r214, r31, 2, s40
	add_u32 r31, 0x50040, r30
	mad_i32 r198, r30, 2, s40
	mad_i32 r216, r31, 2, s40
	add_u32 r31, 0x60040, r30
	add_u32 r30, 0x70040, r30
	mad_i32 r222, r31, 2, s40
	mad_i32 r30, r30, 2, s40
	.loc	2 272 332 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:272:332
	ldg_b128 r202, r198, 0x80
	ldg_b128 r198, r200, 0x0
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	ldg_b128 r218, r214, 0x0
	ldg_b128 r214, r216, 0x0
	ldg_b128 r222, r222, 0x0
	ldg_b128 r226, r30, 0x0
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r202
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r198
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r210
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r206
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r218
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r214
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r222
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r226
.Ltmp323:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp324:
	.loc	2 275 16                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:275:16
	mov_b32 r30, 0x780
	mov_b32 r31, 0
	cmp_lg_u64 s26, s22, r30
	scmp_eq_u64 0x780, s22
	.loc	2 275 9 is_stmt 0               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:275:9
	snop 0
	bra_smskz LBB3_23
; %bb.17:                               ; %if.end506
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 283 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:283:9
	and_xmsk s30, s16
	snop 0
	bra_xmsks LBB3_29
LBB3_18:                                ; %if.end701
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s30
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:315:9
	sandn_b64 cmsk, xmsk, s26
	snop 0
	bra_cmsks LBB3_9
	bra LBB3_30
	.p2align	5
LBB3_19:                                ; %if.then159
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 234 51                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:234:51
	ldg_b128 r194, r180, -0x40
	sor_b64 xmsk, xmsk, s26
	.loc	2 233 11                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:233:11
	and_xmsk s26, s12
	snop 0
	bra_xmskz LBB3_12
LBB3_20:                                ; %if.then159.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 234 51                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:234:51
	ldg_b128 r190, r178, -0x8
	sor_b64 xmsk, xmsk, s26
	.loc	2 233 11                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:233:11
	and_xmsk s26, s14
	snop 0
	bra_xmskz LBB3_13
LBB3_21:                                ; %if.then159.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 234 51                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:234:51
	ldg_b128 r186, r180, 0x0
	sor_b64 xmsk, xmsk, s26
	.loc	2 233 11                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:233:11
	and_xmsk s26, s12
	snop 0
	bra_xmskz LBB3_14
LBB3_22:                                ; %if.then159.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:11
	add_co_u32 r182, r28, s22
	mov_b32 r31, s23
	addc_co_u32 r183, r29, r31
	shl_b64 r182, 1, r182
	or_b32 r31, r182, 64
	add_co_u32 r182, s3, r31
	mov_b32 r31, s5
	addc_co_u32 r183, r31, r183
	.loc	2 234 51 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:234:51
	snop 1
	ldg_b128 r182, r182, 0x0
	sor_b64 xmsk, xmsk, s26
	.loc	2 237 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:237:9
	and_xmsk s26, s16
	snop 0
	bra_xmsks LBB3_15
	bra LBB3_16
	.p2align	5
LBB3_23:                                ; %for.cond453.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 278 13                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:278:13
	and_xmsk s30, s14
	snop 0
	bra_xmsks LBB3_31
; %bb.24:                               ; %for.inc503
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s30
	.loc	2 278 13                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:278:13
	and_xmsk s30, s12
	snop 0
	bra_xmsks LBB3_32
LBB3_25:                                ; %for.inc503.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s30
	.loc	2 278 13                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:278:13
	and_xmsk s30, s14
	snop 0
	bra_xmsks LBB3_33
LBB3_26:                                ; %for.inc503.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s30
	.loc	2 278 13                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:278:13
	and_xmsk s30, s12
	snop 0
	bra_xmskz LBB3_28
LBB3_27:                                ; %if.then471.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	add_co_u32 r168, r28, s22
	mov_b32 r30, s23
	addc_co_u32 r169, r29, r30
	shl_b64 r30, 1, r168
	or_b32 r30, r30, 64
	add_co_u32 r168, s6, r30
	mov_b32 r30, s7
	addc_co_u32 r169, r30, r31
	.loc	2 279 51 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:279:51
	snop 1
	ldg_b128 r168, r168, 0x0
LBB3_28:                                ; %Flow287
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 51 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:51
	sor_b64 xmsk, xmsk, s30
	.loc	2 283 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:283:9
	and_xmsk s30, s16
	snop 0
	bra_xmskz LBB3_18
LBB3_29:                                ; %for.cond523.preheader.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r198, r12, 0x0
	lds_b128 r202, r13, 0x0
	lds_b128 r206, r14, 0x0
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	add_i32 r30, 0x4000, r12
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r198, r194, r172
	mma_16x16x16f16 r124, r198, r190, r124
	mma_16x16x16f16 r172, r200, r196, r172
	mma_16x16x16f16 r124, r200, r192, r124
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r198, r15, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r202, r194, r164
	mma_16x16x16f16 r120, r202, r190, r120
	mma_16x16x16f16 r164, r204, r196, r164
	mma_16x16x16f16 r120, r204, r192, r120
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r202, r16, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r194, r156
	mma_16x16x16f16 r116, r206, r190, r116
	mma_16x16x16f16 r156, r208, r196, r156
	mma_16x16x16f16 r116, r208, r192, r116
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r206, r17, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r198, r194, r148
	mma_16x16x16f16 r112, r198, r190, r112
	mma_16x16x16f16 r148, r200, r196, r148
	mma_16x16x16f16 r112, r200, r192, r112
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r198, r18, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r194, r140
	mma_16x16x16f16 r108, r202, r190, r108
	mma_16x16x16f16 r140, r204, r196, r140
	mma_16x16x16f16 r108, r204, r192, r108
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r202, r19, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r206, r194, r136
	mma_16x16x16f16 r104, r206, r190, r104
	mma_16x16x16f16 r136, r208, r196, r136
	mma_16x16x16f16 r104, r208, r192, r104
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r206, r30, 0x0
	add_i32 r30, 0x4000, r13
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r198, r194, r132
	mma_16x16x16f16 r100, r198, r190, r100
	mma_16x16x16f16 r132, r200, r196, r132
	mma_16x16x16f16 r100, r200, r192, r100
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r14
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r202, r194, r128
	mma_16x16x16f16 r92, r202, r190, r92
	mma_16x16x16f16 r128, r204, r196, r128
	mma_16x16x16f16 r92, r204, r192, r92
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r15
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r206, r194, r96
	mma_16x16x16f16 r60, r206, r190, r60
	mma_16x16x16f16 r96, r208, r196, r96
	mma_16x16x16f16 r60, r208, r192, r60
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r206, r30, 0x0
	add_i32 r30, 0x4000, r16
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r198, r194, r88
	mma_16x16x16f16 r56, r198, r190, r56
	mma_16x16x16f16 r88, r200, r196, r88
	mma_16x16x16f16 r56, r200, r192, r56
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r17
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r202, r194, r84
	mma_16x16x16f16 r52, r202, r190, r52
	mma_16x16x16f16 r84, r204, r196, r84
	mma_16x16x16f16 r52, r204, r192, r52
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r18
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r206, r194, r80
	mma_16x16x16f16 r48, r206, r190, r48
	mma_16x16x16f16 r80, r208, r196, r80
	mma_16x16x16f16 r48, r208, r192, r48
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r206, r30, 0x0
	add_i32 r30, 0x4000, r19
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r198, r194, r76
	mma_16x16x16f16 r44, r198, r190, r44
	mma_16x16x16f16 r76, r200, r196, r76
	mma_16x16x16f16 r44, r200, r192, r44
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r20
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r202, r194, r72
	mma_16x16x16f16 r40, r202, r190, r40
	mma_16x16x16f16 r72, r204, r196, r72
	mma_16x16x16f16 r40, r204, r192, r40
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r202, r20, 0x0
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r206, r194, r68
	mma_16x16x16f16 r36, r206, r190, r36
	mma_16x16x16f16 r68, r208, r196, r68
	mma_16x16x16f16 r36, r208, r192, r36
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r206, r21, 0x0
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r198, r194, r64
	mma_16x16x16f16 r32, r198, r190, r32
	mma_16x16x16f16 r64, r200, r196, r64
	mma_16x16x16f16 r32, r200, r192, r32
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r198, r22, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r202, r186, r172
	mma_16x16x16f16 r124, r202, r182, r124
	mma_16x16x16f16 r172, r204, r188, r172
	mma_16x16x16f16 r124, r204, r184, r124
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r202, r23, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r206, r186, r164
	mma_16x16x16f16 r120, r206, r182, r120
	mma_16x16x16f16 r164, r208, r188, r164
	mma_16x16x16f16 r120, r208, r184, r120
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r206, r24, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r198, r186, r156
	mma_16x16x16f16 r116, r198, r182, r116
	mma_16x16x16f16 r156, r200, r188, r156
	mma_16x16x16f16 r116, r200, r184, r116
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r198, r25, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r202, r186, r148
	mma_16x16x16f16 r112, r202, r182, r112
	mma_16x16x16f16 r148, r204, r188, r148
	mma_16x16x16f16 r112, r204, r184, r112
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r202, r26, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r206, r186, r140
	mma_16x16x16f16 r108, r206, r182, r108
	mma_16x16x16f16 r140, r208, r188, r140
	mma_16x16x16f16 r108, r208, r184, r108
	.loc	2 286 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:286:45
	lds_b128 r206, r27, 0x0
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r186, r136
	mma_16x16x16f16 r104, r198, r182, r104
	mma_16x16x16f16 r136, r200, r188, r136
	mma_16x16x16f16 r104, r200, r184, r104
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r21
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r186, r132
	mma_16x16x16f16 r100, r202, r182, r100
	mma_16x16x16f16 r132, r204, r188, r132
	mma_16x16x16f16 r100, r204, r184, r100
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r22
	.loc	2 292 58                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:292:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r206, r186, r128
	mma_16x16x16f16 r92, r206, r182, r92
	mma_16x16x16f16 r128, r208, r188, r128
	mma_16x16x16f16 r92, r208, r184, r92
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r206, r30, 0x0
	add_i32 r30, 0x4000, r23
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r198, r186, r96
	mma_16x16x16f16 r60, r198, r182, r60
	mma_16x16x16f16 r96, r200, r188, r96
	mma_16x16x16f16 r60, r200, r184, r60
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r24
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r186, r88
	mma_16x16x16f16 r56, r202, r182, r56
	mma_16x16x16f16 r88, r204, r188, r88
	mma_16x16x16f16 r56, r204, r184, r56
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r25
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r186, r84
	mma_16x16x16f16 r52, r206, r182, r52
	mma_16x16x16f16 r84, r208, r188, r84
	mma_16x16x16f16 r52, r208, r184, r52
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r206, r30, 0x0
	add_i32 r30, 0x4000, r26
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r186, r80
	mma_16x16x16f16 r48, r198, r182, r48
	mma_16x16x16f16 r80, r200, r188, r80
	mma_16x16x16f16 r48, r200, r184, r48
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r27
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r186, r76
	mma_16x16x16f16 r44, r202, r182, r44
	mma_16x16x16f16 r76, r204, r188, r76
	mma_16x16x16f16 r44, r204, r184, r44
	.loc	2 300 45                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:300:45
	lds_b128 r202, r30, 0x0
	.loc	2 306 59                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:306:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r186, r72
	mma_16x16x16f16 r40, r206, r182, r40
	mma_16x16x16f16 r72, r208, r188, r72
	mma_16x16x16f16 r40, r208, r184, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r198, r186, r68
	mma_16x16x16f16 r36, r198, r182, r36
	mma_16x16x16f16 r68, r200, r188, r68
	mma_16x16x16f16 r36, r200, r184, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r202, r186, r64
	mma_16x16x16f16 r32, r202, r182, r32
	mma_16x16x16f16 r64, r204, r188, r64
	mma_16x16x16f16 r32, r204, r184, r32
	sor_b64 xmsk, xmsk, s30
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:315:9
	sandn_b64 cmsk, xmsk, s26
	snop 0
	bra_cmsks LBB3_9
LBB3_30:                                ; %if.then703
                                        ;   in Loop: Header=BB3_10 Depth=1
.Ltmp325:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_9
.Ltmp326:
	.p2align	5
LBB3_31:                                ; %if.then471
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 279 51                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:279:51
	ldg_b128 r144, r180, 0x40
	sor_b64 xmsk, xmsk, s30
	.loc	2 278 13                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:278:13
	and_xmsk s30, s12
	snop 0
	bra_xmskz LBB3_25
LBB3_32:                                ; %if.then471.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 279 51                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:279:51
	ldg_b128 r152, r178, 0x78
	sor_b64 xmsk, xmsk, s30
	.loc	2 278 13                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:278:13
	and_xmsk s30, s14
	snop 0
	bra_xmskz LBB3_26
LBB3_33:                                ; %if.then471.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 279 51                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:279:51
	ldg_b128 r160, r180, 0x80
	sor_b64 xmsk, xmsk, s30
	.loc	2 278 13                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:278:13
	and_xmsk s30, s12
	snop 0
	bra_xmsks LBB3_27
	bra LBB3_28
LBB3_34:                                ; %for.cond708.preheader
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:13
	sshl_b64 s6, 7, s24
	or_b32 r4, r0, s1
	or_b32 r8, s6, r0
	add_u32 r4, r4, r1
	mov_b32 r9, s7
	add_co_u32 r1, r8, r1
	addc_co_u32 r8, r9, 0
	sashr_i32 s1, 31, s2
	add_co_u32 r1, r1, s2
	mov_b32 r9, s1
	sashr_i32 s3, 31, s0
	mov_b32 r6, s0
	addc_co_u32 r8, r8, r9
	mov_b32 r7, s3
	sub_co_u32 r6, r1, r6
	add_u32 r5, r4, s2
	mov_b32 r4, 0
	subb_co_u32 r7, r8, r7
	.loc	2 321 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:321:9
	and_xmsk s2, s14
	snop 0
	bra_xmskz LBB3_38
; %bb.35:                               ; %if.then727
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sub_u32 r1, r5, s0
	.loc	2 323 15 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:323:15
	cmp_ge_i32 s6, r5, s0
	cmp_gt_i32 s16, 0x2380, r1
	mov_b32 r4, 0
	.loc	2 323 163 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:323:163
	snop 2
	sand_b64 s16, s6, s16
	and_xmsk s6, s16
	snop 0
	bra_xmskz LBB3_37
; %bb.36:                               ; %if.then756
	.loc	2 0 163                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s20, r8
	mov_b32 r1, s21
	addc_co_u32 r9, r1, r9
	.loc	2 324 19 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:324:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB3_37:                                ; %Flow286
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
LBB3_38:                                ; %for.inc780
	sor_b64 xmsk, xmsk, s2
	mov_b32 r1, 0
	.loc	2 321 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:321:9
	and_xmsk s2, s12
	snop 0
	bra_xmskz LBB3_42
; %bb.39:                               ; %if.then727.1
	.loc	2 323 117                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:323:117
	add_u32 r1, r5, 16
	.loc	2 323 15 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:323:15
	cmp_ge_i32 s6, r1, s0
	sub_u32 r1, r1, s0
	cmp_gt_i32 s0, 0x2380, r1
	mov_b32 r1, 0
	.loc	2 323 163                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:323:163
	snop 2
	sand_b64 s6, s6, s0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_41
; %bb.40:                               ; %if.then756.1
	.loc	2 0 163                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s20, r6
	mov_b32 r1, s21
	addc_co_u32 r7, r1, r7
	.loc	2 324 19 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:324:19
	snop 1
	ldg_b32 r1, r6, 0x40
LBB3_41:                                ; %Flow285
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_42:                                ; %for.inc780.1
	sor_b64 xmsk, xmsk, s2
	smul_i32 s0, 0xe0000, s24
	sshl_b32 s1, 8, s4
	sadd_co_i32 s0, s1, s0
	mov_b32 r5, s0
	smov_b32 s1, 0x38000
	mad_u24 r2, r2, s1, r5
	smov_b32 s0, 0x1c00
	mad_u24 r0, r0, s0, r2
	and_or_b32 r10, r3, 12, r0
	shl_b64 r6, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then801
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(0)
	mul_f32 r0, r172, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r2, r173, r4
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r3, r174, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r5, r175, r4
.Ltmp327:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp328:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp331:
LBB3_44:                                ; %if.end856
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 22 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mov_b32 r11, 0
	shl_b64 r2, 1, r10
	add_co_u32 r2, s18, r2
	mov_b32 r0, s19
	addc_co_u32 r3, r0, r3
	.loc	2 349 256 is_stmt 0             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r2, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then801.1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	arrive gvmcnt(1)
	mul_f32 r7, r166, r4
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r0, r164, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r165, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r8, r167, r4
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp333:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp336:
LBB3_46:                                ; %if.end856.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, r10, 16
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r20, r0, 2, s18
	shl_b64 r8, 0, 0
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 0
	stg_b64 r20, 0x0, r6 devc
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then801.2
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(2)
	mul_f32 r0, r156, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r157, r4
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r6, r158, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r7, r159, r4
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp338:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp340:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp341:
LBB3_48:                                ; %if.end856.2
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, r10, 32
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r6, r0, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then801.3
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	arrive gvmcnt(3)
	mul_f32 r9, r150, r4
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r0, r148, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r149, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r11, r151, r4
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp343:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp345:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp346:
LBB3_50:                                ; %if.end856.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, r10, 48
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r24, r0, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then801.4
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	arrive gvmcnt(4)
	mul_f32 r9, r142, r4
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r0, r140, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r141, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r11, r143, r4
.Ltmp347:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp348:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp350:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp351:
LBB3_52:                                ; %if.end856.4
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, r10, 64
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r12, r0, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.then801.5
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	arrive gvmcnt(5)
	mul_f32 r9, r138, r4
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r0, r136, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r137, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r11, r139, r4
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp353:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp355:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp356:
LBB3_54:                                ; %if.end856.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, 0x50, r10
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r26, r0, 2, s18
	shl_b64 r14, 0, 0
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 0
	stg_b64 r26, 0x0, r8 devc
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then801.6
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(6)
	mul_f32 r0, r132, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r133, r4
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r8, r134, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r9, r135, r4
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp358:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp361:
LBB3_56:                                ; %if.end856.6
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, 0x60, r10
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r8, r0, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r8, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.then801.7
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(7)
	mul_f32 r0, r128, r4
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r129, r4
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r11, r130, r4
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r16, r131, r4
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp363:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp366:
LBB3_58:                                ; %if.end856.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, 0x70, r10
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r22, r0, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r22, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then801.8
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(8)
	mul_f32 r0, r124, r1
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r5, r125, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r11, r126, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r16, r127, r1
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp368:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp371:
LBB3_60:                                ; %if.end856.8
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 192 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:192
	add_u32 r0, 0x1c000, r10
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	add_co_u32 r10, 0x38000, r2
	addc_co_u32 r11, r3, 0
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r10, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.then801.9
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	arrive gvmcnt(9)
	mul_f32 r15, r121, r1
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r5, r120, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r16, r122, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r17, r123, r1
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp373:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp376:
LBB3_62:                                ; %if.end856.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r5, r0, 16
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r28, r5, 2, s18
	shl_b64 r16, 0, 0
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 0
	stg_b64 r28, 0x0, r14 devc
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then801.10
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(10)
	mul_f32 r5, r116, r1
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r14, r117, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r15, r118, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r18, r119, r1
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp378:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp381:
LBB3_64:                                ; %if.end856.10
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r5, r0, 32
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r14, r5, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.then801.11
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	arrive gvmcnt(11)
	mul_f32 r17, r113, r1
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r5, r112, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r18, r114, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r19, r115, r1
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp383:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp386:
LBB3_66:                                ; %if.end856.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r5, r0, 48
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r112, r5, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r112, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then801.12
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	arrive gvmcnt(12)
	mul_f32 r17, r109, r1
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r5, r108, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r18, r110, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r19, r111, r1
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp388:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp391:
LBB3_68:                                ; %if.end856.12
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r5, r0, 64
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r18, r5, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r18, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.then801.13
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	arrive gvmcnt(13)
	mul_f32 r17, r105, r1
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	mul_f32 r5, r104, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r30, r106, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r31, r107, r1
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp393:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r30
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r31
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp396:
LBB3_70:                                ; %if.end856.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r5, 0x50, r0
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r104, r5, 2, s18
	shl_b64 r30, 0, 0
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 0
	stg_b64 r104, 0x0, r16 devc
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then801.14
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(14)
	mul_f32 r5, r100, r1
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r16, r101, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r17, r102, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r100, r103, r1
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r30_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp398:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r30_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r31_lo, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r31_hi, r100
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp401:
LBB3_72:                                ; %if.end856.14
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r5, 0x60, r0
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r16, r5, 2, s18
	shl_b64 r100, 0, 0
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 0
	stg_b64 r16, 0x0, r30 devc
	.loc	2 333 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:333:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then801.15
	.loc	2 338 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:338:22
	arrive gvmcnt(15)
	mul_f32 r5, r92, r1
	.loc	2 339 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:339:22
	mul_f32 r30, r93, r1
	.loc	2 340 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:340:22
	mul_f32 r31, r94, r1
	.loc	2 341 22                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:341:22
	mul_f32 r92, r95, r1
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp403:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_hi, r30
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_lo, r31
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_hi, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp406:
LBB3_74:                                ; %if.end856.15
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 349 213 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:213
	or_b32 r0, 0x70, r0
	.loc	2 349 22 is_stmt 0              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:22
	mad_i32 r30, r0, 2, s18
	.loc	2 349 256                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:349:256
	snop 1
	stg_b64 r30, 0x0, r100 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.end967.1.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	shl_b64 r92, 0, 0
	snop 1
	stg_b64 r2, 0x100, r92 devc
                                        ; implicit-def: $mtreg_64bits_2
LBB3_76:                                ; %Flow284
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r92, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.then906
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	arrive gvmcnt(16)
	mul_f32 r92, r98, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r93, r99, r4
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r96, r4
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	mul_f32 r5, r97, r4
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp408:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp410:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp411:
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r2, 0x100, r94 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r88, r4
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	mul_f32 r2, r89, r4
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r90, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r5, r91, r4
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r92_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp413:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r92_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r93_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r93_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp416:
LBB3_78:                                ; %if.end967.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r20, 0x100, r92 devc
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.end967.3.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r6, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_80:                                ; %Flow283
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
; %bb.81:                               ; %if.then906.2
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	arrive gvmcnt(17)
	mul_f32 r2, r85, r4
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r86, r4
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r84, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r5, r87, r4
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp418:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp420:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp421:
	.loc	2 359 24 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	snop 0
	mul_f32 r3, r81, r4
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	stg_b64 r6, 0x100, r20 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r80, r4
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r5, r82, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r6, r83, r4
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp423:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp425:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp426:
LBB3_82:                                ; %if.end967.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r24, 0x100, r2 devc
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_84
; %bb.83:                               ; %if.end967.5.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r12, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_84:                                ; %Flow282
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_86
; %bb.85:                               ; %if.then906.4
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	arrive gvmcnt(18)
	mul_f32 r2, r77, r4
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r78, r4
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r76, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r5, r79, r4
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp428:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp431:
	.loc	2 359 24 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	snop 0
	mul_f32 r3, r73, r4
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	stg_b64 r12, 0x100, r6 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r72, r4
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r5, r74, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r6, r75, r4
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp433:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp436:
LBB3_86:                                ; %if.end967.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r26, 0x100, r2 devc
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_88
; %bb.87:                               ; %if.end967.7.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	shl_b64 r2, 0, 0
                                        ; implicit-def: $mtreg_32bit_4
	snop 1
	stg_b64 r8, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_88:                                ; %Flow281
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_90
; %bb.89:                               ; %if.then906.6
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	arrive gvmcnt(19)
	mul_f32 r2, r69, r4
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r70, r4
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r68, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r5, r71, r4
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp441:
	.loc	2 359 24 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	snop 0
	mul_f32 r3, r65, r4
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	stg_b64 r8, 0x100, r6 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r64, r4
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r5, r66, r4
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r4, r67, r4
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp446:
LBB3_90:                                ; %if.end967.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r22, 0x100, r2 devc
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_92
; %bb.91:                               ; %if.end967.9.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r10, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_92:                                ; %Flow280
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_94
; %bb.93:                               ; %if.then906.8
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	arrive gvmcnt(20)
	mul_f32 r2, r61, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r62, r1
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r60, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r4, r63, r1
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp448:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp451:
	.loc	2 359 24 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	snop 0
	mul_f32 r3, r57, r1
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	stg_b64 r10, 0x100, r6 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r56, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r4, r58, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r5, r59, r1
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp453:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp455:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp456:
LBB3_94:                                ; %if.end967.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r28, 0x100, r2 devc
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_96
; %bb.95:                               ; %if.end967.11.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r14, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_96:                                ; %Flow279
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_98
; %bb.97:                               ; %if.then906.10
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	arrive gvmcnt(21)
	mul_f32 r2, r53, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r54, r1
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r52, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r4, r55, r1
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp458:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp461:
	.loc	2 359 24 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	snop 0
	mul_f32 r3, r49, r1
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	stg_b64 r14, 0x100, r6 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r48, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r4, r50, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r5, r51, r1
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp463:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp466:
LBB3_98:                                ; %if.end967.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r112, 0x100, r2 devc
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_100
; %bb.99:                               ; %if.end967.13.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r18, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_18
LBB3_100:                               ; %Flow278
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_102
; %bb.101:                              ; %if.then906.12
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	arrive gvmcnt(22)
	mul_f32 r2, r45, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r46, r1
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r44, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r4, r47, r1
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp468:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp471:
	.loc	2 359 24 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	snop 0
	mul_f32 r3, r41, r1
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	stg_b64 r18, 0x100, r6 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r40, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r4, r42, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r5, r43, r1
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp473:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp475:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp476:
LBB3_102:                               ; %if.end967.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r104, 0x100, r2 devc
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmsks LBB3_105
; %bb.103:                              ; %Flow
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB3_106
LBB3_104:                               ; %if.end967.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r30, 0x100, r2 devc
	.loc	2 371 1                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:371:1
	snop 0
	endk
LBB3_105:                               ; %if.end967.15.critedge
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	arrive gvmcnt(23)
	shl_b64 r0, 0, 0
	snop 1
	stg_b64 r16, 0x100, r0 devc
                                        ; implicit-def: $mtreg_32bit_1
                                        ; implicit-def: $mtreg_64bits_16
	.loc	2 353 9                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:353:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_106:                               ; %if.then906.14
	.loc	2 359 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	arrive gvmcnt(23)
	mul_f32 r2, r37, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r3, r38, r1
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r36, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r4, r39, r1
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp478:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp481:
	.loc	2 359 24 is_stmt 1              ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:359:24
	snop 0
	mul_f32 r3, r33, r1
	.loc	2 369 264                       ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	stg_b64 r16, 0x100, r6 devc
	.loc	2 358 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:358:24
	mul_f32 r0, r32, r1
	.loc	2 360 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:360:24
	mul_f32 r4, r34, r1
	.loc	2 361 24                        ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:361:24
	mul_f32 r1, r35, r1
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp483:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp485:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp486:
	.loc	2 369 264 is_stmt 1             ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:369:264
	snop 0
	stg_b64 r30, 0x100, r2 devc
	.loc	2 371 1                         ; race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp:371:1
	snop 0
	endk
.Ltmp487:
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
; codeLenInByte = 17496
; NumMTRegsForWarps/PEU: 230
; NumSTRegsForWarps/PEU: 52
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
	.byte	1                               ; Abbrev [1] 0xb:0x325 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x4e:0x150 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x5f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	44                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x73:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x88:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	83                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9c:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb1:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	92                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xc5:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xda:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	134                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xee:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x103:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	165                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	164                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	163                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	162                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x133:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	188                             ; DW_AT_call_line
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
	.byte	189                             ; DW_AT_call_line
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
	.byte	3                               ; Abbrev [3] 0x19e:0x191 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x1af:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	230                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c3:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1d8:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	269                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ed:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x202:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	274                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x217:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x22c:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x241:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x256:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	342                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x263:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x270:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x27d:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x28c:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	343                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x299:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2a6:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2b3:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2c2:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	362                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2cf:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2dc:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2e9:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2f8:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x305:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x312:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x31f:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
.Ldebug_ranges3:
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
.Ldebug_ranges4:
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
.Ldebug_ranges5:
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
.Ldebug_ranges6:
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
.Ldebug_ranges7:
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
.Ldebug_ranges8:
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
.Ldebug_ranges9:
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
.Ldebug_ranges10:
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
.Ldebug_ranges11:
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
.Ldebug_ranges12:
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges16:
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
.Ldebug_ranges17:
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
.Ldebug_ranges18:
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
.Ldebug_ranges19:
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
.Ldebug_ranges20:
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges23:
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
	.quad	0
	.quad	0
.Ldebug_ranges24:
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
.Ldebug_ranges25:
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
.Ldebug_ranges26:
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
.Ldebug_ranges27:
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v060_actual_rows_warp_count_sc-16g/codegen/v060_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=155
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=176
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=186
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=200
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=206
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=222
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=240
.Linfo_string9:
	.asciz	"kernel_kernel"                 ; string offset=258
.Linfo_string10:
	.asciz	"kernel_kernel_1"               ; string offset=272
	.section	".note.GNU-stack"
	.metaxgpu_metadata
---
macahca.kernels:
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
    .kd_symbol:      kernel_kernel.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 136
    .max_block_size: 256
    .mtreg_count:    230
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    32
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
    .kd_symbol:      kernel_kernel_1.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 144
    .max_block_size: 256
    .mtreg_count:    230
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
