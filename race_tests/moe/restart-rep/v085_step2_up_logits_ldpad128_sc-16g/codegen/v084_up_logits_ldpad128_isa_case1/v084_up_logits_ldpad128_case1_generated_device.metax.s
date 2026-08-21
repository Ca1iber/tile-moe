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
	.file	2 "/tmp/v084_up_logits_ldpad128_codegen" "v084_up_logits_ldpad128_case1_generated_device.cpp"
	.loc	2 11 0                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s12, s5
.Ltmp4:
	.loc	2 18 19 prologue_end            ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:18:19
	smov_b32 s13, 0
	sshl_b64 s2, 2, s12
	ldu_b64 s6, s0, 0x30
	ldu_b128 s24, s0, 0x20
	and_b32 r0, 0x3ff, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s8, s2, 0x0
	shl_b32 r2, 10, r0
	shl_b32 r3, 11, r0
	and_b32 r1, 0xf0000, r2
	and_b32 r27, 0x7800, r3
	shr_b32 r5, 1, r0
	and_b32 r28, r5, 24
	arrive slcnt(0)
	sashr_i32 s9, 31, s8
	.loc	2 19 20                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:19:20
	sshl_b64 s0, 2, s8
	sadd_co_u32 s2, s22, s0
	saddc_co_u32 s3, s23, s1
	.loc	2 20 22                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:20:22
	sadd_co_u32 s0, s20, s0
	saddc_co_u32 s1, s21, s1
	sshl_b32 s5, 18, s5
	add_u32 r1, r1, s5
	.loc	2 33 157                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:33:157
	or_b32 r29, r1, r27
	or_b32 r30, 0x8000, r29
	.loc	2 33 216 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:33:216
	or_b32 r1, r29, r28
	or_b32 r152, r30, r28
	.loc	2 33 59                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:33:59
	shl_b32 r1, 1, r1
	shl_b32 r3, 1, r152
	.loc	2 19 20 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:19:20
	ldu_b32 s2, s2, 0x0
	.loc	2 33 41                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:33:41
	ldg_b128 r154, s24, r1, 0x0
	ldg_b128 r158, s24, r3, 0x0
	.loc	2 33 59 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:33:59
	or_b32 r3, r1, 64
	or_b32 r1, 0x10040, r1
	.loc	2 20 22 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:20:22
	ldu_b32 s3, s0, 0x0
	.loc	2 33 41                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:33:41
	ldg_b128 r162, s24, r3, 0x0
	ldg_b128 r166, s24, r1, 0x0
	sshl_b32 s13, 24, s8
	sshl_b32 s28, 18, s4
	sadd_co_u32 s0, 0x80, s24
	saddc_co_u32 s1, s25, 0
	sshl_b32 s8, 7, s12
	arrive slcnt(0)
	ssub_co_i32 s2, s2, s8
	sadd_co_i32 s8, s2, s3
	sadd_co_u32 s18, 0x40000, s16
	saddc_co_u32 s19, s17, 0
	shl_b32 r1, 8, r0
	sadd_co_u32 s22, 0x40000, s26
	and_b32 r32, 0x3f800, r1
	shl_b32 r1, 3, r0
	and_b32 r19, r1, 32
	saddc_co_u32 s23, s27, 0
	sadd_co_u32 s34, 0x40080, s16
	add_u32 r3, r19, r0
	and_b32 r33, r1, 56
	and_b32 r4, 0x1fc0, r1
	and_b32 r1, r1, 16
	saddc_co_u32 s35, s17, 0
	and_b32 r6, r3, 32
	shr_b32 r3, 5, r0
	add_u32 r1, r1, r0
	sadd_co_u32 s36, 0x40080, s26
	and_b32 r7, r1, 16
	mul_u24 r1, r0, 9
	add_shl_u32 r3, r3, r5, 4
	saddc_co_u32 s37, s27, 0
	and_b32 r8, r1, 8
	and_b32 r11, r3, 16
	shr_b32 r3, 4, r0
	add_shl_u32 r12, r3, r0, 3
	sadd_co_u32 s2, 0x100, s24
	or_b32 r3, r6, r8
	saddc_co_u32 s3, s25, 0
	or3_b32 r3, r3, r4, r7
	or_b32 r4, r4, r6
	.loc	2 35 3                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:35:3
	sadd_co_i32 s13, s13, s28
	and_b32 r1, r0, 15
	or3_b32 r178, s13, r32, r33
	and_b32 r32, r0, 48
	and_b32 r34, 0x10000, r2
	shl_b32 r2, 6, r0
	and_b32 r9, 0x1e0, r5
	and_or_b32 r5, r5, 32, r1
	or3_b32 r4, r4, r7, r8
	mov_b32 r6, 0x1000
	and_b32 r18, 0x3c0, r2
	shl_b32 r10, 1, r3
	shl_add_u32 r13, 1, r4, r6
	shl_or_b32 r29, 1, r29, r32
	cmp_lt_i32 s30, r9, s8
	cmp_lt_i32 s38, r5, s8
	or_b32 r5, r5, 16
	or_b32 r9, r9, r1
	and_or_b32 r26, r12, 8, r11
	sadd_co_i32 s9, 0x2000, 0
	cmp_lt_i32 s10, r9, s8
	cmp_lt_i32 s40, r5, s8
	add_u32 r5, s9, r10
	add_u32 r6, s9, r13
	sadd_co_i32 s9, 0x4000, 0
	or_b32 r9, r9, 16
	sadd_co_i32 s42, 0x6000, 0
	or_b32 r21, 0x400, r18
	or_b32 r22, r26, r19
	or_b32 r23, 0x800, r18
	or_b32 r24, 0xc00, r18
	or_b32 r25, 0x1000, r18
	or_b32 r35, 0x1400, r18
	or_b32 r36, 0x1800, r18
	or_b32 r37, 0x1c00, r18
	xor_b32 r38, r19, 32
	add_co_u32 r29, r29, s24
	mov_b32 r33, s25
	or_b32 r12, r22, r21
	or_b32 r14, r22, r24
	or_b32 r15, r22, r25
	or_b32 r16, r22, r35
	or_b32 r17, r22, r36
	or_b32 r20, r26, r18
	or_b32 r18, r22, r37
	add_u32 r3, 0, r10
	add_u32 r4, 0, r13
	add_u32 r7, s9, r10
	add_u32 r8, s9, r13
	cmp_lt_i32 s8, r9, s8
	add_u32 r9, s42, r10
	add_u32 r10, s42, r13
	or_b32 r13, r22, r23
	or3_b32 r22, r26, r24, r38
	or3_b32 r24, r26, r35, r38
	addc_co_u32 r35, 0, r33
	add_co_u32 r180, 0xc0, r29
	addc_co_u32 r181, r35, 0
	shl_or_b32 r29, 1, r30, r32
	add_co_u32 r29, r29, s24
	addc_co_u32 r30, 0, r33
	or3_b32 r27, s5, r34, r27
	add_co_u32 r182, 0x88, r29
	or_b32 r29, 0x8000, r27
	addc_co_u32 r183, r30, 0
	shl_or_b32 r30, 1, r29, r32
	add_co_u32 r30, r30, s24
	addc_co_u32 r34, 0, r33
	add_co_u32 r184, 0x108, r30
	addc_co_u32 r185, r34, 0
	shl_or_b32 r27, 1, r27, r32
	add_co_u32 r27, r27, s24
	cmp_gt_u32 s14, 0x80, r0
	cmp_lt_u32 s20, 0x7f, r0
	or_b32 r186, r28, r29
	addc_co_u32 r28, 0, r33
	.loc	2 0 0 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:0
	shl_b64 r32, 0, 0
	shl_b64 r192, 0, 0
	or_b32 r11, r20, r19
	or_b32 r19, r20, r38
	or3_b32 r20, r26, r21, r38
	or3_b32 r21, r26, r23, r38
	or3_b32 r23, r26, r25, r38
	or3_b32 r25, r26, r36, r38
	or3_b32 r26, r26, r37, r38
	.loc	2 35 3                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:35:3
	add_co_u32 r188, 0xc0, r27
	.loc	2 0 0                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:0
	shl_b64 r34, 0, 0
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
	shr_b32 r2, 2, r0
	mov_b32 r31, 0
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
	.loc	2 35 3                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:35:3
	mov_b32 r153, 0
	addc_co_u32 r189, r28, 0
	smov_b64 s24, 0
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
	shl_b64 r190, 0, r192
	shl_b64 r196, 0, r192
	shl_b64 r194, 0, r192
	shl_b64 r200, 0, r192
	shl_b64 r198, 0, r192
	shl_b64 r204, 0, r192
	shl_b64 r202, 0, r192
	shl_b64 r172, 0, r34
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
	shl_b64 r176, 0, r34
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %for.inc1177
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 35 31                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:35:31
	add_co_u32 r180, 0x100, r180
	addc_co_u32 r181, r181, 0
	add_co_u32 r182, 0x100, r182
	addc_co_u32 r183, r183, 0
	sadd_co_u32 s24, 0x80, s24
	add_co_u32 r184, 0x100, r184
	saddc_co_u32 s25, s25, 0
	addc_co_u32 r185, r185, 0
	add_co_u32 r188, 0x100, r188
	scmp_eq_u64 0x800, s24
	addc_co_u32 r189, r189, 0
	.loc	2 35 3                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:35:3
	bra_smsks LBB2_76
LBB2_2:                                 ; %for.cond64.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 38 362 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:38:362
	add_co_u32 r27, r178, s24
	add_u32 r28, 0x10000, r27
	mad_i32 r206, r27, 2, s16
	mad_i32 r208, r28, 2, s16
	.loc	2 38 345 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:38:345
	snop 0
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	arrive gvmcnt(1)
	sts_b128 r3, 0x0, r210
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r206
	.loc	2 42 38 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_6
; %bb.3:                                ; %for.inc174
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_9
LBB2_4:                                 ; %for.inc174.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_12
LBB2_5:                                 ; %for.inc174.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_15
	bra LBB2_18
	.p2align	5
LBB2_6:                                 ; %land.lhs.true
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:11
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:43:47
	ldg_b128 r202, r188, -0x40
LBB2_8:                                 ; %Flow317
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_4
LBB2_9:                                 ; %land.lhs.true.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:11
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB2_11
; %bb.10:                               ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:43:47
	ldg_b128 r198, r184, -0x88
LBB2_11:                                ; %Flow316
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_5
LBB2_12:                                ; %land.lhs.true.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:11
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:43:47
	ldg_b128 r194, r188, 0x0
LBB2_14:                                ; %Flow315
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_18
LBB2_15:                                ; %land.lhs.true.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:42:11
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB2_17
; %bb.16:                               ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:11
	add_co_u32 r190, r186, s24
	mov_b32 r29, s25
	addc_co_u32 r191, r153, r29
	shl_b64 r190, 1, r190
	or_b32 r29, r190, 64
	add_co_u32 r190, s0, r29
	mov_b32 r29, s1
	addc_co_u32 r191, r29, r191
	.loc	2 43 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:43:47
	snop 1
	ldg_b128 r190, r190, 0x0
LBB2_17:                                ; %Flow314
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
LBB2_18:                                ; %for.inc174.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s42
	.loc	2 48 371 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:48:371
	mad_i32 r206, r27, 2, s18
	mad_i32 r208, r28, 2, s18
	.loc	2 52 369                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:52:369
	mad_i32 r214, r27, 2, s26
	mad_i32 r216, r28, 2, s26
	.loc	2 48 354                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:48:354
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	.loc	2 52 354                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:52:354
	ldg_b128 r218, r214, 0x0
	ldg_b128 r214, r216, 0x0
	.loc	2 48 354                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:48:354
	arrive gvmcnt(3)
	sts_b128 r5, 0x0, r210
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r206
	.loc	2 52 354                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:52:354
	arrive gvmcnt(1)
	sts_b128 r7, 0x0, r218
	arrive gvmcnt(0)
	sts_b128 r8, 0x0, r214
	.loc	2 56 39                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_22
; %bb.19:                               ; %for.inc355
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_25
LBB2_20:                                ; %for.inc355.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_28
LBB2_21:                                ; %for.inc355.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_31
	bra LBB2_34
	.p2align	5
LBB2_22:                                ; %land.lhs.true308
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:11
	and_xmsk s44, s10
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %if.then323
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:57:47
	ldg_b128 r202, r180, -0x40
LBB2_24:                                ; %Flow313
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_20
LBB2_25:                                ; %land.lhs.true308.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:11
	and_xmsk s44, s8
	snop 0
	bra_xmskz LBB2_27
; %bb.26:                               ; %if.then323.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:57:47
	ldg_b128 r198, r182, -0x8
LBB2_27:                                ; %Flow312
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_21
LBB2_28:                                ; %land.lhs.true308.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:11
	and_xmsk s44, s10
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.then323.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:57:47
	ldg_b128 r194, r180, 0x0
LBB2_30:                                ; %Flow311
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_34
LBB2_31:                                ; %land.lhs.true308.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:56:11
	and_xmsk s44, s8
	snop 0
	bra_xmskz LBB2_33
; %bb.32:                               ; %if.then323.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:11
	add_co_u32 r190, r152, s24
	mov_b32 r29, s25
	addc_co_u32 r191, r31, r29
	shl_b64 r190, 1, r190
	or_b32 r29, r190, 64
	add_co_u32 r190, s0, r29
	mov_b32 r29, s1
	addc_co_u32 r191, r29, r191
	.loc	2 57 47 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:57:47
	snop 1
	ldg_b128 r190, r190, 0x0
LBB2_33:                                ; %Flow310
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
LBB2_34:                                ; %for.inc355.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s42
	.loc	2 62 370 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:62:370
	mad_i32 r206, r27, 2, s22
	mad_i32 r208, r28, 2, s22
	.loc	2 62 355 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:62:355
	snop 0
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r210
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r206
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 65 9                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:65:9
	and_xmsk s42, s30
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %for.cond434.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r206, r11, 0x0
	lds_b128 r210, r12, 0x0
	lds_b128 r214, r13, 0x0
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	add_i32 r29, 0x4000, r11
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r206, r154, r170
	mma_16x16x16f16 r88, r206, r158, r88
	mma_16x16x16f16 r170, r208, r156, r170
	mma_16x16x16f16 r88, r208, r160, r88
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r206, r14, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r210, r154, r144
	mma_16x16x16f16 r80, r210, r158, r80
	mma_16x16x16f16 r144, r212, r156, r144
	mma_16x16x16f16 r80, r212, r160, r80
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r210, r15, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r214, r154, r136
	mma_16x16x16f16 r72, r214, r158, r72
	mma_16x16x16f16 r136, r216, r156, r136
	mma_16x16x16f16 r72, r216, r160, r72
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r214, r16, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r206, r154, r128
	mma_16x16x16f16 r64, r206, r158, r64
	mma_16x16x16f16 r128, r208, r156, r128
	mma_16x16x16f16 r64, r208, r160, r64
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r206, r17, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r210, r154, r120
	mma_16x16x16f16 r56, r210, r158, r56
	mma_16x16x16f16 r120, r212, r156, r120
	mma_16x16x16f16 r56, r212, r160, r56
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r210, r18, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r214, r154, r112
	mma_16x16x16f16 r48, r214, r158, r48
	mma_16x16x16f16 r112, r216, r156, r112
	mma_16x16x16f16 r48, r216, r160, r48
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r214, r29, 0x0
	add_i32 r29, 0x4000, r12
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r206, r154, r104
	mma_16x16x16f16 r40, r206, r158, r40
	mma_16x16x16f16 r104, r208, r156, r104
	mma_16x16x16f16 r40, r208, r160, r40
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r206, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r210, r154, r96
	mma_16x16x16f16 r32, r210, r158, r32
	mma_16x16x16f16 r96, r212, r156, r96
	mma_16x16x16f16 r32, r212, r160, r32
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r210, r29, 0x0
	add_i32 r29, 0x4000, r14
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r214, r154, r174
	mma_16x16x16f16 r92, r214, r158, r92
	mma_16x16x16f16 r174, r216, r156, r174
	mma_16x16x16f16 r92, r216, r160, r92
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r214, r29, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r206, r154, r148
	mma_16x16x16f16 r84, r206, r158, r84
	mma_16x16x16f16 r148, r208, r156, r148
	mma_16x16x16f16 r84, r208, r160, r84
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r206, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r210, r154, r140
	mma_16x16x16f16 r76, r210, r158, r76
	mma_16x16x16f16 r140, r212, r156, r140
	mma_16x16x16f16 r76, r212, r160, r76
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r210, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r214, r154, r132
	mma_16x16x16f16 r68, r214, r158, r68
	mma_16x16x16f16 r132, r216, r156, r132
	mma_16x16x16f16 r68, r216, r160, r68
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r214, r29, 0x0
	add_i32 r29, 0x4000, r18
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r206, r154, r124
	mma_16x16x16f16 r60, r206, r158, r60
	mma_16x16x16f16 r124, r208, r156, r124
	mma_16x16x16f16 r60, r208, r160, r60
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r206, r29, 0x0
	add_i32 r29, 0x4000, r19
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r210, r154, r116
	mma_16x16x16f16 r52, r210, r158, r52
	mma_16x16x16f16 r116, r212, r156, r116
	mma_16x16x16f16 r52, r212, r160, r52
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r210, r19, 0x0
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r214, r154, r108
	mma_16x16x16f16 r44, r214, r158, r44
	mma_16x16x16f16 r108, r216, r156, r108
	mma_16x16x16f16 r44, r216, r160, r44
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r214, r20, 0x0
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r206, r154, r100
	mma_16x16x16f16 r36, r206, r158, r36
	mma_16x16x16f16 r100, r208, r156, r100
	mma_16x16x16f16 r36, r208, r160, r36
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r206, r21, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r210, r162, r170
	mma_16x16x16f16 r88, r210, r166, r88
	mma_16x16x16f16 r170, r212, r164, r170
	mma_16x16x16f16 r88, r212, r168, r88
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r210, r22, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r214, r162, r144
	mma_16x16x16f16 r80, r214, r166, r80
	mma_16x16x16f16 r144, r216, r164, r144
	mma_16x16x16f16 r80, r216, r168, r80
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r214, r23, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r206, r162, r136
	mma_16x16x16f16 r72, r206, r166, r72
	mma_16x16x16f16 r136, r208, r164, r136
	mma_16x16x16f16 r72, r208, r168, r72
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r206, r24, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r210, r162, r128
	mma_16x16x16f16 r64, r210, r166, r64
	mma_16x16x16f16 r128, r212, r164, r128
	mma_16x16x16f16 r64, r212, r168, r64
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r210, r25, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r214, r162, r120
	mma_16x16x16f16 r56, r214, r166, r56
	mma_16x16x16f16 r120, r216, r164, r120
	mma_16x16x16f16 r56, r216, r168, r56
	.loc	2 68 45                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:68:45
	lds_b128 r214, r26, 0x0
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r206, r162, r112
	mma_16x16x16f16 r48, r206, r166, r48
	mma_16x16x16f16 r112, r208, r164, r112
	mma_16x16x16f16 r48, r208, r168, r48
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r206, r29, 0x0
	add_i32 r29, 0x4000, r20
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r210, r162, r104
	mma_16x16x16f16 r40, r210, r166, r40
	mma_16x16x16f16 r104, r212, r164, r104
	mma_16x16x16f16 r40, r212, r168, r40
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r210, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 74 57                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r214, r162, r96
	mma_16x16x16f16 r32, r214, r166, r32
	mma_16x16x16f16 r96, r216, r164, r96
	mma_16x16x16f16 r32, r216, r168, r32
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r214, r29, 0x0
	add_i32 r29, 0x4000, r22
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r206, r162, r174
	mma_16x16x16f16 r92, r206, r166, r92
	mma_16x16x16f16 r174, r208, r164, r174
	mma_16x16x16f16 r92, r208, r168, r92
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r206, r29, 0x0
	add_i32 r29, 0x4000, r23
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r210, r162, r148
	mma_16x16x16f16 r84, r210, r166, r84
	mma_16x16x16f16 r148, r212, r164, r148
	mma_16x16x16f16 r84, r212, r168, r84
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r210, r29, 0x0
	add_i32 r29, 0x4000, r24
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r214, r162, r140
	mma_16x16x16f16 r76, r214, r166, r76
	mma_16x16x16f16 r140, r216, r164, r140
	mma_16x16x16f16 r76, r216, r168, r76
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r214, r29, 0x0
	add_i32 r29, 0x4000, r25
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r206, r162, r132
	mma_16x16x16f16 r68, r206, r166, r68
	mma_16x16x16f16 r132, r208, r164, r132
	mma_16x16x16f16 r68, r208, r168, r68
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r206, r29, 0x0
	add_i32 r29, 0x4000, r26
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r210, r162, r124
	mma_16x16x16f16 r60, r210, r166, r60
	mma_16x16x16f16 r124, r212, r164, r124
	mma_16x16x16f16 r60, r212, r168, r60
	.loc	2 82 47                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:82:47
	lds_b128 r210, r29, 0x0
	.loc	2 88 56                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r214, r162, r116
	mma_16x16x16f16 r52, r214, r166, r52
	mma_16x16x16f16 r116, r216, r164, r116
	mma_16x16x16f16 r52, r216, r168, r52
	arrive bsmcnt(1)
	mma_16x16x16f16 r108, r206, r162, r108
	mma_16x16x16f16 r44, r206, r166, r44
	mma_16x16x16f16 r108, r208, r164, r108
	mma_16x16x16f16 r44, r208, r168, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r100, r210, r162, r100
	mma_16x16x16f16 r36, r210, r166, r36
	mma_16x16x16f16 r100, r212, r164, r100
	mma_16x16x16f16 r36, r212, r168, r36
LBB2_36:                                ; %if.end612
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s42
.Ltmp7:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 100 363                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:100:363
	add_u32 r29, r27, 64
	add_u32 r30, 0x10040, r27
	mad_i32 r206, r29, 2, s16
	mad_i32 r208, r30, 2, s16
	.loc	2 102 16                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:102:16
	mov_b32 r214, 0x780
	.loc	2 100 346                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:100:346
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	.loc	2 102 16                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:102:16
	mov_b32 r215, 0
	cmp_lg_u64 s42, s24, r214
	scmp_eq_u64 0x780, s24
	.loc	2 100 346                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:100:346
	arrive gvmcnt(1)
	sts_b128 r3, 0x0, r210
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r206
	.loc	2 102 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:102:9
	bra_smsks LBB2_54
; %bb.37:                               ; %for.cond677.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 40                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_41
; %bb.38:                               ; %for.inc730
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_44
LBB2_39:                                ; %for.inc730.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_47
LBB2_40:                                ; %for.inc730.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_50
	bra LBB2_53
	.p2align	5
LBB2_41:                                ; %land.lhs.true683
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %if.then698
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:106:48
	ldg_b128 r154, r188, 0x40
LBB2_43:                                ; %Flow308
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_39
LBB2_44:                                ; %land.lhs.true683.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.then698.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:106:48
	ldg_b128 r158, r184, -0x8
LBB2_46:                                ; %Flow307
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_40
LBB2_47:                                ; %land.lhs.true683.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.then698.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:106:48
	ldg_b128 r162, r188, 0x80
LBB2_49:                                ; %Flow306
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_53
LBB2_50:                                ; %land.lhs.true683.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:105:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_52
; %bb.51:                               ; %if.then698.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:13
	add_co_u32 r168, r186, s24
	mov_b32 r166, s25
	addc_co_u32 r169, r153, r166
	shl_b64 r166, 1, r168
	or_b32 r166, r166, 64
	add_co_u32 r168, s2, r166
	mov_b32 r166, s3
	addc_co_u32 r169, r166, r167
	.loc	2 106 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:106:48
	snop 1
	ldg_b128 r166, r168, 0x0
LBB2_52:                                ; %Flow304
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
LBB2_53:                                ; %Flow305
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB2_54:                                ; %if.end733
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 112 372 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:112:372
	mad_i32 r206, r27, 2, s34
	mad_i32 r208, r28, 2, s34
	.loc	2 116 370                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:116:370
	mad_i32 r214, r29, 2, s26
	mad_i32 r216, r30, 2, s26
	.loc	2 112 355                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:112:355
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	.loc	2 116 355                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:116:355
	ldg_b128 r218, r214, 0x0
	ldg_b128 r214, r216, 0x0
	.loc	2 118 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:118:9
	sandn_b64 cmsk, xmsk, s42
	.loc	2 112 355                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:112:355
	arrive gvmcnt(3)
	sts_b128 r5, 0x0, r210
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r206
	.loc	2 116 355                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:116:355
	arrive gvmcnt(1)
	sts_b128 r7, 0x0, r218
	arrive gvmcnt(0)
	sts_b128 r8, 0x0, r214
	.loc	2 118 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:118:9
	bra_cmsks LBB2_72
; %bb.55:                               ; %for.cond862.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_59
; %bb.56:                               ; %for.inc915
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_62
LBB2_57:                                ; %for.inc915.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_65
LBB2_58:                                ; %for.inc915.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_68
	bra LBB2_71
	.p2align	5
LBB2_59:                                ; %land.lhs.true868
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_61
; %bb.60:                               ; %if.then883
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:122:48
	ldg_b128 r154, r180, 0x40
LBB2_61:                                ; %Flow302
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_57
LBB2_62:                                ; %land.lhs.true868.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_64
; %bb.63:                               ; %if.then883.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:122:48
	ldg_b128 r158, r182, 0x78
LBB2_64:                                ; %Flow301
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_58
LBB2_65:                                ; %land.lhs.true868.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_67
; %bb.66:                               ; %if.then883.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:122:48
	ldg_b128 r162, r180, 0x80
LBB2_67:                                ; %Flow300
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_71
LBB2_68:                                ; %land.lhs.true868.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:121:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_70
; %bb.69:                               ; %if.then883.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:13
	add_co_u32 r166, r152, s24
	mov_b32 r29, s25
	addc_co_u32 r167, r31, r29
	shl_b64 r166, 1, r166
	or_b32 r29, r166, 64
	add_co_u32 r166, s2, r29
	mov_b32 r29, s3
	addc_co_u32 r167, r29, r167
	.loc	2 122 48 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:122:48
	snop 1
	ldg_b128 r166, r166, 0x0
LBB2_70:                                ; %Flow
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
LBB2_71:                                ; %Flow299
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB2_72:                                ; %if.end918
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 128 371 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:128:371
	mad_i32 r206, r27, 2, s36
	mad_i32 r28, r28, 2, s36
	.loc	2 128 356 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:128:356
	snop 0
	ldg_b128 r206, r206, 0x0
	ldg_b128 r210, r28, 0x0
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r206
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r210
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 131 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:131:9
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB2_74
; %bb.73:                               ; %for.cond995.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r206, r11, 0x0
	lds_b128 r210, r12, 0x0
	lds_b128 r214, r13, 0x0
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	add_i32 r27, 0x4000, r11
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r206, r202, r170
	mma_16x16x16f16 r88, r206, r198, r88
	mma_16x16x16f16 r170, r208, r204, r170
	mma_16x16x16f16 r88, r208, r200, r88
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r206, r14, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r210, r202, r144
	mma_16x16x16f16 r80, r210, r198, r80
	mma_16x16x16f16 r144, r212, r204, r144
	mma_16x16x16f16 r80, r212, r200, r80
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r210, r15, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r214, r202, r136
	mma_16x16x16f16 r72, r214, r198, r72
	mma_16x16x16f16 r136, r216, r204, r136
	mma_16x16x16f16 r72, r216, r200, r72
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r214, r16, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r206, r202, r128
	mma_16x16x16f16 r64, r206, r198, r64
	mma_16x16x16f16 r128, r208, r204, r128
	mma_16x16x16f16 r64, r208, r200, r64
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r206, r17, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r210, r202, r120
	mma_16x16x16f16 r56, r210, r198, r56
	mma_16x16x16f16 r120, r212, r204, r120
	mma_16x16x16f16 r56, r212, r200, r56
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r210, r18, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r214, r202, r112
	mma_16x16x16f16 r48, r214, r198, r48
	mma_16x16x16f16 r112, r216, r204, r112
	mma_16x16x16f16 r48, r216, r200, r48
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r214, r27, 0x0
	add_i32 r27, 0x4000, r12
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r206, r202, r104
	mma_16x16x16f16 r40, r206, r198, r40
	mma_16x16x16f16 r104, r208, r204, r104
	mma_16x16x16f16 r40, r208, r200, r40
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r13
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r210, r202, r96
	mma_16x16x16f16 r32, r210, r198, r32
	mma_16x16x16f16 r96, r212, r204, r96
	mma_16x16x16f16 r32, r212, r200, r32
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r210, r27, 0x0
	add_i32 r27, 0x4000, r14
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r214, r202, r174
	mma_16x16x16f16 r92, r214, r198, r92
	mma_16x16x16f16 r174, r216, r204, r174
	mma_16x16x16f16 r92, r216, r200, r92
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r214, r27, 0x0
	add_i32 r27, 0x4000, r15
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r206, r202, r148
	mma_16x16x16f16 r84, r206, r198, r84
	mma_16x16x16f16 r148, r208, r204, r148
	mma_16x16x16f16 r84, r208, r200, r84
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r16
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r210, r202, r140
	mma_16x16x16f16 r76, r210, r198, r76
	mma_16x16x16f16 r140, r212, r204, r140
	mma_16x16x16f16 r76, r212, r200, r76
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r210, r27, 0x0
	add_i32 r27, 0x4000, r17
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r214, r202, r132
	mma_16x16x16f16 r68, r214, r198, r68
	mma_16x16x16f16 r132, r216, r204, r132
	mma_16x16x16f16 r68, r216, r200, r68
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r214, r27, 0x0
	add_i32 r27, 0x4000, r18
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r206, r202, r124
	mma_16x16x16f16 r60, r206, r198, r60
	mma_16x16x16f16 r124, r208, r204, r124
	mma_16x16x16f16 r60, r208, r200, r60
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r19
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r210, r202, r116
	mma_16x16x16f16 r52, r210, r198, r52
	mma_16x16x16f16 r116, r212, r204, r116
	mma_16x16x16f16 r52, r212, r200, r52
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r210, r19, 0x0
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r214, r202, r108
	mma_16x16x16f16 r44, r214, r198, r44
	mma_16x16x16f16 r108, r216, r204, r108
	mma_16x16x16f16 r44, r216, r200, r44
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r214, r20, 0x0
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r206, r202, r100
	mma_16x16x16f16 r36, r206, r198, r36
	mma_16x16x16f16 r100, r208, r204, r100
	mma_16x16x16f16 r36, r208, r200, r36
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r206, r21, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r210, r194, r170
	mma_16x16x16f16 r88, r210, r190, r88
	mma_16x16x16f16 r170, r212, r196, r170
	mma_16x16x16f16 r88, r212, r192, r88
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r210, r22, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r214, r194, r144
	mma_16x16x16f16 r80, r214, r190, r80
	mma_16x16x16f16 r144, r216, r196, r144
	mma_16x16x16f16 r80, r216, r192, r80
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r214, r23, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r206, r194, r136
	mma_16x16x16f16 r72, r206, r190, r72
	mma_16x16x16f16 r136, r208, r196, r136
	mma_16x16x16f16 r72, r208, r192, r72
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r206, r24, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r210, r194, r128
	mma_16x16x16f16 r64, r210, r190, r64
	mma_16x16x16f16 r128, r212, r196, r128
	mma_16x16x16f16 r64, r212, r192, r64
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r210, r25, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r214, r194, r120
	mma_16x16x16f16 r56, r214, r190, r56
	mma_16x16x16f16 r120, r216, r196, r120
	mma_16x16x16f16 r56, r216, r192, r56
	.loc	2 134 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:134:47
	lds_b128 r214, r26, 0x0
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r206, r194, r112
	mma_16x16x16f16 r48, r206, r190, r48
	mma_16x16x16f16 r112, r208, r196, r112
	mma_16x16x16f16 r48, r208, r192, r48
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r20
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r210, r194, r104
	mma_16x16x16f16 r40, r210, r190, r40
	mma_16x16x16f16 r104, r212, r196, r104
	mma_16x16x16f16 r40, r212, r192, r40
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r210, r27, 0x0
	add_i32 r27, 0x4000, r21
	.loc	2 140 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r214, r194, r96
	mma_16x16x16f16 r32, r214, r190, r32
	mma_16x16x16f16 r96, r216, r196, r96
	mma_16x16x16f16 r32, r216, r192, r32
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r214, r27, 0x0
	add_i32 r27, 0x4000, r22
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r206, r194, r174
	mma_16x16x16f16 r92, r206, r190, r92
	mma_16x16x16f16 r174, r208, r196, r174
	mma_16x16x16f16 r92, r208, r192, r92
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r23
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r210, r194, r148
	mma_16x16x16f16 r84, r210, r190, r84
	mma_16x16x16f16 r148, r212, r196, r148
	mma_16x16x16f16 r84, r212, r192, r84
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r210, r27, 0x0
	add_i32 r27, 0x4000, r24
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r214, r194, r140
	mma_16x16x16f16 r76, r214, r190, r76
	mma_16x16x16f16 r140, r216, r196, r140
	mma_16x16x16f16 r76, r216, r192, r76
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r214, r27, 0x0
	add_i32 r27, 0x4000, r25
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r206, r194, r132
	mma_16x16x16f16 r68, r206, r190, r68
	mma_16x16x16f16 r132, r208, r196, r132
	mma_16x16x16f16 r68, r208, r192, r68
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r26
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r210, r194, r124
	mma_16x16x16f16 r60, r210, r190, r60
	mma_16x16x16f16 r124, r212, r196, r124
	mma_16x16x16f16 r60, r212, r192, r60
	.loc	2 148 47                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:148:47
	lds_b128 r210, r27, 0x0
	.loc	2 154 56                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r214, r194, r116
	mma_16x16x16f16 r52, r214, r190, r52
	mma_16x16x16f16 r116, r216, r196, r116
	mma_16x16x16f16 r52, r216, r192, r52
	arrive bsmcnt(1)
	mma_16x16x16f16 r108, r206, r194, r108
	mma_16x16x16f16 r44, r206, r190, r44
	mma_16x16x16f16 r108, r208, r196, r108
	mma_16x16x16f16 r44, r208, r192, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r100, r210, r194, r100
	mma_16x16x16f16 r36, r210, r190, r36
	mma_16x16x16f16 r100, r212, r196, r100
	mma_16x16x16f16 r36, r212, r192, r36
LBB2_74:                                ; %if.end1173
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s44
	.loc	2 163 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:163:9
	sandn_b64 cmsk, xmsk, s42
	snop 0
	bra_cmsks LBB2_1
; %bb.75:                               ; %if.then1175
                                        ;   in Loop: Header=BB2_2 Depth=1
.Ltmp11:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB2_1
.Ltmp12:
LBB2_76:                                ; %for.cond1180.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	smul_i32 s0, 0x104000, s12
	sshl_b32 s1, 7, s4
	sadd_co_i32 s0, s1, s0
	mov_b32 r3, s0
	shr_b32 r0, 6, r0
	smov_b32 s1, 0x41000
	mad_u24 r0, r0, s1, r3
	smov_b32 s0, 0x2080
	mad_u24 r0, r1, s0, r0
	and_or_b32 r0, r2, 12, r0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_93
; %bb.77:                               ; %if.end1357
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_94
LBB2_78:                                ; %if.end1357.1
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_95
LBB2_79:                                ; %if.end1357.2
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_96
LBB2_80:                                ; %if.end1357.3
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_97
LBB2_81:                                ; %if.end1357.4
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_98
LBB2_82:                                ; %if.end1357.5
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_99
LBB2_83:                                ; %if.end1357.6
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_100
LBB2_84:                                ; %if.end1357.7
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_101
LBB2_85:                                ; %if.end1357.8
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_102
LBB2_86:                                ; %if.end1357.9
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_103
LBB2_87:                                ; %if.end1357.10
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_104
LBB2_88:                                ; %if.end1357.11
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_105
LBB2_89:                                ; %if.end1357.12
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_106
LBB2_90:                                ; %if.end1357.13
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_107
LBB2_91:                                ; %if.end1357.14
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_108
LBB2_92:                                ; %if.end1357.15
	.loc	2 223 1 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:223:1
	snop 1
	endk
LBB2_93:                                ; %if.then1297
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r173
.Ltmp13:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r173, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp14:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r172
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp16:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r173, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r177
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r172, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp18:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r171
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp20:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r172, r5
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r171, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp22:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r170
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp24:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r171, r6
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r170, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp26:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r170, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r174
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r175
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r176
.Ltmp27:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp28:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp31:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r8, s6, r8
	mov_b32 r1, s7
	addc_co_u32 r9, r1, r9
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r3
	add_u16 r2_hi, 0, 0
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_78
LBB2_94:                                ; %if.then1297.1
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r147
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r147, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp33:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r146
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp35:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r147, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r151
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r146, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp37:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r145
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp39:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r146, r5
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r145, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp41:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r144
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp43:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r145, r6
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r144, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp45:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r144, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r148
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r149
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r150
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
	.loc	2 220 219 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:219
	snop 0
	or_b32 r3, r0, 16
	.loc	2 220 27 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	mad_i32 r6, r3, 2, s6
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_79
LBB2_95:                                ; %if.then1297.2
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r139
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r139, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp52:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r138
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp54:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r139, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r143
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r138, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp56:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r137
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp58:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r138, r5
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r137, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp60:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r136
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp62:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r137, r6
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r136, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp64:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r136, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r140
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r141
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r142
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
	.loc	2 220 219 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:219
	snop 0
	or_b32 r3, r0, 32
	.loc	2 220 27 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	mad_i32 r6, r3, 2, s6
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_80
LBB2_96:                                ; %if.then1297.3
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r131
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r131, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp71:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r130
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp73:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r131, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r135
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r130, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp75:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r129
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp77:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r130, r5
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r129, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp79:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r128
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp81:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r129, r6
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r128, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp83:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r128, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r132
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r133
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r134
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
	.loc	2 220 219 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:219
	snop 0
	or_b32 r3, r0, 48
	.loc	2 220 27 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	mad_i32 r6, r3, 2, s6
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_81
LBB2_97:                                ; %if.then1297.4
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r123
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r123, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp90:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r122
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp92:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r123, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r127
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r122, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp94:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r121
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp96:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r122, r5
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r121, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp98:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r120
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp100:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r121, r6
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r120, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp102:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r120, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r124
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r125
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r126
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
	.loc	2 220 219 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:219
	snop 0
	or_b32 r3, r0, 64
	.loc	2 220 27 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	mad_i32 r6, r3, 2, s6
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_82
LBB2_98:                                ; %if.then1297.5
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r115
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r115, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp109:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r114
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp111:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r115, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r119
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r114, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp113:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r113
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp115:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r114, r5
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r113, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp117:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r112
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp119:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r113, r6
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r112, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp121:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r112, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r116
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r117
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r118
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
	.loc	2 220 219 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:219
	snop 0
	or_b32 r3, 0x50, r0
	.loc	2 220 27 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	mad_i32 r6, r3, 2, s6
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_83
LBB2_99:                                ; %if.then1297.6
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r107
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r107, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp128:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r106
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp130:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r107, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r111
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r106, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp132:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r105
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp134:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r106, r5
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r105, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp136:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r104
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp138:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r105, r6
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r104, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp140:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r104, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r108
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r109
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r110
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
	.loc	2 220 219 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:219
	snop 0
	or_b32 r3, 0x60, r0
	.loc	2 220 27 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	mad_i32 r6, r3, 2, s6
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_84
LBB2_100:                               ; %if.then1297.7
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r99
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r99, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp147:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r98
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp149:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r99, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r103
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r98, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp151:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r97
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp153:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r98, r5
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r97, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp155:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r96
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp157:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r97, r6
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r96, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp159:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r96, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r100
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r101
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r102
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
	.loc	2 220 219 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:219
	snop 0
	or_b32 r3, 0x70, r0
	.loc	2 220 27 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	mad_i32 r6, r3, 2, s6
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_85
LBB2_101:                               ; %if.then1297.8
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r91
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r91, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp166:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r90
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp168:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r91, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r95
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r90, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp170:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r89
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp172:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r90, r5
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r89, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp174:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r88
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp176:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r89, r6
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r88, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp178:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r88, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r92
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r93
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r94
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp183:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41000, r1
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_86
LBB2_102:                               ; %if.then1297.9
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r83
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r83, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp185:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r82
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp187:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r83, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r87
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r82, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp189:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r81
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp191:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r82, r5
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r81, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp193:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r80
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp195:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r81, r6
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r80, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp197:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r80, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r84
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r85
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r86
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp199:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp202:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41020, r1
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_87
LBB2_103:                               ; %if.then1297.10
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r75
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r75, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp204:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r74
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp206:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r75, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r79
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r74, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp208:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r73
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp210:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r74, r5
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r73, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp212:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r72
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp214:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r73, r6
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r72, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp216:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r72, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r76
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r77
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r78
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp218:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp221:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41040, r1
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_88
LBB2_104:                               ; %if.then1297.11
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r67
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r67, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp223:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r66
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp225:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r67, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r71
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r66, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp227:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r65
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp229:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r66, r5
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r65, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp231:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r64
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp233:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r65, r6
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r64, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp235:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r64, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r68
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r69
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r70
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp237:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp240:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41060, r1
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_89
LBB2_105:                               ; %if.then1297.12
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r59
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r59, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp242:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r58
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp244:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r59, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r63
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r58, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp246:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r57
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp248:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r58, r5
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r57, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp250:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r56
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp252:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r57, r6
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r56, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp254:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r56, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r60
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r61
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r62
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp256:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp259:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41080, r1
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_90
LBB2_106:                               ; %if.then1297.13
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r51
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r51, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp261:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r50
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp263:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r51, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r55
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r50, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp265:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r49
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp267:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r50, r5
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r49, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp269:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r48
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp271:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r49, r6
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r48, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp273:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r48, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r52
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r53
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r54
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp275:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp278:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x410a0, r1
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_91
LBB2_107:                               ; %if.then1297.14
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r43
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r43, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp280:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r42
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp282:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r43, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r47
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r42, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp284:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r41
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp286:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r42, r5
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r41, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp288:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r40
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp290:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r41, r6
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r40, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp292:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r40, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r44
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r45
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r46
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp294:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp297:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x410c0, r1
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_92
LBB2_108:                               ; %if.then1297.15
	.loc	2 191 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r35
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r35, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp299:
	.loc	2 199 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r34
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp301:
	.loc	2 203 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 207 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:207:20
	mul_f32 r3, r35, r3
	.loc	2 217 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r39
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r34, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp303:
	.loc	2 198 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r33
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp305:
	.loc	2 202 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 206 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:206:20
	mul_f32 r5, r34, r5
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r33, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp307:
	.loc	2 197 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r32
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp309:
	.loc	2 201 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 205 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:205:20
	mul_f32 r6, r33, r6
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r32, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp311:
	.loc	2 196 26                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:204:20
	mul_f32 r1, r32, r1
	.loc	2 214 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r36
	.loc	2 215 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r37
	.loc	2 216 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r38
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp313:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
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
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp316:
	.loc	2 220 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r0, s6, r8
	mov_b32 r1, s7
	addc_co_u32 r1, r1, r9
	add_co_u32 r8, 0x410e0, r0
	.loc	2 220 262 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	shl_b32 r0, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r1, 0
	.loc	2 220 262                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:220:262
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r6
	and_b32 r1, 0xffff, r5
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	.loc	2 223 1 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:223:1
	snop 2
	endk
.Ltmp317:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
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
.Lfunc_end2:
	.size	kernel_kernel, .Lfunc_end2-kernel_kernel
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 25976
; NumMTRegsForWarps/PEU: 222
; NumSTRegsForWarps/PEU: 52
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 225 0                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:225:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s48, s0, 0x0
.Ltmp318:
	.loc	2 237 25 prologue_end           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:237:25
	scmp_gt_u32 s5, 7
	.loc	2 237 7 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:237:7
	snop 0
	bra_smskz LBB3_2
; %bb.1:                                ; %if.else
	.loc	2 241 46 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:241:46
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 241 72 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:241:72
	sand_b32 s1, s4, 1
	.loc	2 241 51                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:241:51
	sor_b32 s16, s0, s1
	.loc	2 242 45 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:242:45
	sshl_b32 s0, 2, s5
	sand_b32 s0, s0, 4
	.loc	2 242 71 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:242:71
	sshr_b32 s1, 1, s4
	.loc	2 242 50                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:242:50
	sadd_co_i32 s18, s0, s1
	.loc	2 237 7 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:237:7
	bra_xmskz LBB3_3
	bra LBB3_4
LBB3_2:
                                        ; implicit-def: $streg_32bit_16
                                        ; implicit-def: $streg_32bit_18
LBB3_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:7
	smov_b32 s18, s4
	smov_b32 s16, s5
LBB3_4:                                 ; %if.end
	cmp_gt_u32 s22, s16, 23
	cmp_lt_u32 s20, s16, 24
	smov_b64 s30, 0
	.loc	2 247 18 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:247:18
	snop 1
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_6
; %bb.5:                                ; %if.then26
	.loc	2 0 18 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:18
	smov_b32 s17, 0
	sshl_b64 s0, 2, s16
	arrive slcnt(0)
	sadd_co_u32 s0, s50, s0
	saddc_co_u32 s1, s51, s1
	.loc	2 248 15 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:248:15
	ldu_b32 s30, s0, 0x0
	arrive slcnt(0)
	sashr_i32 s31, 31, s30
LBB3_6:                                 ; %if.end29
	.loc	2 253 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:253:20
	sshl_b64 s0, 2, s30
	arrive slcnt(0)
	sadd_co_u32 s2, s8, s0
	saddc_co_u32 s3, s9, s1
	.loc	2 254 19                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:254:19
	sadd_co_u32 s4, s52, s0
	saddc_co_u32 s5, s53, s1
	.loc	2 255 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:255:22
	sadd_co_u32 s0, s54, s0
	saddc_co_u32 s1, s55, s1
	.loc	2 253 20                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:253:20
	ldu_b32 s3, s2, 0x0
	.loc	2 255 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:255:22
	ldu_b32 s0, s0, 0x0
	smul_i32 s1, 0x104000, s16
	bfe_u32 r2, r0, 6, 4
	smov_b32 s2, 0x41000
	mov_b32 r3, s1
	.loc	2 275 45                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:275:45
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
	bra_cmsks LBB3_8
; %bb.7:                                ; %for.body56.us.preheader
	.loc	2 0 45 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:45
	or_b32 r0, r0, r4
	add_u32 r4, r0, r23
	.loc	2 271 39 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:39
	shl_b64 r6, 1, r4
	add_co_u32 r6, s14, r6
	mov_b32 r0, s15
	addc_co_u32 r7, r0, r7
	add_co_u32 r8, 0x41000, r6
	smov_b64 s6, 0x41000
	.loc	2 271 320 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:320
	or_b32 r5, r4, 32
	.loc	2 271 39                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:39
	addc_co_u32 r9, r7, 0
	.loc	2 271 17                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:17
	ldg_b128 r152, r6, 0x0
	.loc	2 271 39                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:39
	mad_u32 r6, r5, 2, s14
	.loc	2 271 320                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:320
	mad_u32 r4, r4, 2, s6
	.loc	2 271 39                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:39
	add_co_u32 r4, s14, r4
	addc_co_u32 r5, r0, r5
	.loc	2 271 17                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:271:17
	ldg_b128 r156, r8, 0x0
	ldg_b128 r160, r6, 0x0
	ldg_b128 r164, r4, 0x40
LBB3_8:                                 ; %for.cond117.preheader
	.loc	2 0 17                          ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:17
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
	.loc	2 277 3 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:277:3
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
	.loc	2 0 0 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:0
	shl_b64 r90, 0, 0
	.loc	2 277 3                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:277:3
	add_co_u32 r23, s14, r24
	mov_b32 r24, s15
	.loc	2 0 0                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:0
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
	.loc	2 277 3                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:277:3
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
	bra LBB3_10
	.p2align	5
LBB3_9:                                 ; %for.inc930
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 277 31                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:277:31
	sadd_co_u32 s14, 0x100, s14
	saddc_co_u32 s15, s15, 0
	scmp_eq_u64 0x4000, s14
	.loc	2 277 3                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:277:3
	snop 0
	bra_smsks LBB3_80
LBB3_10:                                ; %for.cond122.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 280 11 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:280:11
	and_xmsk s42, s26
	snop 0
	bra_xmskz LBB3_21
; %bb.11:                               ; %for.cond131.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:11
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_13
; %bb.12:                               ; %for.body134.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 283 133 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
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
	bra_xmskz LBB3_14
	bra LBB3_20
	.p2align	5
LBB3_13:                                ;   in Loop: Header=BB3_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB3_14:                                ; %for.body134.us.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	and_xmsk s44, s6
	snop 0
	bra_xmsks LBB3_40
; %bb.15:                               ; %for.inc235.us
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s6
	snop 0
	bra_xmsks LBB3_41
LBB3_16:                                ; %for.inc235.us.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 133                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s4
	snop 0
	bra_xmsks LBB3_42
LBB3_17:                                ; %for.inc235.us.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 133                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s4
	snop 0
	bra_xmskz LBB3_19
LBB3_18:                                ; %if.then165.us.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r172, 0x410c0, r25
	addc_co_u32 r173, r147, 0
	snop 1
	ldg_b128 r172, r172, 0x0
LBB3_19:                                ; %Flow998
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 27 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:27
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
LBB3_20:                                ; %Flow1000
                                        ;   in Loop: Header=BB3_10 Depth=1
	shl_b64 r174, 0, r200
	shl_b64 r172, 0, r202
	shl_b64 r178, 0, r192
	shl_b64 r176, 0, r194
	shl_b64 r182, 0, r196
	shl_b64 r180, 0, r198
	shl_b64 r186, 0, r188
	shl_b64 r184, 0, r190
LBB3_21:                                ; %if.end238
                                        ;   in Loop: Header=BB3_10 Depth=1
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
	bra_cmsks LBB3_23
; %bb.22:                               ; %for.body242.us.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 302 21 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:302:21
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
LBB3_23:                                ; %for.cond.cleanup241
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 306 362                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:306:362
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
	.loc	2 280 11                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:280:11
	and_xmsk s42, s30
	snop 0
	bra_xmskz LBB3_34
; %bb.24:                               ; %for.cond131.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:11
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_26
; %bb.25:                               ; %for.body134.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 283 133 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
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
	bra_xmskz LBB3_27
	bra LBB3_33
	.p2align	5
LBB3_26:                                ;   in Loop: Header=BB3_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB3_27:                                ; %for.body134.us.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	and_xmsk s44, s38
	snop 0
	bra_xmsks LBB3_43
; %bb.28:                               ; %for.inc235.us.11760
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s38
	snop 0
	bra_xmsks LBB3_44
LBB3_29:                                ; %for.inc235.us.1.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 133                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s40
	snop 0
	bra_xmsks LBB3_45
LBB3_30:                                ; %for.inc235.us.2.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 133                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB3_32
LBB3_31:                                ; %if.then165.us.3.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r172, 0x410c0, r25
	addc_co_u32 r173, r147, 0
	snop 1
	ldg_b128 r172, r172, 0x0
LBB3_32:                                ; %Flow995
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 27 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:27
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
LBB3_33:                                ; %Flow997
                                        ;   in Loop: Header=BB3_10 Depth=1
	shl_b64 r174, 0, r200
	shl_b64 r172, 0, r202
	shl_b64 r178, 0, r192
	shl_b64 r176, 0, r194
	shl_b64 r182, 0, r196
	shl_b64 r180, 0, r198
	shl_b64 r186, 0, r188
	shl_b64 r184, 0, r190
LBB3_34:                                ; %if.end238.1
                                        ;   in Loop: Header=BB3_10 Depth=1
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
	bra_cmsks LBB3_36
; %bb.35:                               ; %for.body242.us.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 302 21 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:302:21
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
LBB3_36:                                ; %for.cond.cleanup241.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 306 362                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:306:362
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
.Ltmp319:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp320:
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r188, r5, 0x0
	lds_b128 r192, r6, 0x0
	lds_b128 r196, r7, 0x0
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	add_i32 r25, 0x4000, r5
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r188, r152, r168
	mma_16x16x16f16 r118, r188, r156, r118
	mma_16x16x16f16 r168, r190, r154, r168
	mma_16x16x16f16 r118, r190, r158, r118
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r188, r8, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r192, r152, r148
	mma_16x16x16f16 r114, r192, r156, r114
	mma_16x16x16f16 r148, r194, r154, r148
	mma_16x16x16f16 r114, r194, r158, r114
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r192, r9, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r196, r152, r142
	mma_16x16x16f16 r110, r196, r156, r110
	mma_16x16x16f16 r142, r198, r154, r142
	mma_16x16x16f16 r110, r198, r158, r110
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r196, r10, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r188, r152, r138
	mma_16x16x16f16 r106, r188, r156, r106
	mma_16x16x16f16 r138, r190, r154, r138
	mma_16x16x16f16 r106, r190, r158, r106
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r188, r11, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r152, r134
	mma_16x16x16f16 r102, r192, r156, r102
	mma_16x16x16f16 r134, r194, r154, r134
	mma_16x16x16f16 r102, r194, r158, r102
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r192, r12, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r196, r152, r130
	mma_16x16x16f16 r98, r196, r156, r98
	mma_16x16x16f16 r130, r198, r154, r130
	mma_16x16x16f16 r98, r198, r158, r98
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r6
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r152, r126
	mma_16x16x16f16 r94, r188, r156, r94
	mma_16x16x16f16 r126, r190, r154, r126
	mma_16x16x16f16 r94, r190, r158, r94
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r7
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r192, r152, r122
	mma_16x16x16f16 r90, r192, r156, r90
	mma_16x16x16f16 r122, r194, r154, r122
	mma_16x16x16f16 r90, r194, r158, r90
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r8
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r196, r152, r86
	mma_16x16x16f16 r54, r196, r156, r54
	mma_16x16x16f16 r86, r198, r154, r86
	mma_16x16x16f16 r54, r198, r158, r54
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r9
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r188, r152, r82
	mma_16x16x16f16 r50, r188, r156, r50
	mma_16x16x16f16 r82, r190, r154, r82
	mma_16x16x16f16 r50, r190, r158, r50
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r10
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r192, r152, r78
	mma_16x16x16f16 r46, r192, r156, r46
	mma_16x16x16f16 r78, r194, r154, r78
	mma_16x16x16f16 r46, r194, r158, r46
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r11
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r196, r152, r74
	mma_16x16x16f16 r42, r196, r156, r42
	mma_16x16x16f16 r74, r198, r154, r74
	mma_16x16x16f16 r42, r198, r158, r42
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r12
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r188, r152, r70
	mma_16x16x16f16 r38, r188, r156, r38
	mma_16x16x16f16 r70, r190, r154, r70
	mma_16x16x16f16 r38, r190, r158, r38
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r13
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r192, r152, r66
	mma_16x16x16f16 r34, r192, r156, r34
	mma_16x16x16f16 r66, r194, r154, r66
	mma_16x16x16f16 r34, r194, r158, r34
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r192, r13, 0x0
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r196, r152, r62
	mma_16x16x16f16 r30, r196, r156, r30
	mma_16x16x16f16 r62, r198, r154, r62
	mma_16x16x16f16 r30, r198, r158, r30
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r196, r14, 0x0
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r188, r152, r58
	mma_16x16x16f16 r26, r188, r156, r26
	mma_16x16x16f16 r58, r190, r154, r58
	mma_16x16x16f16 r26, r190, r158, r26
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r188, r15, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r192, r160, r168
	mma_16x16x16f16 r118, r192, r164, r118
	mma_16x16x16f16 r168, r194, r162, r168
	mma_16x16x16f16 r118, r194, r166, r118
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r192, r16, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r196, r160, r148
	mma_16x16x16f16 r114, r196, r164, r114
	mma_16x16x16f16 r148, r198, r162, r148
	mma_16x16x16f16 r114, r198, r166, r114
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r196, r17, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r188, r160, r142
	mma_16x16x16f16 r110, r188, r164, r110
	mma_16x16x16f16 r142, r190, r162, r142
	mma_16x16x16f16 r110, r190, r166, r110
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r188, r18, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r192, r160, r138
	mma_16x16x16f16 r106, r192, r164, r106
	mma_16x16x16f16 r138, r194, r162, r138
	mma_16x16x16f16 r106, r194, r166, r106
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r192, r19, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r196, r160, r134
	mma_16x16x16f16 r102, r196, r164, r102
	mma_16x16x16f16 r134, r198, r162, r134
	mma_16x16x16f16 r102, r198, r166, r102
	.loc	2 312 41                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:312:41
	lds_b128 r196, r20, 0x0
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r188, r160, r130
	mma_16x16x16f16 r98, r188, r164, r98
	mma_16x16x16f16 r130, r190, r162, r130
	mma_16x16x16f16 r98, r190, r166, r98
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r14
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r160, r126
	mma_16x16x16f16 r94, r192, r164, r94
	mma_16x16x16f16 r126, r194, r162, r126
	mma_16x16x16f16 r94, r194, r166, r94
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r15
	.loc	2 318 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r196, r160, r122
	mma_16x16x16f16 r90, r196, r164, r90
	mma_16x16x16f16 r122, r198, r162, r122
	mma_16x16x16f16 r90, r198, r166, r90
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r16
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r188, r160, r86
	mma_16x16x16f16 r54, r188, r164, r54
	mma_16x16x16f16 r86, r190, r162, r86
	mma_16x16x16f16 r54, r190, r166, r54
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r17
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r192, r160, r82
	mma_16x16x16f16 r50, r192, r164, r50
	mma_16x16x16f16 r82, r194, r162, r82
	mma_16x16x16f16 r50, r194, r166, r50
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r18
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r196, r160, r78
	mma_16x16x16f16 r46, r196, r164, r46
	mma_16x16x16f16 r78, r198, r162, r78
	mma_16x16x16f16 r46, r198, r166, r46
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r19
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r188, r160, r74
	mma_16x16x16f16 r42, r188, r164, r42
	mma_16x16x16f16 r74, r190, r162, r74
	mma_16x16x16f16 r42, r190, r166, r42
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r20
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r192, r160, r70
	mma_16x16x16f16 r38, r192, r164, r38
	mma_16x16x16f16 r70, r194, r162, r70
	mma_16x16x16f16 r38, r194, r166, r38
	.loc	2 326 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:326:43
	lds_b128 r192, r25, 0x0
	.loc	2 332 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:332:58
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
.Ltmp321:
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
.Ltmp322:
	.loc	2 343 11                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:343:11
	snop 0
	bra_smsks LBB3_55
; %bb.37:                               ; %if.then527
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 344 13                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:344:13
	and_xmsk s44, s26
	snop 0
	bra_xmskz LBB3_54
; %bb.38:                               ; %for.cond533.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:13
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_46
; %bb.39:                               ; %for.body536.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 347 137 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
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
	bra_xmskz LBB3_47
	bra LBB3_53
LBB3_40:                                ; %if.then165.us
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r184, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r185, r24, r25
	snop 1
	ldg_b128 r184, r184, 0x80
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s6
	snop 0
	bra_xmskz LBB3_16
LBB3_41:                                ; %if.then165.us.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r176, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r177, r24, r25
	snop 1
	ldg_b128 r176, r176, 0xc0
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s4
	snop 0
	bra_xmskz LBB3_17
LBB3_42:                                ; %if.then165.us.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r180, 0x41080, r25
	addc_co_u32 r181, r147, 0
	snop 1
	ldg_b128 r180, r180, 0x0
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s4
	snop 0
	bra_xmsks LBB3_18
	bra LBB3_19
LBB3_43:                                ; %if.then165.us.11759
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r184, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r185, r24, r25
	snop 1
	ldg_b128 r184, r184, 0x80
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB3_29
LBB3_44:                                ; %if.then165.us.1.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r176, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r177, r24, r25
	snop 1
	ldg_b128 r176, r176, 0xc0
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB3_30
LBB3_45:                                ; %if.then165.us.2.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 288 27                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:288:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r180, 0x41080, r25
	addc_co_u32 r181, r147, 0
	snop 1
	ldg_b128 r180, r180, 0x0
	sor_b64 xmsk, xmsk, s44
	.loc	2 283 133                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:283:133
	and_xmsk s44, s40
	snop 0
	bra_xmsks LBB3_31
	bra LBB3_32
LBB3_46:                                ;   in Loop: Header=BB3_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB3_47:                                ; %for.body536.us.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s6
	snop 0
	bra_xmsks LBB3_74
; %bb.48:                               ; %for.inc638.us
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s6
	snop 0
	bra_xmsks LBB3_75
LBB3_49:                                ; %for.inc638.us.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 137                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s4
	snop 0
	bra_xmsks LBB3_76
LBB3_50:                                ; %for.inc638.us.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 137                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s4
	snop 0
	bra_xmskz LBB3_52
LBB3_51:                                ; %if.then568.us.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r164, 0x41140, r25
	addc_co_u32 r165, r147, 0
	snop 1
	ldg_b128 r164, r164, 0x0
LBB3_52:                                ; %Flow991
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 29 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:29
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
LBB3_53:                                ; %Flow993
                                        ;   in Loop: Header=BB3_10 Depth=1
	shl_b64 r152, 0, r190
	shl_b64 r154, 0, r188
	shl_b64 r156, 0, r198
	shl_b64 r158, 0, r196
	shl_b64 r160, 0, r194
	shl_b64 r162, 0, r192
	shl_b64 r164, 0, r202
	shl_b64 r166, 0, r200
LBB3_54:                                ; %Flow994
                                        ;   in Loop: Header=BB3_10 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB3_55:                                ; %if.end642
                                        ;   in Loop: Header=BB3_10 Depth=1
	shl_b64 r188, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	bra_cmsks LBB3_57
; %bb.56:                               ; %for.body646.us.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 367 21 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:367:21
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
LBB3_57:                                ; %for.cond.cleanup645
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 371 364                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:371:364
	add_i32 r25, 0x1000, r3
	.loc	2 343 11                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:343:11
	sandn_b64 cmsk, xmsk, s42
	.loc	2 371 364                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:371:364
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
	.loc	2 343 11                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:343:11
	bra_cmsks LBB3_70
; %bb.58:                               ; %if.then527.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 344 13                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:344:13
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB3_69
; %bb.59:                               ; %for.cond533.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:13
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_61
; %bb.60:                               ; %for.body536.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 347 137 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
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
	bra_xmskz LBB3_62
	bra LBB3_68
LBB3_61:                                ;   in Loop: Header=BB3_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB3_62:                                ; %for.body536.us.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB3_77
; %bb.63:                               ; %for.inc638.us.11872
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB3_78
LBB3_64:                                ; %for.inc638.us.1.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 137                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s40
	snop 0
	bra_xmsks LBB3_79
LBB3_65:                                ; %for.inc638.us.2.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 137                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB3_67
LBB3_66:                                ; %if.then568.us.3.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r164, 0x41140, r25
	addc_co_u32 r165, r147, 0
	snop 1
	ldg_b128 r164, r164, 0x0
LBB3_67:                                ; %Flow987
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 29 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:29
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
LBB3_68:                                ; %Flow989
                                        ;   in Loop: Header=BB3_10 Depth=1
	shl_b64 r152, 0, r190
	shl_b64 r154, 0, r188
	shl_b64 r156, 0, r198
	shl_b64 r158, 0, r196
	shl_b64 r160, 0, r194
	shl_b64 r162, 0, r192
	shl_b64 r164, 0, r202
	shl_b64 r166, 0, r200
LBB3_69:                                ; %Flow990
                                        ;   in Loop: Header=BB3_10 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB3_70:                                ; %if.end642.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	shl_b64 r188, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	bra_cmsks LBB3_72
; %bb.71:                               ; %for.body646.us.preheader.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 367 21 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:367:21
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
LBB3_72:                                ; %for.cond.cleanup645.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 371 364                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:371:364
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
.Ltmp323:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp324:
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r188, r5, 0x0
	lds_b128 r192, r6, 0x0
	lds_b128 r196, r7, 0x0
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	add_i32 r25, 0x4000, r5
	.loc	2 405 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:405:9
	sandn_b64 cmsk, xmsk, s42
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r188, r184, r168
	mma_16x16x16f16 r118, r188, r180, r118
	mma_16x16x16f16 r168, r190, r186, r168
	mma_16x16x16f16 r118, r190, r182, r118
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r188, r8, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r192, r184, r148
	mma_16x16x16f16 r114, r192, r180, r114
	mma_16x16x16f16 r148, r194, r186, r148
	mma_16x16x16f16 r114, r194, r182, r114
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r192, r9, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r196, r184, r142
	mma_16x16x16f16 r110, r196, r180, r110
	mma_16x16x16f16 r142, r198, r186, r142
	mma_16x16x16f16 r110, r198, r182, r110
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r196, r10, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r188, r184, r138
	mma_16x16x16f16 r106, r188, r180, r106
	mma_16x16x16f16 r138, r190, r186, r138
	mma_16x16x16f16 r106, r190, r182, r106
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r188, r11, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r184, r134
	mma_16x16x16f16 r102, r192, r180, r102
	mma_16x16x16f16 r134, r194, r186, r134
	mma_16x16x16f16 r102, r194, r182, r102
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r192, r12, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r196, r184, r130
	mma_16x16x16f16 r98, r196, r180, r98
	mma_16x16x16f16 r130, r198, r186, r130
	mma_16x16x16f16 r98, r198, r182, r98
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r6
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r184, r126
	mma_16x16x16f16 r94, r188, r180, r94
	mma_16x16x16f16 r126, r190, r186, r126
	mma_16x16x16f16 r94, r190, r182, r94
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r7
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r192, r184, r122
	mma_16x16x16f16 r90, r192, r180, r90
	mma_16x16x16f16 r122, r194, r186, r122
	mma_16x16x16f16 r90, r194, r182, r90
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r8
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r196, r184, r86
	mma_16x16x16f16 r54, r196, r180, r54
	mma_16x16x16f16 r86, r198, r186, r86
	mma_16x16x16f16 r54, r198, r182, r54
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r9
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r188, r184, r82
	mma_16x16x16f16 r50, r188, r180, r50
	mma_16x16x16f16 r82, r190, r186, r82
	mma_16x16x16f16 r50, r190, r182, r50
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r10
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r192, r184, r78
	mma_16x16x16f16 r46, r192, r180, r46
	mma_16x16x16f16 r78, r194, r186, r78
	mma_16x16x16f16 r46, r194, r182, r46
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r11
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r196, r184, r74
	mma_16x16x16f16 r42, r196, r180, r42
	mma_16x16x16f16 r74, r198, r186, r74
	mma_16x16x16f16 r42, r198, r182, r42
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r12
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r188, r184, r70
	mma_16x16x16f16 r38, r188, r180, r38
	mma_16x16x16f16 r70, r190, r186, r70
	mma_16x16x16f16 r38, r190, r182, r38
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r13
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r192, r184, r66
	mma_16x16x16f16 r34, r192, r180, r34
	mma_16x16x16f16 r66, r194, r186, r66
	mma_16x16x16f16 r34, r194, r182, r34
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r192, r13, 0x0
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r196, r184, r62
	mma_16x16x16f16 r30, r196, r180, r30
	mma_16x16x16f16 r62, r198, r186, r62
	mma_16x16x16f16 r30, r198, r182, r30
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r196, r14, 0x0
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r188, r184, r58
	mma_16x16x16f16 r26, r188, r180, r26
	mma_16x16x16f16 r58, r190, r186, r58
	mma_16x16x16f16 r26, r190, r182, r26
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r188, r15, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r192, r176, r168
	mma_16x16x16f16 r118, r192, r172, r118
	mma_16x16x16f16 r168, r194, r178, r168
	mma_16x16x16f16 r118, r194, r174, r118
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r192, r16, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r196, r176, r148
	mma_16x16x16f16 r114, r196, r172, r114
	mma_16x16x16f16 r148, r198, r178, r148
	mma_16x16x16f16 r114, r198, r174, r114
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r196, r17, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r188, r176, r142
	mma_16x16x16f16 r110, r188, r172, r110
	mma_16x16x16f16 r142, r190, r178, r142
	mma_16x16x16f16 r110, r190, r174, r110
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r188, r18, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r192, r176, r138
	mma_16x16x16f16 r106, r192, r172, r106
	mma_16x16x16f16 r138, r194, r178, r138
	mma_16x16x16f16 r106, r194, r174, r106
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r192, r19, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r196, r176, r134
	mma_16x16x16f16 r102, r196, r172, r102
	mma_16x16x16f16 r134, r198, r178, r134
	mma_16x16x16f16 r102, r198, r174, r102
	.loc	2 377 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:377:43
	lds_b128 r196, r20, 0x0
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r188, r176, r130
	mma_16x16x16f16 r98, r188, r172, r98
	mma_16x16x16f16 r130, r190, r178, r130
	mma_16x16x16f16 r98, r190, r174, r98
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r14
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r176, r126
	mma_16x16x16f16 r94, r192, r172, r94
	mma_16x16x16f16 r126, r194, r178, r126
	mma_16x16x16f16 r94, r194, r174, r94
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r15
	.loc	2 383 58                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:383:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r196, r176, r122
	mma_16x16x16f16 r90, r196, r172, r90
	mma_16x16x16f16 r122, r198, r178, r122
	mma_16x16x16f16 r90, r198, r174, r90
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r16
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r188, r176, r86
	mma_16x16x16f16 r54, r188, r172, r54
	mma_16x16x16f16 r86, r190, r178, r86
	mma_16x16x16f16 r54, r190, r174, r54
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r17
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r192, r176, r82
	mma_16x16x16f16 r50, r192, r172, r50
	mma_16x16x16f16 r82, r194, r178, r82
	mma_16x16x16f16 r50, r194, r174, r50
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r18
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r196, r176, r78
	mma_16x16x16f16 r46, r196, r172, r46
	mma_16x16x16f16 r78, r198, r178, r78
	mma_16x16x16f16 r46, r198, r174, r46
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r19
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r188, r176, r74
	mma_16x16x16f16 r42, r188, r172, r42
	mma_16x16x16f16 r74, r190, r178, r74
	mma_16x16x16f16 r42, r190, r174, r42
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r20
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r192, r176, r70
	mma_16x16x16f16 r38, r192, r172, r38
	mma_16x16x16f16 r70, r194, r178, r70
	mma_16x16x16f16 r38, r194, r174, r38
	.loc	2 391 43                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:391:43
	lds_b128 r192, r25, 0x0
	.loc	2 397 59                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:397:59
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
	.loc	2 405 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:405:9
	bra_cmsks LBB3_9
; %bb.73:                               ; %if.then928
                                        ;   in Loop: Header=BB3_10 Depth=1
.Ltmp325:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_9
.Ltmp326:
LBB3_74:                                ; %if.then568.us
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r152, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r153, r24, r25
	snop 1
	ldg_b128 r152, r152, 0x100
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s6
	snop 0
	bra_xmskz LBB3_49
LBB3_75:                                ; %if.then568.us.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r160, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r161, r24, r25
	snop 1
	ldg_b128 r160, r160, 0x140
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s4
	snop 0
	bra_xmskz LBB3_50
LBB3_76:                                ; %if.then568.us.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r156, 0x41100, r25
	addc_co_u32 r157, r147, 0
	snop 1
	ldg_b128 r156, r156, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s4
	snop 0
	bra_xmsks LBB3_51
	bra LBB3_52
LBB3_77:                                ; %if.then568.us.11871
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r152, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r153, r24, r25
	snop 1
	ldg_b128 r152, r152, 0x100
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s38
	snop 0
	bra_xmskz LBB3_64
LBB3_78:                                ; %if.then568.us.1.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r160, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r161, r24, r25
	snop 1
	ldg_b128 r160, r160, 0x140
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB3_65
LBB3_79:                                ; %if.then568.us.2.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 352 29                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:352:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r156, 0x41100, r25
	addc_co_u32 r157, r147, 0
	snop 1
	ldg_b128 r156, r156, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 347 137                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:347:137
	and_xmsk s46, s40
	snop 0
	bra_xmsks LBB3_66
	bra LBB3_67
LBB3_80:                                ; %for.cond933.preheader
	.loc	2 0 137 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:137
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
	.loc	2 411 92 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:411:92
	sashr_i32 s25, 31, s24
	mov_b32 r4, 0
	.loc	2 411 9 is_stmt 0               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:411:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_84
; %bb.81:                               ; %if.then951
	.loc	2 0 9                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sub_u32 r3, r5, s0
	.loc	2 413 15 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:413:15
	cmp_ge_i32 s14, r5, s0
	cmp_gt_i32 s22, 0x8e0, r3
	mov_b32 r4, 0
	.loc	2 413 148 is_stmt 0             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:413:148
	snop 2
	sand_b64 s22, s14, s22
	and_xmsk s14, s22
	snop 0
	bra_xmskz LBB3_83
; %bb.82:                               ; %if.then979
	.loc	2 0 148                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:148
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r3, s13
	addc_co_u32 r9, r3, r9
	.loc	2 414 21 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:414:21
	snop 1
	ldg_b32 r4, r8, 0x0
LBB3_83:                                ; %Flow986
	.loc	2 0 21 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s14
LBB3_84:                                ; %for.inc1004
	sor_b64 xmsk, xmsk, s2
	.loc	2 411 63 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:411:63
	or_b32 r146, r146, 16
	.loc	2 411 92 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:411:92
	cmp_lt_i64 s14, r146, s24
	.loc	2 0 0                           ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:0
	mov_b32 r3, 0
	.loc	2 411 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:411:9
	snop 2
	and_xmsk s2, s14
	snop 0
	bra_xmskz LBB3_88
; %bb.85:                               ; %if.then951.1
	.loc	2 413 102 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:413:102
	add_u32 r3, r5, 16
	.loc	2 413 15 is_stmt 0              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:413:15
	cmp_ge_i32 s14, r3, s0
	sub_u32 r3, r3, s0
	cmp_gt_i32 s0, 0x8e0, r3
	mov_b32 r3, 0
	.loc	2 413 148                       ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:413:148
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_87
; %bb.86:                               ; %if.then979.1
	.loc	2 0 148                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:148
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r3, s13
	addc_co_u32 r7, r3, r7
	.loc	2 414 21 is_stmt 1              ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:414:21
	snop 1
	ldg_b32 r3, r6, 0x40
LBB3_87:                                ; %Flow
	.loc	2 0 21 is_stmt 0                ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s0
LBB3_88:                                ; %for.inc1004.1
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
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_153
; %bb.89:                               ; %if.end1081
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_154
LBB3_90:                                ; %for.inc1120
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_155
LBB3_91:                                ; %if.end1081.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_156
LBB3_92:                                ; %for.inc1120.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_157
LBB3_93:                                ; %if.end1081.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_158
LBB3_94:                                ; %for.inc1120.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_159
LBB3_95:                                ; %if.end1081.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_160
LBB3_96:                                ; %for.inc1120.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_161
LBB3_97:                                ; %if.end1081.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_162
LBB3_98:                                ; %for.inc1120.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_163
LBB3_99:                                ; %if.end1081.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_164
LBB3_100:                               ; %for.inc1120.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_165
LBB3_101:                               ; %if.end1081.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_166
LBB3_102:                               ; %for.inc1120.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_167
LBB3_103:                               ; %if.end1081.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_168
LBB3_104:                               ; %for.inc1120.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_169
LBB3_105:                               ; %if.end1081.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_170
LBB3_106:                               ; %for.inc1120.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_171
LBB3_107:                               ; %if.end1081.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_172
LBB3_108:                               ; %for.inc1120.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_173
LBB3_109:                               ; %if.end1081.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_174
LBB3_110:                               ; %for.inc1120.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_175
LBB3_111:                               ; %if.end1081.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_176
LBB3_112:                               ; %for.inc1120.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_177
LBB3_113:                               ; %if.end1081.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_178
LBB3_114:                               ; %for.inc1120.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_179
LBB3_115:                               ; %if.end1081.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_180
LBB3_116:                               ; %for.inc1120.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_181
LBB3_117:                               ; %if.end1081.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_182
LBB3_118:                               ; %for.inc1120.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 423 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_183
LBB3_119:                               ; %if.end1081.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_184
LBB3_120:                               ; %for.inc1120.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_185
LBB3_121:                               ; %if.end1201
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_186
LBB3_122:                               ; %for.inc1241
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_187
LBB3_123:                               ; %if.end1201.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_188
LBB3_124:                               ; %for.inc1241.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_189
LBB3_125:                               ; %if.end1201.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_190
LBB3_126:                               ; %for.inc1241.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_191
LBB3_127:                               ; %if.end1201.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_192
LBB3_128:                               ; %for.inc1241.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_193
LBB3_129:                               ; %if.end1201.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_194
LBB3_130:                               ; %for.inc1241.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_195
LBB3_131:                               ; %if.end1201.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_196
LBB3_132:                               ; %for.inc1241.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_197
LBB3_133:                               ; %if.end1201.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_198
LBB3_134:                               ; %for.inc1241.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB3_199
LBB3_135:                               ; %if.end1201.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_200
LBB3_136:                               ; %for.inc1241.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_201
LBB3_137:                               ; %if.end1201.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_202
LBB3_138:                               ; %for.inc1241.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_203
LBB3_139:                               ; %if.end1201.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_204
LBB3_140:                               ; %for.inc1241.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_205
LBB3_141:                               ; %if.end1201.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_206
LBB3_142:                               ; %for.inc1241.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_207
LBB3_143:                               ; %if.end1201.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_208
LBB3_144:                               ; %for.inc1241.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_209
LBB3_145:                               ; %if.end1201.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_210
LBB3_146:                               ; %for.inc1241.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_211
LBB3_147:                               ; %if.end1201.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_212
LBB3_148:                               ; %for.inc1241.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_213
LBB3_149:                               ; %if.end1201.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_214
LBB3_150:                               ; %for.inc1241.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 451 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_215
LBB3_151:                               ; %if.end1201.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_216
LBB3_152:                               ; %for.inc1241.15
	.loc	2 477 1                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:477:1
	snop 1
	endk
LBB3_153:                               ; %if.then1024
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r168, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r169, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r170, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r171, r4
.Ltmp327:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp328:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp331:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_90
LBB3_154:                               ; %if.then1089
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	mad_i32 r8, r0, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_91
LBB3_155:                               ; %if.then1024.1
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r148, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r149, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r150, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r151, r4
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp333:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp336:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_92
LBB3_156:                               ; %if.then1089.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_93
LBB3_157:                               ; %if.then1024.2
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r142, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r143, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r144, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r145, r4
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp338:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp340:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp341:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_94
LBB3_158:                               ; %if.then1089.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_95
LBB3_159:                               ; %if.then1024.3
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r138, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r139, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r140, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r141, r4
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp343:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp345:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp346:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_96
LBB3_160:                               ; %if.then1089.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_97
LBB3_161:                               ; %if.then1024.4
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r134, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r135, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r136, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r137, r4
.Ltmp347:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp348:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp350:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp351:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_98
LBB3_162:                               ; %if.then1089.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_99
LBB3_163:                               ; %if.then1024.5
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r130, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r131, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r132, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r133, r4
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp353:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp355:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp356:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_100
LBB3_164:                               ; %if.then1089.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_101
LBB3_165:                               ; %if.then1024.6
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r126, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r127, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r128, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r129, r4
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp358:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp361:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_102
LBB3_166:                               ; %if.then1089.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_103
LBB3_167:                               ; %if.then1024.7
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r122, r4
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r123, r4
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r124, r4
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r125, r4
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp363:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp366:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_104
LBB3_168:                               ; %if.then1089.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_105
LBB3_169:                               ; %if.then1024.8
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r118, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r119, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r120, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r121, r3
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp368:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp371:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_106
LBB3_170:                               ; %if.then1089.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_107
LBB3_171:                               ; %if.then1024.9
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r114, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r115, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r116, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r117, r3
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp373:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp376:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_108
LBB3_172:                               ; %if.then1089.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_109
LBB3_173:                               ; %if.then1024.10
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r110, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r111, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r112, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r113, r3
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp378:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp381:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_110
LBB3_174:                               ; %if.then1089.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_111
LBB3_175:                               ; %if.then1024.11
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r106, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r107, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r108, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r109, r3
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp383:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp386:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_112
LBB3_176:                               ; %if.then1089.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_113
LBB3_177:                               ; %if.then1024.12
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r102, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r103, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r104, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r105, r3
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp388:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp391:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_114
LBB3_178:                               ; %if.then1089.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_115
LBB3_179:                               ; %if.then1024.13
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r98, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r99, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r100, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r101, r3
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp393:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp396:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_116
LBB3_180:                               ; %if.then1089.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_117
LBB3_181:                               ; %if.then1024.14
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r94, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r95, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r96, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r97, r3
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp398:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp401:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_118
LBB3_182:                               ; %if.then1089.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 423 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:423:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_119
LBB3_183:                               ; %if.then1024.15
	.loc	2 428 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:428:22
	arrive gvmcnt(0)
	mul_f32 r1, r90, r3
	.loc	2 429 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:429:22
	mul_f32 r2, r91, r3
	.loc	2 430 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:430:22
	mul_f32 r5, r92, r3
	.loc	2 431 22                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:431:22
	mul_f32 r8, r93, r3
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp403:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp406:
	.loc	2 439 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:439:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_120
LBB3_184:                               ; %if.then1089.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8070, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 443 232 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:443:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_121
LBB3_185:                               ; %if.then1140
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r86, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r87, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r88, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r8, r89, r4
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp408:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp410:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp411:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_122
LBB3_186:                               ; %if.then1209
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	mad_i32 r8, r0, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_123
LBB3_187:                               ; %if.then1140.1
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r82, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r83, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r84, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r8, r85, r4
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp413:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp416:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_124
LBB3_188:                               ; %if.then1209.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r8, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_125
LBB3_189:                               ; %if.then1140.2
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r78, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r79, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r80, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r8, r81, r4
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp418:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp420:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp421:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_126
LBB3_190:                               ; %if.then1209.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r8, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_127
LBB3_191:                               ; %if.then1140.3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r74, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r75, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r76, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r8, r77, r4
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp423:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp425:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp426:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_128
LBB3_192:                               ; %if.then1209.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r8, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_129
LBB3_193:                               ; %if.then1140.4
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r70, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r71, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r72, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r8, r73, r4
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp428:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp431:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_130
LBB3_194:                               ; %if.then1209.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r8, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_131
LBB3_195:                               ; %if.then1140.5
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r66, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r67, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r68, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r8, r69, r4
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp433:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp436:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_132
LBB3_196:                               ; %if.then1209.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_133
LBB3_197:                               ; %if.then1140.6
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r62, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r63, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r64, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r8, r65, r4
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp438:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp441:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_134
LBB3_198:                               ; %if.then1209.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_135
LBB3_199:                               ; %if.then1140.7
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	arrive gvmcnt(0)
	mul_f32 r1, r58, r4
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r59, r4
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r60, r4
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r4, r61, r4
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp443:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp446:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_136
LBB3_200:                               ; %if.then1209.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	arrive gvmcnt(0)
	mad_i32 r4, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r4, 0x100, r6 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_137
LBB3_201:                               ; %if.then1140.8
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r56, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r54, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r55, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r6, r57, r3
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp448:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp451:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_138
LBB3_202:                               ; %if.then1209.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_139
LBB3_203:                               ; %if.then1140.9
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r52, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r50, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r51, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r6, r53, r3
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp453:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp455:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp456:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_140
LBB3_204:                               ; %if.then1209.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_141
LBB3_205:                               ; %if.then1140.10
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r48, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r46, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r47, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r6, r49, r3
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp458:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp461:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_142
LBB3_206:                               ; %if.then1209.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_143
LBB3_207:                               ; %if.then1140.11
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r44, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r42, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r43, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r6, r45, r3
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp463:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp466:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_144
LBB3_208:                               ; %if.then1209.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_145
LBB3_209:                               ; %if.then1140.12
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r40, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r38, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r39, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r6, r41, r3
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp468:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp471:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_146
LBB3_210:                               ; %if.then1209.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_147
LBB3_211:                               ; %if.then1140.13
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r36, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r34, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r35, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r6, r37, r3
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp473:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp475:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp476:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_148
LBB3_212:                               ; %if.then1209.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_149
LBB3_213:                               ; %if.then1140.14
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r32, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r30, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r31, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r6, r33, r3
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp478:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp481:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_150
LBB3_214:                               ; %if.then1209.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 451 9                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:451:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_151
LBB3_215:                               ; %if.then1140.15
	.loc	2 458 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:458:24
	mul_f32 r5, r28, r3
	.loc	2 456 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:456:24
	mul_f32 r1, r26, r3
	.loc	2 457 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:457:24
	mul_f32 r2, r27, r3
	.loc	2 459 24                        ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:459:24
	mul_f32 r3, r29, r3
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp483:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp485:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp486:
	.loc	2 467 9 is_stmt 1               ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:467:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_152
LBB3_216:                               ; %if.then1209.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:0:9
	add_u32 r0, 0x8070, r0
	mad_i32 r0, r0, 2, s10
	.loc	2 471 240 is_stmt 1             ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:471:240
	snop 1
	stg_b64 r0, 0x100, r4 devc
	.loc	2 477 1                         ; /tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp:477:1
	snop 2
	endk
.Ltmp487:
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
	.byte	64                              ; DW_AT_call_line
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
	.byte	97                              ; DW_AT_call_line
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
	.byte	130                             ; DW_AT_call_line
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
	.byte	164                             ; DW_AT_call_line
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
	.byte	195                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	194                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	193                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	192                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x133:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	218                             ; DW_AT_call_line
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
	.byte	219                             ; DW_AT_call_line
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
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x1af:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	309                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c4:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1d9:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	340                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ee:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x203:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	374                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x218:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x22d:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	406                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x242:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x257:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	432                             ; DW_AT_call_line
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
	.short	433                             ; DW_AT_call_line
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
	.short	460                             ; DW_AT_call_line
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
	.short	461                             ; DW_AT_call_line
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
	.asciz	"/tmp/v084_up_logits_ldpad128_codegen/v084_up_logits_ldpad128_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=120
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=141
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=151
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=165
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=171
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=187
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=205
.Linfo_string9:
	.asciz	"kernel_kernel"                 ; string offset=223
.Linfo_string10:
	.asciz	"kernel_kernel_1"               ; string offset=237
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
    .mtreg_count:    222
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    52
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
    .mtreg_count:    204
    .name:           kernel_kernel_1
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
