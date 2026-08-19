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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s12, s5
.Ltmp4:
	.loc	2 18 19 prologue_end            ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:18:19
	smov_b32 s13, 0
	sshl_b64 s2, 2, s12
	ldu_b64 s6, s0, 0x30
	ldu_b128 s24, s0, 0x20
	and_b32 r0, 0x3ff, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s8, s2, 0x0
	shl_b32 r1, 10, r0
	shl_b32 r3, 11, r0
	and_b32 r2, 0xf0000, r1
	and_b32 r26, 0x7800, r3
	shr_b32 r4, 1, r0
	and_b32 r27, r4, 24
	arrive slcnt(0)
	sashr_i32 s9, 31, s8
	.loc	2 19 20                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:19:20
	sshl_b64 s0, 2, s8
	sadd_co_u32 s2, s22, s0
	saddc_co_u32 s3, s23, s1
	.loc	2 20 22                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:20:22
	sadd_co_u32 s0, s20, s0
	saddc_co_u32 s1, s21, s1
	sshl_b32 s5, 18, s5
	add_u32 r2, r2, s5
	.loc	2 33 157                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:33:157
	or_b32 r28, r2, r26
	or_b32 r29, 0x8000, r28
	.loc	2 33 216 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:33:216
	or_b32 r2, r28, r27
	or_b32 r150, r29, r27
	.loc	2 33 59                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:33:59
	shl_b32 r2, 1, r2
	shl_b32 r3, 1, r150
	.loc	2 19 20 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:19:20
	ldu_b32 s2, s2, 0x0
	.loc	2 33 41                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:33:41
	ldg_b128 r152, s24, r2, 0x0
	ldg_b128 r156, s24, r3, 0x0
	.loc	2 33 59 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:33:59
	or_b32 r3, r2, 64
	or_b32 r2, 0x10040, r2
	.loc	2 20 22 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:20:22
	ldu_b32 s3, s0, 0x0
	.loc	2 33 41                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:33:41
	ldg_b128 r160, s24, r3, 0x0
	ldg_b128 r164, s24, r2, 0x0
	sshl_b32 s13, 24, s8
	sshl_b32 s28, 18, s4
	sadd_co_u32 s0, 0x80, s24
	saddc_co_u32 s1, s25, 0
	sshl_b32 s8, 7, s12
	arrive slcnt(0)
	ssub_co_i32 s2, s2, s8
	sadd_co_i32 s8, s2, s3
	sadd_co_u32 s18, 0x40000, s16
	shl_b32 r2, 8, r0
	saddc_co_u32 s19, s17, 0
	and_b32 r30, 0x3f800, r2
	shl_b32 r2, 3, r0
	and_b32 r18, r2, 32
	sadd_co_u32 s22, 0x40000, s26
	and_b32 r31, r2, 56
	and_b32 r3, 0x1fc0, r2
	and_b32 r2, r2, 16
	saddc_co_u32 s23, s27, 0
	add_u32 r2, r2, r0
	sadd_co_u32 s34, 0x40080, s16
	and_b32 r6, r2, 16
	mul_u24 r2, r0, 9
	saddc_co_u32 s35, s17, 0
	and_b32 r7, r2, 8
	shr_b32 r2, 5, r0
	add_u32 r5, r18, r0
	sadd_co_u32 s36, 0x40080, s26
	add_shl_u32 r2, r2, r4, 4
	saddc_co_u32 s37, s27, 0
	and_b32 r10, r2, 16
	shr_b32 r2, 4, r0
	and_b32 r5, r5, 32
	sadd_co_u32 s2, 0x100, s24
	add_shl_u32 r11, r2, r0, 3
	or_b32 r2, r5, r7
	saddc_co_u32 s3, s25, 0
	or3_b32 r2, r2, r3, r6
	or_b32 r3, r3, r5
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:35:3
	sadd_co_i32 s13, s13, s28
	and_b32 r8, r0, 15
	or3_b32 r176, s13, r30, r31
	and_b32 r30, r0, 48
	and_b32 r32, 0x10000, r1
	shl_b32 r1, 6, r0
	and_b32 r9, 0x1e0, r4
	and_or_b32 r4, r4, 32, r8
	or3_b32 r3, r3, r6, r7
	mov_b32 r5, 0x1000
	and_b32 r17, 0x3c0, r1
	shl_b32 r12, 1, r2
	shl_add_u32 r13, 1, r3, r5
	shl_or_b32 r28, 1, r28, r30
	cmp_lt_i32 s38, r4, s8
	or_b32 r4, r4, 16
	or_b32 r8, r9, r8
	and_or_b32 r25, r11, 8, r10
	sadd_co_i32 s9, 0x2000, 0
	cmp_lt_i32 s10, r8, s8
	cmp_lt_i32 s40, r4, s8
	add_u32 r4, s9, r12
	add_u32 r5, s9, r13
	sadd_co_i32 s9, 0x4000, 0
	or_b32 r8, r8, 16
	sadd_co_i32 s42, 0x6000, 0
	or_b32 r20, 0x400, r17
	or_b32 r21, r25, r18
	or_b32 r22, 0x800, r17
	or_b32 r23, 0xc00, r17
	or_b32 r24, 0x1000, r17
	or_b32 r33, 0x1400, r17
	or_b32 r34, 0x1800, r17
	or_b32 r35, 0x1c00, r17
	xor_b32 r36, r18, 32
	add_co_u32 r28, r28, s24
	mov_b32 r31, s25
	or_b32 r11, r21, r20
	or_b32 r14, r21, r24
	or_b32 r15, r21, r33
	or_b32 r16, r21, r34
	or_b32 r19, r25, r17
	or_b32 r17, r21, r35
	cmp_lt_i32 s30, r9, s8
	add_u32 r2, 0, r12
	add_u32 r3, 0, r13
	add_u32 r6, s9, r12
	add_u32 r7, s9, r13
	cmp_lt_i32 s8, r8, s8
	add_u32 r8, s42, r12
	or_b32 r12, r21, r22
	add_u32 r9, s42, r13
	or_b32 r13, r21, r23
	or3_b32 r21, r25, r23, r36
	or3_b32 r23, r25, r33, r36
	addc_co_u32 r33, 0, r31
	add_co_u32 r178, 0xc0, r28
	addc_co_u32 r179, r33, 0
	shl_or_b32 r28, 1, r29, r30
	add_co_u32 r28, r28, s24
	addc_co_u32 r29, 0, r31
	or3_b32 r26, s5, r32, r26
	add_co_u32 r180, 0x88, r28
	or_b32 r28, 0x8000, r26
	addc_co_u32 r181, r29, 0
	shl_or_b32 r29, 1, r28, r30
	add_co_u32 r29, r29, s24
	addc_co_u32 r32, 0, r31
	add_co_u32 r182, 0x108, r29
	addc_co_u32 r183, r32, 0
	shl_or_b32 r26, 1, r26, r30
	add_co_u32 r26, r26, s24
	cmp_gt_u32 s14, 0x80, r0
	cmp_lt_u32 s20, 0x7f, r0
	or_b32 r184, r27, r28
	addc_co_u32 r27, 0, r31
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:0
	shl_b64 r30, 0, 0
	shl_b64 r190, 0, 0
	or_b32 r10, r19, r18
	or_b32 r18, r19, r36
	or3_b32 r19, r25, r20, r36
	or3_b32 r20, r25, r22, r36
	or3_b32 r22, r25, r24, r36
	or3_b32 r24, r25, r34, r36
	or3_b32 r25, r25, r35, r36
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:35:3
	add_co_u32 r186, 0xc0, r26
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:0
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
	shl_b64 r142, 0, r30
	shl_b64 r168, 0, r30
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
	shl_b64 r146, 0, r30
	shl_b64 r172, 0, r30
	shr_b32 r1, 2, r0
	mov_b32 r151, 0
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
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:35:3
	mov_b32 r177, 0
	addc_co_u32 r187, r27, 0
	smov_b64 s24, 0
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
	shl_b64 r188, 0, r190
	shl_b64 r194, 0, r190
	shl_b64 r192, 0, r190
	shl_b64 r198, 0, r190
	shl_b64 r196, 0, r190
	shl_b64 r202, 0, r190
	shl_b64 r200, 0, r190
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
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %for.inc1177
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 35 31                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:35:31
	add_co_u32 r178, 0x100, r178
	addc_co_u32 r179, r179, 0
	add_co_u32 r180, 0x100, r180
	addc_co_u32 r181, r181, 0
	sadd_co_u32 s24, 0x80, s24
	add_co_u32 r182, 0x100, r182
	saddc_co_u32 s25, s25, 0
	addc_co_u32 r183, r183, 0
	add_co_u32 r186, 0x100, r186
	scmp_eq_u64 0x800, s24
	addc_co_u32 r187, r187, 0
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:35:3
	bra_smsks LBB2_76
LBB2_2:                                 ; %for.cond64.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 38 362 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:38:362
	add_co_u32 r26, r176, s24
	add_u32 r27, 0x10000, r26
	mad_i32 r28, r26, 2, s16
	mad_i32 r204, r27, 2, s16
	.loc	2 38 345 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:38:345
	snop 0
	ldg_b128 r206, r28, 0x0
	ldg_b128 r210, r204, 0x0
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r206
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r210
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_6
; %bb.3:                                ; %for.inc174
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_9
LBB2_4:                                 ; %for.inc174.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_12
LBB2_5:                                 ; %for.inc174.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_15
	bra LBB2_18
	.p2align	5
LBB2_6:                                 ; %land.lhs.true
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:11
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:43:47
	ldg_b128 r200, r186, -0x40
LBB2_8:                                 ; %Flow317
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_4
LBB2_9:                                 ; %land.lhs.true.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:11
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB2_11
; %bb.10:                               ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:43:47
	ldg_b128 r196, r182, -0x88
LBB2_11:                                ; %Flow316
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_5
LBB2_12:                                ; %land.lhs.true.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:11
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:43:47
	ldg_b128 r192, r186, 0x0
LBB2_14:                                ; %Flow315
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_18
LBB2_15:                                ; %land.lhs.true.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:42:11
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB2_17
; %bb.16:                               ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:11
	add_co_u32 r188, r184, s24
	mov_b32 r28, s25
	addc_co_u32 r189, r177, r28
	shl_b64 r28, 1, r188
	or_b32 r28, r28, 64
	add_co_u32 r188, s0, r28
	mov_b32 r28, s1
	addc_co_u32 r189, r28, r29
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:43:47
	snop 1
	ldg_b128 r188, r188, 0x0
LBB2_17:                                ; %Flow314
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
LBB2_18:                                ; %for.inc174.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s42
	.loc	2 48 371 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:48:371
	mad_i32 r28, r26, 2, s18
	mad_i32 r204, r27, 2, s18
	.loc	2 48 354 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:48:354
	snop 0
	ldg_b128 r206, r28, 0x0
	.loc	2 52 369 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:52:369
	mad_i32 r28, r26, 2, s26
	.loc	2 48 354                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:48:354
	ldg_b128 r210, r204, 0x0
	.loc	2 52 369                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:52:369
	mad_i32 r204, r27, 2, s26
	.loc	2 52 354 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:52:354
	ldg_b128 r214, r28, 0x0
	snop 0
	ldg_b128 r218, r204, 0x0
	.loc	2 48 354 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:48:354
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r210
	.loc	2 52 354                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:52:354
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r218
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_22
; %bb.19:                               ; %for.inc355
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_25
LBB2_20:                                ; %for.inc355.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_28
LBB2_21:                                ; %for.inc355.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_31
	bra LBB2_34
	.p2align	5
LBB2_22:                                ; %land.lhs.true308
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:11
	and_xmsk s44, s10
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %if.then323
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:57:47
	ldg_b128 r200, r178, -0x40
LBB2_24:                                ; %Flow313
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_20
LBB2_25:                                ; %land.lhs.true308.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:11
	and_xmsk s44, s8
	snop 0
	bra_xmskz LBB2_27
; %bb.26:                               ; %if.then323.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:57:47
	ldg_b128 r196, r180, -0x8
LBB2_27:                                ; %Flow312
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_21
LBB2_28:                                ; %land.lhs.true308.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:11
	and_xmsk s44, s10
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.then323.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:57:47
	ldg_b128 r192, r178, 0x0
LBB2_30:                                ; %Flow311
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_34
LBB2_31:                                ; %land.lhs.true308.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:56:11
	and_xmsk s44, s8
	snop 0
	bra_xmskz LBB2_33
; %bb.32:                               ; %if.then323.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:11
	add_co_u32 r188, r150, s24
	mov_b32 r28, s25
	addc_co_u32 r189, r151, r28
	shl_b64 r28, 1, r188
	or_b32 r28, r28, 64
	add_co_u32 r188, s0, r28
	mov_b32 r28, s1
	addc_co_u32 r189, r28, r29
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:57:47
	snop 1
	ldg_b128 r188, r188, 0x0
LBB2_33:                                ; %Flow310
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
LBB2_34:                                ; %for.inc355.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s42
	.loc	2 62 370 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:62:370
	mad_i32 r28, r26, 2, s22
	mad_i32 r204, r27, 2, s22
	.loc	2 62 355 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:62:355
	snop 0
	ldg_b128 r206, r28, 0x0
	ldg_b128 r210, r204, 0x0
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r206
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r210
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 65 9                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:65:9
	and_xmsk s42, s30
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %for.cond434.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r204, r10, 0x0
	lds_b128 r208, r11, 0x0
	lds_b128 r212, r12, 0x0
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	add_i32 r28, 0x4000, r10
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r204, r152, r168
	mma_16x16x16f16 r86, r204, r156, r86
	mma_16x16x16f16 r168, r206, r154, r168
	mma_16x16x16f16 r86, r206, r158, r86
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r204, r13, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r208, r152, r142
	mma_16x16x16f16 r78, r208, r156, r78
	mma_16x16x16f16 r142, r210, r154, r142
	mma_16x16x16f16 r78, r210, r158, r78
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r208, r14, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r212, r152, r134
	mma_16x16x16f16 r70, r212, r156, r70
	mma_16x16x16f16 r134, r214, r154, r134
	mma_16x16x16f16 r70, r214, r158, r70
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r212, r15, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r204, r152, r126
	mma_16x16x16f16 r62, r204, r156, r62
	mma_16x16x16f16 r126, r206, r154, r126
	mma_16x16x16f16 r62, r206, r158, r62
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r204, r16, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r208, r152, r118
	mma_16x16x16f16 r54, r208, r156, r54
	mma_16x16x16f16 r118, r210, r154, r118
	mma_16x16x16f16 r54, r210, r158, r54
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r208, r17, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r212, r152, r110
	mma_16x16x16f16 r46, r212, r156, r46
	mma_16x16x16f16 r110, r214, r154, r110
	mma_16x16x16f16 r46, r214, r158, r46
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r11
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r204, r152, r102
	mma_16x16x16f16 r38, r204, r156, r38
	mma_16x16x16f16 r102, r206, r154, r102
	mma_16x16x16f16 r38, r206, r158, r38
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r12
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r208, r152, r94
	mma_16x16x16f16 r30, r208, r156, r30
	mma_16x16x16f16 r94, r210, r154, r94
	mma_16x16x16f16 r30, r210, r158, r30
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r13
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r152, r172
	mma_16x16x16f16 r90, r212, r156, r90
	mma_16x16x16f16 r172, r214, r154, r172
	mma_16x16x16f16 r90, r214, r158, r90
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r14
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r204, r152, r146
	mma_16x16x16f16 r82, r204, r156, r82
	mma_16x16x16f16 r146, r206, r154, r146
	mma_16x16x16f16 r82, r206, r158, r82
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r15
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r208, r152, r138
	mma_16x16x16f16 r74, r208, r156, r74
	mma_16x16x16f16 r138, r210, r154, r138
	mma_16x16x16f16 r74, r210, r158, r74
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r16
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r212, r152, r130
	mma_16x16x16f16 r66, r212, r156, r66
	mma_16x16x16f16 r130, r214, r154, r130
	mma_16x16x16f16 r66, r214, r158, r66
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r17
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r204, r152, r122
	mma_16x16x16f16 r58, r204, r156, r58
	mma_16x16x16f16 r122, r206, r154, r122
	mma_16x16x16f16 r58, r206, r158, r58
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r18
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r208, r152, r114
	mma_16x16x16f16 r50, r208, r156, r50
	mma_16x16x16f16 r114, r210, r154, r114
	mma_16x16x16f16 r50, r210, r158, r50
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r208, r18, 0x0
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r212, r152, r106
	mma_16x16x16f16 r42, r212, r156, r42
	mma_16x16x16f16 r106, r214, r154, r106
	mma_16x16x16f16 r42, r214, r158, r42
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r212, r19, 0x0
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r204, r152, r98
	mma_16x16x16f16 r34, r204, r156, r34
	mma_16x16x16f16 r98, r206, r154, r98
	mma_16x16x16f16 r34, r206, r158, r34
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r204, r20, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r208, r160, r168
	mma_16x16x16f16 r86, r208, r164, r86
	mma_16x16x16f16 r168, r210, r162, r168
	mma_16x16x16f16 r86, r210, r166, r86
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r208, r21, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r212, r160, r142
	mma_16x16x16f16 r78, r212, r164, r78
	mma_16x16x16f16 r142, r214, r162, r142
	mma_16x16x16f16 r78, r214, r166, r78
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r212, r22, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r204, r160, r134
	mma_16x16x16f16 r70, r204, r164, r70
	mma_16x16x16f16 r134, r206, r162, r134
	mma_16x16x16f16 r70, r206, r166, r70
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r204, r23, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r208, r160, r126
	mma_16x16x16f16 r62, r208, r164, r62
	mma_16x16x16f16 r126, r210, r162, r126
	mma_16x16x16f16 r62, r210, r166, r62
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r208, r24, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r212, r160, r118
	mma_16x16x16f16 r54, r212, r164, r54
	mma_16x16x16f16 r118, r214, r162, r118
	mma_16x16x16f16 r54, r214, r166, r54
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:68:45
	lds_b128 r212, r25, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r204, r160, r110
	mma_16x16x16f16 r46, r204, r164, r46
	mma_16x16x16f16 r110, r206, r162, r110
	mma_16x16x16f16 r46, r206, r166, r46
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r19
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r208, r160, r102
	mma_16x16x16f16 r38, r208, r164, r38
	mma_16x16x16f16 r102, r210, r162, r102
	mma_16x16x16f16 r38, r210, r166, r38
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r20
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r212, r160, r94
	mma_16x16x16f16 r30, r212, r164, r30
	mma_16x16x16f16 r94, r214, r162, r94
	mma_16x16x16f16 r30, r214, r166, r30
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r21
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r204, r160, r172
	mma_16x16x16f16 r90, r204, r164, r90
	mma_16x16x16f16 r172, r206, r162, r172
	mma_16x16x16f16 r90, r206, r166, r90
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r22
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r208, r160, r146
	mma_16x16x16f16 r82, r208, r164, r82
	mma_16x16x16f16 r146, r210, r162, r146
	mma_16x16x16f16 r82, r210, r166, r82
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r23
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r212, r160, r138
	mma_16x16x16f16 r74, r212, r164, r74
	mma_16x16x16f16 r138, r214, r162, r138
	mma_16x16x16f16 r74, r214, r166, r74
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r24
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r204, r160, r130
	mma_16x16x16f16 r66, r204, r164, r66
	mma_16x16x16f16 r130, r206, r162, r130
	mma_16x16x16f16 r66, r206, r166, r66
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r25
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r208, r160, r122
	mma_16x16x16f16 r58, r208, r164, r58
	mma_16x16x16f16 r122, r210, r162, r122
	mma_16x16x16f16 r58, r210, r166, r58
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r212, r160, r114
	mma_16x16x16f16 r50, r212, r164, r50
	mma_16x16x16f16 r114, r214, r162, r114
	mma_16x16x16f16 r50, r214, r166, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r204, r160, r106
	mma_16x16x16f16 r42, r204, r164, r42
	mma_16x16x16f16 r106, r206, r162, r106
	mma_16x16x16f16 r42, r206, r166, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r208, r160, r98
	mma_16x16x16f16 r34, r208, r164, r34
	mma_16x16x16f16 r98, r210, r162, r98
	mma_16x16x16f16 r34, r210, r166, r34
LBB2_36:                                ; %if.end612
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s42
.Ltmp7:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 100 363                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:100:363
	add_u32 r28, r26, 64
	add_u32 r29, 0x10040, r26
	mad_i32 r204, r28, 2, s16
	mad_i32 r206, r29, 2, s16
	.loc	2 102 16                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:102:16
	mov_b32 r212, 0x780
	.loc	2 100 346                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:100:346
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	.loc	2 102 16                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:102:16
	mov_b32 r213, 0
	cmp_lg_u64 s42, s24, r212
	scmp_eq_u64 0x780, s24
	.loc	2 100 346                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:100:346
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r208
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r204
	.loc	2 102 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:102:9
	bra_smsks LBB2_54
; %bb.37:                               ; %for.cond677.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_41
; %bb.38:                               ; %for.inc730
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_44
LBB2_39:                                ; %for.inc730.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_47
LBB2_40:                                ; %for.inc730.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_50
	bra LBB2_53
	.p2align	5
LBB2_41:                                ; %land.lhs.true683
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %if.then698
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:106:48
	ldg_b128 r152, r186, 0x40
LBB2_43:                                ; %Flow308
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_39
LBB2_44:                                ; %land.lhs.true683.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.then698.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:106:48
	ldg_b128 r156, r182, -0x8
LBB2_46:                                ; %Flow307
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_40
LBB2_47:                                ; %land.lhs.true683.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.then698.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:106:48
	ldg_b128 r160, r186, 0x80
LBB2_49:                                ; %Flow306
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_53
LBB2_50:                                ; %land.lhs.true683.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:105:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_52
; %bb.51:                               ; %if.then698.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:13
	add_co_u32 r166, r184, s24
	mov_b32 r164, s25
	addc_co_u32 r167, r177, r164
	shl_b64 r164, 1, r166
	or_b32 r164, r164, 64
	add_co_u32 r166, s2, r164
	mov_b32 r164, s3
	addc_co_u32 r167, r164, r165
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:106:48
	snop 1
	ldg_b128 r164, r166, 0x0
LBB2_52:                                ; %Flow304
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
LBB2_53:                                ; %Flow305
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB2_54:                                ; %if.end733
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 112 372 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:112:372
	mad_i32 r204, r26, 2, s34
	.loc	2 116 370                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:116:370
	mad_i32 r212, r28, 2, s26
	.loc	2 112 372                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:112:372
	mad_i32 r206, r27, 2, s34
	.loc	2 116 370                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:116:370
	mad_i32 r28, r29, 2, s26
	.loc	2 112 355                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:112:355
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	.loc	2 116 355                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:116:355
	ldg_b128 r212, r212, 0x0
	ldg_b128 r216, r28, 0x0
	.loc	2 118 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:118:9
	sandn_b64 cmsk, xmsk, s42
	.loc	2 112 355                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:112:355
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r208
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r204
	.loc	2 116 355                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:116:355
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r212
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r216
	.loc	2 118 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:118:9
	bra_cmsks LBB2_72
; %bb.55:                               ; %for.cond862.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_59
; %bb.56:                               ; %for.inc915
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_62
LBB2_57:                                ; %for.inc915.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_65
LBB2_58:                                ; %for.inc915.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_68
	bra LBB2_71
	.p2align	5
LBB2_59:                                ; %land.lhs.true868
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_61
; %bb.60:                               ; %if.then883
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:122:48
	ldg_b128 r152, r178, 0x40
LBB2_61:                                ; %Flow302
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_57
LBB2_62:                                ; %land.lhs.true868.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_64
; %bb.63:                               ; %if.then883.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:122:48
	ldg_b128 r156, r180, 0x78
LBB2_64:                                ; %Flow301
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_58
LBB2_65:                                ; %land.lhs.true868.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_67
; %bb.66:                               ; %if.then883.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:122:48
	ldg_b128 r160, r178, 0x80
LBB2_67:                                ; %Flow300
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_71
LBB2_68:                                ; %land.lhs.true868.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:121:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_70
; %bb.69:                               ; %if.then883.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:13
	add_co_u32 r164, r150, s24
	mov_b32 r28, s25
	addc_co_u32 r165, r151, r28
	shl_b64 r28, 1, r164
	or_b32 r28, r28, 64
	add_co_u32 r164, s2, r28
	mov_b32 r28, s3
	addc_co_u32 r165, r28, r29
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:122:48
	snop 1
	ldg_b128 r164, r164, 0x0
LBB2_70:                                ; %Flow
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
LBB2_71:                                ; %Flow299
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB2_72:                                ; %if.end918
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 128 371 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:128:371
	mad_i32 r28, r26, 2, s36
	mad_i32 r26, r27, 2, s36
	.loc	2 128 356 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:128:356
	snop 0
	ldg_b128 r204, r28, 0x0
	ldg_b128 r26, r26, 0x0
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r204
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r26
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 131 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:131:9
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB2_74
; %bb.73:                               ; %for.cond995.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r26, r10, 0x0
	lds_b128 r204, r11, 0x0
	lds_b128 r208, r12, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r26, r200, r168
	mma_16x16x16f16 r86, r26, r196, r86
	mma_16x16x16f16 r168, r28, r202, r168
	mma_16x16x16f16 r86, r28, r198, r86
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r26, r13, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r204, r200, r142
	mma_16x16x16f16 r78, r204, r196, r78
	mma_16x16x16f16 r142, r206, r202, r142
	mma_16x16x16f16 r78, r206, r198, r78
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r204, r14, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r208, r200, r134
	mma_16x16x16f16 r70, r208, r196, r70
	mma_16x16x16f16 r134, r210, r202, r134
	mma_16x16x16f16 r70, r210, r198, r70
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r208, r15, 0x0
	lds_b128 r212, r16, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r126, r26, r200, r126
	mma_16x16x16f16 r62, r26, r196, r62
	mma_16x16x16f16 r126, r28, r202, r126
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	add_i32 r26, 0x4000, r10
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	mma_16x16x16f16 r62, r28, r198, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r204, r200, r118
	mma_16x16x16f16 r54, r204, r196, r54
	mma_16x16x16f16 r118, r206, r202, r118
	mma_16x16x16f16 r54, r206, r198, r54
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r204, r17, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r208, r200, r110
	mma_16x16x16f16 r46, r208, r196, r46
	mma_16x16x16f16 r110, r210, r202, r110
	mma_16x16x16f16 r46, r210, r198, r46
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r11
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r212, r200, r102
	mma_16x16x16f16 r38, r212, r196, r38
	mma_16x16x16f16 r102, r214, r202, r102
	mma_16x16x16f16 r38, r214, r198, r38
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r12
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r204, r200, r94
	mma_16x16x16f16 r30, r204, r196, r30
	mma_16x16x16f16 r94, r206, r202, r94
	mma_16x16x16f16 r30, r206, r198, r30
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r13
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r208, r200, r172
	mma_16x16x16f16 r90, r208, r196, r90
	mma_16x16x16f16 r172, r210, r202, r172
	mma_16x16x16f16 r90, r210, r198, r90
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r14
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r212, r200, r146
	mma_16x16x16f16 r82, r212, r196, r82
	mma_16x16x16f16 r146, r214, r202, r146
	mma_16x16x16f16 r82, r214, r198, r82
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r15
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r204, r200, r138
	mma_16x16x16f16 r74, r204, r196, r74
	mma_16x16x16f16 r138, r206, r202, r138
	mma_16x16x16f16 r74, r206, r198, r74
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r16
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r208, r200, r130
	mma_16x16x16f16 r66, r208, r196, r66
	mma_16x16x16f16 r130, r210, r202, r130
	mma_16x16x16f16 r66, r210, r198, r66
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r17
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r212, r200, r122
	mma_16x16x16f16 r58, r212, r196, r58
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r26, r26, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	mma_16x16x16f16 r122, r214, r202, r122
	mma_16x16x16f16 r58, r214, r198, r58
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r204, r200, r114
	mma_16x16x16f16 r50, r204, r196, r50
	mma_16x16x16f16 r114, r206, r202, r114
	mma_16x16x16f16 r50, r206, r198, r50
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r204, r18, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r208, r200, r106
	mma_16x16x16f16 r42, r208, r196, r42
	mma_16x16x16f16 r106, r210, r202, r106
	mma_16x16x16f16 r42, r210, r198, r42
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r208, r19, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r26, r200, r98
	mma_16x16x16f16 r34, r26, r196, r34
	mma_16x16x16f16 r98, r28, r202, r98
	mma_16x16x16f16 r34, r28, r198, r34
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r26, r20, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r204, r192, r168
	mma_16x16x16f16 r86, r204, r188, r86
	mma_16x16x16f16 r168, r206, r194, r168
	mma_16x16x16f16 r86, r206, r190, r86
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r204, r21, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r208, r192, r142
	mma_16x16x16f16 r78, r208, r188, r78
	mma_16x16x16f16 r142, r210, r194, r142
	mma_16x16x16f16 r78, r210, r190, r78
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r208, r22, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r26, r192, r134
	mma_16x16x16f16 r70, r26, r188, r70
	mma_16x16x16f16 r134, r28, r194, r134
	mma_16x16x16f16 r70, r28, r190, r70
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r26, r23, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r204, r192, r126
	mma_16x16x16f16 r62, r204, r188, r62
	mma_16x16x16f16 r126, r206, r194, r126
	mma_16x16x16f16 r62, r206, r190, r62
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r204, r24, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r208, r192, r118
	mma_16x16x16f16 r54, r208, r188, r54
	mma_16x16x16f16 r118, r210, r194, r118
	mma_16x16x16f16 r54, r210, r190, r54
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:134:47
	lds_b128 r208, r25, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r26, r192, r110
	mma_16x16x16f16 r46, r26, r188, r46
	mma_16x16x16f16 r110, r28, r194, r110
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	add_i32 r26, 0x4000, r18
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	mma_16x16x16f16 r46, r28, r190, r46
	arrive bsmcnt(1)
	mma_16x16x16f16 r102, r204, r192, r102
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r19
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	mma_16x16x16f16 r38, r204, r188, r38
	mma_16x16x16f16 r102, r206, r194, r102
	mma_16x16x16f16 r38, r206, r190, r38
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r20
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r208, r192, r94
	mma_16x16x16f16 r30, r208, r188, r30
	mma_16x16x16f16 r94, r210, r194, r94
	mma_16x16x16f16 r30, r210, r190, r30
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r21
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r192, r172
	mma_16x16x16f16 r90, r212, r188, r90
	mma_16x16x16f16 r172, r214, r194, r172
	mma_16x16x16f16 r90, r214, r190, r90
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r22
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r204, r192, r146
	mma_16x16x16f16 r82, r204, r188, r82
	mma_16x16x16f16 r146, r206, r194, r146
	mma_16x16x16f16 r82, r206, r190, r82
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r23
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r208, r192, r138
	mma_16x16x16f16 r74, r208, r188, r74
	mma_16x16x16f16 r138, r210, r194, r138
	mma_16x16x16f16 r74, r210, r190, r74
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r24
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r212, r192, r130
	mma_16x16x16f16 r66, r212, r188, r66
	mma_16x16x16f16 r130, r214, r194, r130
	mma_16x16x16f16 r66, r214, r190, r66
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r25
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r204, r192, r122
	mma_16x16x16f16 r58, r204, r188, r58
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:148:47
	lds_b128 r26, r26, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:154:56
	mma_16x16x16f16 r122, r206, r194, r122
	mma_16x16x16f16 r58, r206, r190, r58
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r208, r192, r114
	mma_16x16x16f16 r50, r208, r188, r50
	mma_16x16x16f16 r114, r210, r194, r114
	mma_16x16x16f16 r50, r210, r190, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r212, r192, r106
	mma_16x16x16f16 r42, r212, r188, r42
	mma_16x16x16f16 r106, r214, r194, r106
	mma_16x16x16f16 r42, r214, r190, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r26, r192, r98
	mma_16x16x16f16 r34, r26, r188, r34
	mma_16x16x16f16 r98, r28, r194, r98
	mma_16x16x16f16 r34, r28, r190, r34
LBB2_74:                                ; %if.end1173
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s44
	.loc	2 163 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:163:9
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
	shl_b32 r2, 12, r0
	sshl_b32 s0, 20, s12
	sshl_b32 s1, 7, s4
	shl_b32 r0, 13, r0
	and_b32 r2, 0x3c0000, r2
	sadd_co_i32 s0, s1, s0
	and_b32 r0, 0x1e000, r0
	add_u32 r2, s0, r2
	add_u32 r0, r2, r0
	and_or_b32 r0, r1, 12, r0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_93
; %bb.77:                               ; %for.inc1358
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_94
LBB2_78:                                ; %for.inc1358.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_95
LBB2_79:                                ; %for.inc1358.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_96
LBB2_80:                                ; %for.inc1358.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_97
LBB2_81:                                ; %for.inc1358.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_98
LBB2_82:                                ; %for.inc1358.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_99
LBB2_83:                                ; %for.inc1358.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_100
LBB2_84:                                ; %for.inc1358.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_101
LBB2_85:                                ; %for.inc1358.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_102
LBB2_86:                                ; %for.inc1358.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_103
LBB2_87:                                ; %for.inc1358.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_104
LBB2_88:                                ; %for.inc1358.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_105
LBB2_89:                                ; %for.inc1358.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_106
LBB2_90:                                ; %for.inc1358.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_107
LBB2_91:                                ; %for.inc1358.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_108
LBB2_92:                                ; %for.inc1358.15
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:223:1
	snop 1
	endk
LBB2_93:                                ; %if.then1198
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r169
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r168
.Ltmp13:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp14:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp15:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r170
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r171
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp16:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp17:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp18:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r169, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp20:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r168, 0xbfb8aa3b, r5
.Ltmp22:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp24:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r170, 0xbfb8aa3b, r9
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r171, 0xbfb8aa3b, r4
.Ltmp26:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s12, 0x3f800000
.Ltmp27:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp28:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s12
.Ltmp29:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp30:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp31:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp32:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s12, r5, s12
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s12
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s12
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r168, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r1, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s12
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s12
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r169, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r3, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s12
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s12
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r170, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s12, r2, s12
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s12
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r171, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r172
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r173
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r174
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r175
.Ltmp33:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp34:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp35:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp36:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp37:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_b32 r2, 1, r0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_78
LBB2_94:                                ; %if.then1198.1
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r143
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r142
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp39:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp40:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r144
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r145
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp41:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp42:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp43:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r143, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp45:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp46:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r142, 0xbfb8aa3b, r5
.Ltmp47:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp48:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp49:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r144, 0xbfb8aa3b, r9
.Ltmp50:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r145, 0xbfb8aa3b, r4
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s12, 0x3f800000
.Ltmp52:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp53:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s12
.Ltmp54:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp55:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp56:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp57:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s12, r5, s12
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s12
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s12
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r142, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r1, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s12
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s12
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r143, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r3, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s12
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s12
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r144, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s12, r2, s12
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s12
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r145, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r146
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r147
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r148
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r149
.Ltmp58:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp59:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp60:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp61:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp62:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_or_b32 r2, 1, r0, 32
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_79
LBB2_95:                                ; %if.then1198.2
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r135
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r134
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp64:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp65:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r136
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r137
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp66:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp67:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp68:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp69:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r135, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp71:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r134, 0xbfb8aa3b, r5
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp73:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r136, 0xbfb8aa3b, r9
.Ltmp75:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r137, 0xbfb8aa3b, r4
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s12, 0x3f800000
.Ltmp77:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp78:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s12
.Ltmp79:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp80:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp81:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp82:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s12, r5, s12
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s12
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s12
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r134, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r1, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s12
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s12
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r135, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r3, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s12
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s12
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r136, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s12, r2, s12
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s12
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r137, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r138
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r139
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r140
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r141
.Ltmp83:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp84:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp85:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp87:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_or_b32 r2, 1, r0, 64
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_80
LBB2_96:                                ; %if.then1198.3
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r127
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r126
.Ltmp88:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp89:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp90:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r128
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r129
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp92:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp94:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r127, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp96:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r126, 0xbfb8aa3b, r5
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp98:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r128, 0xbfb8aa3b, r9
.Ltmp100:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r129, 0xbfb8aa3b, r4
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s12, 0x3f800000
.Ltmp102:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp103:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s12
.Ltmp104:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp105:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp106:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp107:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s12, r5, s12
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s12
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s12
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r126, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r1, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s12
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s12
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r127, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r3, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s12
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s12
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r128, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s12, r2, s12
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s12
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r129, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r130
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r131
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r132
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r133
.Ltmp108:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp109:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp110:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp111:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp112:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	mov_b32 r2, 0x60
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_or_b32 r2, 1, r0, r2
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_81
LBB2_97:                                ; %if.then1198.4
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r119
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r118
.Ltmp113:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp114:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp115:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r120
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r121
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp117:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp119:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r119, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp121:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r118, 0xbfb8aa3b, r5
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp123:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp124:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r120, 0xbfb8aa3b, r9
.Ltmp125:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r121, 0xbfb8aa3b, r4
.Ltmp126:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s12, 0x3f800000
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp128:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s12
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp130:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp132:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s12, r5, s12
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s12
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s12
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r118, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r1, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s12
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s12
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r119, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r3, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s12
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s12
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r120, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s12, r2, s12
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s12
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r121, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r122
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r123
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r124
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r125
.Ltmp133:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp134:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp135:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp136:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp137:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	mov_b32 r2, 0x80
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_or_b32 r2, 1, r0, r2
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_82
LBB2_98:                                ; %if.then1198.5
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r111
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r110
.Ltmp138:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp139:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp140:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r112
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r113
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp142:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp143:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r111, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp145:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r110, 0xbfb8aa3b, r5
.Ltmp147:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp149:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r112, 0xbfb8aa3b, r9
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r113, 0xbfb8aa3b, r4
.Ltmp151:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s12, 0x3f800000
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp153:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s12
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp155:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp157:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s12, r5, s12
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s12
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s12
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r110, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r1, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s12
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s12
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r111, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r3, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s12
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s12
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r112, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s12, r2, s12
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s12
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r113, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r114
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r115
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r116
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r117
.Ltmp158:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp159:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp161:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp162:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	mov_b32 r2, 0xa0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_or_b32 r2, 1, r0, r2
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_83
LBB2_99:                                ; %if.then1198.6
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r103
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r102
.Ltmp163:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp164:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp165:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r104
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r105
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp166:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp167:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp168:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r103, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp170:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r102, 0xbfb8aa3b, r5
.Ltmp172:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp174:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r104, 0xbfb8aa3b, r9
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r105, 0xbfb8aa3b, r4
.Ltmp176:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s12, 0x3f800000
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp178:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s12
.Ltmp179:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp180:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp181:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp182:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s12, r5, s12
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s12
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s12
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r102, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r1, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s12
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s12
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r103, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s12, r3, s12
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s12
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s12
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r104, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s12, r2, s12
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s12
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r105, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r106
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r107
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r108
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r109
.Ltmp183:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp184:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp185:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp186:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp187:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	mov_b32 r2, 0xc0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_or_b32 r2, 1, r0, r2
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_84
LBB2_100:                               ; %if.then1198.7
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r95
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r94
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp189:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp190:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r96
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r97
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp191:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp192:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp193:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r95, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp195:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r94, 0xbfb8aa3b, r5
.Ltmp197:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp199:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r96, 0xbfb8aa3b, r9
.Ltmp200:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r97, 0xbfb8aa3b, r4
.Ltmp201:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp202:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp203:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp204:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp205:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp206:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp207:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r94, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r95, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r96, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r97, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r98
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r99
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r100
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r101
.Ltmp208:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp209:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp210:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp211:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp212:
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r1_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	mov_b32 r2, 0xe0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r3, 0xffff, r4
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	shl_or_b32 r2, 1, r0, r2
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r6, r1, r3
	snop 1
	stg_b64 s6, r2, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_85
LBB2_101:                               ; %if.then1198.8
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r87
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r86
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp214:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp215:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r88
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r89
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp216:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp217:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp218:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp219:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r87, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp220:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp221:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r86, 0xbfb8aa3b, r5
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp223:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r88, 0xbfb8aa3b, r9
.Ltmp225:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r89, 0xbfb8aa3b, r4
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp227:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp228:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp229:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp230:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp231:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp232:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r86, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r87, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r88, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r89, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r90
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r91
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r92
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r93
.Ltmp233:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp234:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp235:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp237:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r2, 1, r0
	mov_b32 r7, 0
	add_co_u32 r2, s6, r2
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r8, 0x40000, r2
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r2, 16, r6
	add_u16 r1_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r2, 0xffff, r4
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_86
LBB2_102:                               ; %if.then1198.9
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r79
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r78
.Ltmp238:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp239:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp240:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r80
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r81
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp242:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp244:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r79, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp246:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r78, 0xbfb8aa3b, r5
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp248:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r80, 0xbfb8aa3b, r9
.Ltmp250:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r81, 0xbfb8aa3b, r4
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp252:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp253:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp254:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp255:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp256:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp257:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r78, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r79, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r80, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r81, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r82
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r83
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r84
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r85
.Ltmp258:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp259:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp260:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp261:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp262:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r2, 1, r0
	mov_b32 r7, 0
	add_co_u32 r2, s6, r2
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r8, 0x40020, r2
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r2, 16, r6
	add_u16 r1_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r2, 0xffff, r4
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_87
LBB2_103:                               ; %if.then1198.10
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r71
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r70
.Ltmp263:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp264:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp265:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r72
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r73
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp267:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp269:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r71, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp271:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r70, 0xbfb8aa3b, r5
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp273:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp274:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r72, 0xbfb8aa3b, r9
.Ltmp275:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r73, 0xbfb8aa3b, r4
.Ltmp276:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp277:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp278:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp280:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp282:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r70, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r71, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r72, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r73, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r74
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r75
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r76
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r77
.Ltmp283:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp284:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp285:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp286:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp287:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r2, 1, r0
	mov_b32 r7, 0
	add_co_u32 r2, s6, r2
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r8, 0x40040, r2
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r2, 16, r6
	add_u16 r1_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r2, 0xffff, r4
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_88
LBB2_104:                               ; %if.then1198.11
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r63
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r62
.Ltmp288:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp289:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp290:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r64
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r65
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp292:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp293:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp294:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r63, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp295:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp296:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r62, 0xbfb8aa3b, r5
.Ltmp297:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp299:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r64, 0xbfb8aa3b, r9
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r65, 0xbfb8aa3b, r4
.Ltmp301:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp303:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp305:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp307:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r62, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r63, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r64, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r65, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r66
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r67
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r68
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r69
.Ltmp308:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp309:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp310:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp311:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp312:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r2, 1, r0
	mov_b32 r7, 0
	add_co_u32 r2, s6, r2
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r8, 0x40060, r2
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r2, 16, r6
	add_u16 r1_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r2, 0xffff, r4
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_89
LBB2_105:                               ; %if.then1198.12
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r55
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r54
.Ltmp313:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp314:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp315:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r56
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r57
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp316:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp317:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp318:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp319:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r55, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp320:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp321:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r54, 0xbfb8aa3b, r5
.Ltmp322:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp323:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp324:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r56, 0xbfb8aa3b, r9
.Ltmp325:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r57, 0xbfb8aa3b, r4
.Ltmp326:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp327:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp328:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp329:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp330:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp331:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp332:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r54, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r55, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r56, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r57, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r58
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r59
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r60
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r61
.Ltmp333:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp334:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp336:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp337:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r2, 1, r0
	mov_b32 r7, 0
	add_co_u32 r2, s6, r2
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r8, 0x40080, r2
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r2, 16, r6
	add_u16 r1_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r2, 0xffff, r4
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_90
LBB2_106:                               ; %if.then1198.13
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r47
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r46
.Ltmp338:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp339:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp340:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r48
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r49
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp341:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp342:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp343:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp344:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r47, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp345:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp346:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r46, 0xbfb8aa3b, r5
.Ltmp347:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp348:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp349:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r48, 0xbfb8aa3b, r9
.Ltmp350:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r49, 0xbfb8aa3b, r4
.Ltmp351:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp352:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp353:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp354:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp355:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp356:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp357:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r46, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r47, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r48, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r49, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r50
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r51
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r52
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r53
.Ltmp358:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp359:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp362:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r2, 1, r0
	mov_b32 r7, 0
	add_co_u32 r2, s6, r2
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r8, 0x400a0, r2
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r2, 16, r6
	add_u16 r1_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r2, 0xffff, r4
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_91
LBB2_107:                               ; %if.then1198.14
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r39
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r38
.Ltmp363:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
.Ltmp364:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp365:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r40
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r41
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp366:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s4
.Ltmp367:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s2
	csel_b32 r7, r2, r6, s2
.Ltmp368:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
.Ltmp369:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r39, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s4
.Ltmp370:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
.Ltmp371:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r38, 0xbfb8aa3b, r5
.Ltmp372:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s2
.Ltmp373:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp374:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r40, 0xbfb8aa3b, r9
.Ltmp375:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r41, 0xbfb8aa3b, r4
.Ltmp376:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s2
	smov_b32 s10, 0x3f800000
.Ltmp377:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s4
.Ltmp378:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s10
.Ltmp379:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp380:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp381:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp382:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s10, r5, s10
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s10
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s10
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r38, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r1, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s10
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r39, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r3, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s10
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r40, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s10, r2, s10
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s10
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r41, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r42
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r43
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r44
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r45
.Ltmp383:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp384:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp387:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r2, 1, r0
	mov_b32 r7, 0
	add_co_u32 r2, s6, r2
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r8, 0x400c0, r2
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r2, 16, r6
	add_u16 r1_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r2, 0xffff, r4
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 169 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:169:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_92
LBB2_108:                               ; %if.then1198.15
	.loc	2 190 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:190:29
	mul_f32 r2, 0xbfb8aa3b, r31
	.loc	2 189 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:189:29
	mul_f32 r1, 0xbfb8aa3b, r30
.Ltmp388:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r2
.Ltmp389:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
.Ltmp390:
	.loc	2 191 29 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:191:29
	mul_f32 r1, 0xbfb8aa3b, r32
	.loc	2 192 29                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:192:29
	mul_f32 r3, 0xbfb8aa3b, r33
	mov_b32 r2, 0x1f800000
	mov_b32 r6, 0x3f800000
.Ltmp391:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r8, r4, 0, s2
.Ltmp392:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r4, 0, s0
	csel_b32 r7, r2, r6, s0
.Ltmp393:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
.Ltmp394:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r1, r31, 0xbfb8aa3b, r8
	csel_b32 r8, r2, r6, s2
.Ltmp395:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r3
.Ltmp396:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r30, 0xbfb8aa3b, r5
.Ltmp397:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r4, 0, s0
.Ltmp398:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r5, r5
.Ltmp399:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r32, 0xbfb8aa3b, r9
.Ltmp400:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r33, 0xbfb8aa3b, r4
.Ltmp401:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r2, r6, s0
	smov_b32 s4, 0x3f800000
.Ltmp402:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r4, r4
	csel_b32 r2, r2, r6, s2
.Ltmp403:
	.loc	2 197 28 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:197:28
	fmak_f32 r5, r7, r5, 0x3f800000
	.loc	2 200 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:200:28
	fmak_f32 r2, r2, r4, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r4, r5, r5, s4
.Ltmp404:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r1, r1
.Ltmp405:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	rcp_f32 r7, r4
	.loc	2 198 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:198:28
	fmak_f32 r1, r8, r1, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	fma_f32 r8, neg(r4), r7, r6
	fmac_f32 r7, r8, r7
.Ltmp406:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp407:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	div_scale_f32 r8, s4, r5, s4
	.loc	2 199 28                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:199:28
	fmak_f32 r3, r9, r3, 0x3f800000
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:201:26
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r4), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r4), r9
	div_fmas_f32 r4, r8, r7, r9
	div_fixup_f32 r4, r4, r5, s4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	div_scale_f32 r5, r1, r1, s4
	rcp_f32 r7, r5
	.loc	2 205 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:205:22
	mul_f32 r4, r30, r4
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:202:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s4, r1, s4
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r1, r5, r1, s4
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	div_scale_f32 r5, r3, r3, s4
	rcp_f32 r7, r5
	.loc	2 206 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:206:22
	mul_f32 r1, r31, r1
	.loc	2 203 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:203:26
	fma_f32 r8, neg(r5), r7, r6
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s4, r3, s4
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r5), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r5), r9
	div_fmas_f32 r5, r8, r7, r9
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	div_scale_f32 r5, r2, r2, s4
	rcp_f32 r7, r5
	.loc	2 207 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:207:22
	mul_f32 r3, r32, r3
	.loc	2 204 26                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:204:26
	fmac_f32 r6, neg(r5), r7
	fmac_f32 r7, r6, r7
	div_scale_f32 r6, s4, r2, s4
	mul_f32 r8, r6, r7
	fma_f32 r9, neg(r5), r8, r6
	fmac_f32 r8, r9, r7
	fmac_f32 r6, neg(r5), r8
	div_fmas_f32 r5, r6, r7, r8
	div_fixup_f32 r2, r5, r2, s4
	.loc	2 208 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:208:22
	mul_f32 r2, r33, r2
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r34
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:215:24
	mul_f32 r1, r1, r35
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:216:24
	mul_f32 r3, r3, r36
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:217:24
	mul_f32 r2, r2, r37
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp409:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp410:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp412:
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s6, r0
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r7
	add_co_u32 r6, 0x400e0, r0
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	shl_b32 r0, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r3, r0, r1
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r4
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:27
	addc_co_u32 r7, r2, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:220:262
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:223:1
	snop 2
	endk
.Ltmp413:
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
; codeLenInByte = 24664
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
	.loc	2 225 0                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:225:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp414:
	.loc	2 237 25 prologue_end           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:237:25
	scmp_gt_u32 s5, 7
	.loc	2 237 7 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:237:7
	snop 0
	bra_smskz LBB3_2
; %bb.1:                                ; %if.else
	.loc	2 241 46 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:241:46
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 241 72 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:241:72
	sand_b32 s1, s4, 1
	.loc	2 241 51                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:241:51
	sor_b32 s6, s0, s1
	.loc	2 242 45 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:242:45
	sshl_b32 s0, 2, s5
	sand_b32 s0, s0, 4
	.loc	2 242 71 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:242:71
	sshr_b32 s1, 1, s4
	.loc	2 242 50                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:242:50
	sadd_co_i32 s16, s0, s1
	.loc	2 237 7 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:237:7
	bra_xmskz LBB3_3
	bra LBB3_4
LBB3_2:
                                        ; implicit-def: $streg_32bit_6
                                        ; implicit-def: $streg_32bit_16
LBB3_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:7
	smov_b32 s16, s4
	smov_b32 s6, s5
LBB3_4:                                 ; %if.end
	cmp_lt_u32 s4, s6, 24
	scmp_gt_u32 s6, 23
	smov_b64 s20, 0
	.loc	2 247 18 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:247:18
	bra_smsks LBB3_6
; %bb.5:                                ; %if.then26
	.loc	2 0 18 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:18
	smov_b32 s7, 0
	sshl_b64 s0, 2, s6
	arrive slcnt(0)
	sadd_co_u32 s0, s42, s0
	saddc_co_u32 s1, s43, s1
	.loc	2 248 15 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:248:15
	ldu_b32 s20, s0, 0x0
	arrive slcnt(0)
	sashr_i32 s21, 31, s20
LBB3_6:                                 ; %if.end29
	.loc	2 253 20                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:253:20
	sshl_b64 s2, 2, s20
	arrive slcnt(0)
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 254 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:254:19
	sadd_co_u32 s8, s44, s2
	shl_b32 r2, 12, r0
	saddc_co_u32 s9, s45, s3
	and_b32 r2, 0x3c0000, r2
	mov_b32 r3, s6
	.loc	2 275 45                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:275:45
	shl_b64 r180, 0, 0
	.loc	2 255 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:255:22
	sadd_co_u32 s18, s46, s2
	shl_add_u32 r2, 20, r3, r2
	shl_b32 r3, 13, r0
	bfe_u32 r4, r0, 1, 9
	saddc_co_u32 s19, s47, s3
	and_b32 r1, 0x3ff, r0
	and_b32 r3, 0x1e000, r3
	and_b32 r5, r4, 24
	smov_b32 s17, 0
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r178, 0, r180
	shl_b64 r176, 0, r180
	shl_b64 r174, 0, r180
	shl_b64 r166, 0, r180
	shl_b64 r164, 0, r180
	shl_b64 r162, 0, r180
	shl_b64 r160, 0, r180
	bra_cmsks LBB3_8
; %bb.7:                                ; %for.body56.us.preheader
	.loc	2 0 22 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	or3_b32 r6, r2, r3, r5
	mov_b32 r7, 0
	.loc	2 271 39 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:39
	shl_b64 r8, 1, r6
	add_co_u32 r8, s14, r8
	mov_b32 r0, s15
	addc_co_u32 r9, r0, r9
	.loc	2 271 270 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:270
	or_b32 r0, 0x20000, r6
	.loc	2 271 39                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:39
	mad_u32 r10, r0, 2, s14
	.loc	2 271 320                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:320
	or_b32 r0, r6, 32
	.loc	2 271 17                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:17
	ldg_b128 r160, r8, 0x0
	.loc	2 271 39                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:39
	mad_u32 r8, r0, 2, s14
	.loc	2 271 320                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:320
	or_b32 r0, 0x20020, r6
	.loc	2 271 39                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:39
	mad_u32 r6, r0, 2, s14
	.loc	2 271 17                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:271:17
	ldg_b128 r164, r10, 0x0
	ldg_b128 r174, r8, 0x0
	ldg_b128 r178, r6, 0x0
LBB3_8:                                 ; %for.cond117.preheader
	.loc	2 0 17                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:17
	shl_b32 r6, 3, r1
	and_b32 r22, r6, 32
	add_u32 r0, r22, r1
	and_b32 r8, r0, 32
	and_b32 r0, r6, 16
	add_u32 r0, r0, r1
	and_b32 r9, r0, 16
	mul_u24 r0, r1, 9
	and_b32 r10, r0, 8
	shl_b32 r0, 10, r1
	or_b32 r30, r0, r6
	and_b32 r7, 0x1fc0, r6
	shl_b32 r6, 1, r5
	add_co_u32 r172, s14, r6
	shr_b32 r6, 5, r1
	add_shl_u32 r6, r6, r4, 4
	and_b32 r14, r6, 16
	shr_b32 r6, 4, r1
	mov_b32 r35, 0
	mov_b32 r5, s15
	add_shl_u32 r15, r6, r1, 3
	addc_co_u32 r173, r5, r35
	shl_b32 r5, 6, r1
	sshl_b64 s14, 25, s20
	.loc	2 277 3 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:277:3
	sshl_b64 s20, 22, s16
	and_b32 r21, 0x3c0, r5
	sadd_co_u32 s7, s14, s20
	and_or_b32 r29, r15, 8, r14
	saddc_co_u32 s14, s15, s21
	or_b32 r23, r29, r21
	or_b32 r24, 0x400, r21
	or_b32 r25, r29, r22
	or_b32 r26, 0x800, r21
	or_b32 r28, 0x1000, r21
	or_b32 r32, 0x1800, r21
	xor_b32 r34, r22, 32
	and_b32 r30, 0xfe038, r30
	ldu_b32 s2, s0, 0x0
	or_b32 r14, r23, r22
	or_b32 r22, r23, r34
	or_b32 r15, r25, r24
	or_b32 r16, r25, r26
	or_b32 r18, r25, r28
	or_b32 r20, r25, r32
	or3_b32 r23, r29, r24, r34
	or3_b32 r24, r29, r26, r34
	or3_b32 r26, r29, r28, r34
	or3_b32 r28, r29, r32, r34
	shl_b32 r32, 1, r30
	sadd_co_u32 s7, s40, s7
	ldu_b32 s1, s8, 0x0
	ldu_b32 s0, s18, 0x0
	or_b32 r6, r8, r10
	or_b32 r27, 0xc00, r21
	or_b32 r31, 0x1400, r21
	or_b32 r33, 0x1c00, r21
	or_b32 r30, 0x80, r32
	saddc_co_u32 s14, s41, s14
	or3_b32 r6, r6, r7, r9
	or_b32 r7, r7, r8
	or_b32 r17, r25, r27
	or_b32 r19, r25, r31
	or_b32 r21, r25, r33
	or3_b32 r25, r29, r27, r34
	or3_b32 r27, r29, r31, r34
	cmp_lt_i32 s8, s16, 8
	cmp_gt_i32 s18, s16, 7
	add_co_u32 r30, s7, r30
	mov_b32 r31, s14
	addc_co_u32 r31, r31, r35
	or3_b32 r7, r7, r9, r10
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:0
	shl_b64 r100, 0, 0
	shl_add_u32 r13, 1, r7, 0
	or3_b32 r29, r29, r33, r34
	.loc	2 277 3                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:277:3
	mov_b32 r33, s14
	shl_add_u32 r6, 1, r6, 0
	add_co_u32 r32, s7, r32
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:0
	shl_b64 r102, 0, 0
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
	shl_b64 r168, 0, r100
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
	shr_b32 r5, 2, r1
	smov_b32 s3, 0
	add_u32 r7, 0x1000, r13
	add_u32 r8, 0x2000, r13
	add_u32 r9, 0x3000, r13
	add_u32 r10, 0x4000, r6
	add_u32 r11, 0x5000, r13
	add_u32 r12, 0x6000, r13
	add_u32 r13, 0x7000, r13
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
	shl_add_u32 r28, 1, r28, 0
	shl_add_u32 r29, 1, r29, 0
	.loc	2 277 3                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:277:3
	addc_co_u32 r33, r33, r35
	smov_b64 s14, 0
	shl_b64 r106, 0, r102
	shl_b64 r110, 0, r102
	shl_b64 r114, 0, r102
	shl_b64 r118, 0, r102
	shl_b64 r122, 0, r102
	shl_b64 r126, 0, r102
	shl_b64 r130, 0, r102
	shl_b64 r134, 0, r102
	shl_b64 r138, 0, r102
	shl_b64 r142, 0, r102
	shl_b64 r146, 0, r102
	shl_b64 r150, 0, r102
	shl_b64 r154, 0, r102
	shl_b64 r158, 0, r102
	shl_b64 r170, 0, r102
	shl_b64 r38, 0, r102
	shl_b64 r42, 0, r102
	shl_b64 r46, 0, r102
	shl_b64 r50, 0, r102
	shl_b64 r54, 0, r102
	shl_b64 r58, 0, r102
	shl_b64 r62, 0, r102
	shl_b64 r66, 0, r102
	shl_b64 r70, 0, r102
	shl_b64 r74, 0, r102
	shl_b64 r78, 0, r102
	shl_b64 r82, 0, r102
	shl_b64 r86, 0, r102
	shl_b64 r90, 0, r102
	shl_b64 r94, 0, r102
	shl_b64 r98, 0, r102
	bra LBB3_10
	.p2align	5
LBB3_9:                                 ; %for.inc819
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 277 31                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:277:31
	sadd_co_u32 s14, 0x100, s14
	saddc_co_u32 s15, s15, 0
	sadd_co_i32 s3, 0x80, s3
	scmp_eq_u64 0x4000, s14
	.loc	2 277 3                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:277:3
	snop 0
	bra_smsks LBB3_45
LBB3_10:                                ; %for.cond122.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:3
	smov_b64 s20, -1
	.loc	2 282 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:282:21
	sand_b64 cmsk, xmsk, s18
	snop 0
	bra_cmskz LBB3_12
; %bb.11:                               ; %if.end175.3.critedge.critedge
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 287 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:287:332
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	smov_b64 s20, 0
	snop 0
	sts_b128 r6, 0x0, r182
	sts_b128 r7, 0x0, r182
LBB3_12:                                ; %Flow799
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 332 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:332
	shl_b64 r182, 0, 0
	.loc	2 282 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:282:21
	sandn_b64 cmsk, xmsk, s20
	shl_b64 r184, 0, 0
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	bra_cmsks LBB3_14
; %bb.13:                               ; %if.then129
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 283 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:283:19
	add_co_u32 r182, r32, s14
	mov_b32 r34, s15
	addc_co_u32 r183, r33, r34
	add_co_u32 r34, 0x80000, r182
	addc_co_u32 r35, r183, 0
	ldg_b128 r184, r182, 0x0
	snop 0
	ldg_b128 r188, r34, 0x0
	add_co_u32 r34, 0x100000, r182
	addc_co_u32 r35, r183, 0
	add_co_u32 r192, 0x180000, r182
	addc_co_u32 r193, r183, 0
	.loc	2 287 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:287:332
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r184
	.loc	2 283 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:283:19
	ldg_b128 r182, r34, 0x0
	.loc	2 287 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:287:332
	arrive gvmcnt(1)
	sts_b128 r7, 0x0, r188
	.loc	2 283 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:283:19
	ldg_b128 r186, r192, 0x0
LBB3_14:                                ; %if.end175.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:19
	smov_b64 s20, -1
	.loc	2 282 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:282:21
	sand_b64 cmsk, xmsk, s18
	.loc	2 287 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:287:332
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r182
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r186
	.loc	2 282 21                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:282:21
	bra_cmskz LBB3_16
; %bb.15:                               ; %if.end175.7.critedge.critedge
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 287 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:287:332
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	smov_b64 s20, 0
	snop 0
	sts_b128 r10, 0x0, r182
	sts_b128 r11, 0x0, r182
LBB3_16:                                ; %Flow798
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 332 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:332
	shl_b64 r182, 0, 0
	.loc	2 282 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:282:21
	sandn_b64 cmsk, xmsk, s20
	shl_b64 r184, 0, 0
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	bra_cmsks LBB3_18
; %bb.17:                               ; %if.then129.4
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 283 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:283:19
	add_co_u32 r34, r32, s14
	mov_b32 r35, s15
	addc_co_u32 r35, r33, r35
	add_co_u32 r182, 0x200000, r34
	addc_co_u32 r183, r35, 0
	add_co_u32 r184, 0x280000, r34
	addc_co_u32 r185, r35, 0
	ldg_b128 r186, r182, 0x0
	add_co_u32 r190, 0x300000, r34
	ldg_b128 r182, r184, 0x0
	addc_co_u32 r191, r35, 0
	add_co_u32 r34, 0x380000, r34
	addc_co_u32 r35, r35, 0
	.loc	2 287 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:287:332
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r186
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r182
	.loc	2 283 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:283:19
	ldg_b128 r182, r190, 0x0
	ldg_b128 r186, r34, 0x0
LBB3_18:                                ; %if.end175.7
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 287 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:287:332
	arrive gvmcnt(1)
	sts_b128 r12, 0x0, r182
	arrive gvmcnt(0)
	sts_b128 r13, 0x0, r186
.Ltmp415:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	or3_b32 r34, r3, s3, r2
	shl_b64 r190, 0, 0
.Ltmp416:
	.loc	2 294 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:294:22
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r192, 0, 0
	bra_cmskz LBB3_39
; %bb.19:                               ; %if.end277
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 22 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	.loc	2 294 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:294:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB3_40
LBB3_20:                                ; %if.end277.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 22                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 294 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:294:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB3_41
LBB3_21:                                ; %if.end277.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 22                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	.loc	2 294 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:294:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB3_23
LBB3_22:                                ; %if.then222.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 22                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	or_b32 r35, 0x20020, r34
	mad_u32 r186, r35, 2, r172
	.loc	2 295 19 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:295:19
	snop 1
	ldg_b128 r186, r186, 0x80
LBB3_23:                                ; %if.end277.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r198, r14, 0x0
	lds_b128 r202, r15, 0x0
	lds_b128 r206, r16, 0x0
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	add_i32 r35, 0x4000, r14
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r198, r160, r168
	mma_16x16x16f16 r128, r198, r164, r128
	mma_16x16x16f16 r168, r200, r162, r168
	mma_16x16x16f16 r128, r200, r166, r128
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r198, r17, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r202, r160, r156
	mma_16x16x16f16 r124, r202, r164, r124
	mma_16x16x16f16 r156, r204, r162, r156
	mma_16x16x16f16 r124, r204, r166, r124
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r202, r18, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r206, r160, r152
	mma_16x16x16f16 r120, r206, r164, r120
	mma_16x16x16f16 r152, r208, r162, r152
	mma_16x16x16f16 r120, r208, r166, r120
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r206, r19, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r198, r160, r148
	mma_16x16x16f16 r116, r198, r164, r116
	mma_16x16x16f16 r148, r200, r162, r148
	mma_16x16x16f16 r116, r200, r166, r116
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r198, r20, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r202, r160, r144
	mma_16x16x16f16 r112, r202, r164, r112
	mma_16x16x16f16 r144, r204, r162, r144
	mma_16x16x16f16 r112, r204, r166, r112
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r202, r21, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r206, r160, r140
	mma_16x16x16f16 r108, r206, r164, r108
	mma_16x16x16f16 r140, r208, r162, r140
	mma_16x16x16f16 r108, r208, r166, r108
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r206, r35, 0x0
	add_i32 r35, 0x4000, r15
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r160, r136
	mma_16x16x16f16 r104, r198, r164, r104
	mma_16x16x16f16 r136, r200, r162, r136
	mma_16x16x16f16 r104, r200, r166, r104
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r198, r35, 0x0
	add_i32 r35, 0x4000, r16
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r160, r132
	mma_16x16x16f16 r100, r202, r164, r100
	mma_16x16x16f16 r132, r204, r162, r132
	mma_16x16x16f16 r100, r204, r166, r100
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r202, r35, 0x0
	add_i32 r35, 0x4000, r17
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r206, r160, r96
	mma_16x16x16f16 r64, r206, r164, r64
	mma_16x16x16f16 r96, r208, r162, r96
	mma_16x16x16f16 r64, r208, r166, r64
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r206, r35, 0x0
	add_i32 r35, 0x4000, r18
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r198, r160, r92
	mma_16x16x16f16 r60, r198, r164, r60
	mma_16x16x16f16 r92, r200, r162, r92
	mma_16x16x16f16 r60, r200, r166, r60
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r198, r35, 0x0
	add_i32 r35, 0x4000, r19
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r160, r88
	mma_16x16x16f16 r56, r202, r164, r56
	mma_16x16x16f16 r88, r204, r162, r88
	mma_16x16x16f16 r56, r204, r166, r56
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r202, r35, 0x0
	add_i32 r35, 0x4000, r20
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r160, r84
	mma_16x16x16f16 r52, r206, r164, r52
	mma_16x16x16f16 r84, r208, r162, r84
	mma_16x16x16f16 r52, r208, r166, r52
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r206, r35, 0x0
	add_i32 r35, 0x4000, r21
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r160, r80
	mma_16x16x16f16 r48, r198, r164, r48
	mma_16x16x16f16 r80, r200, r162, r80
	mma_16x16x16f16 r48, r200, r166, r48
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r198, r35, 0x0
	add_i32 r35, 0x4000, r22
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r160, r76
	mma_16x16x16f16 r44, r202, r164, r44
	mma_16x16x16f16 r76, r204, r162, r76
	mma_16x16x16f16 r44, r204, r166, r44
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r202, r22, 0x0
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r160, r72
	mma_16x16x16f16 r40, r206, r164, r40
	mma_16x16x16f16 r72, r208, r162, r72
	mma_16x16x16f16 r40, r208, r166, r40
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r206, r23, 0x0
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r198, r160, r68
	mma_16x16x16f16 r36, r198, r164, r36
	mma_16x16x16f16 r68, r200, r162, r68
	mma_16x16x16f16 r36, r200, r166, r36
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r198, r24, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r202, r174, r168
	mma_16x16x16f16 r128, r202, r178, r128
	mma_16x16x16f16 r168, r204, r176, r168
	mma_16x16x16f16 r128, r204, r180, r128
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r202, r25, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r174, r156
	mma_16x16x16f16 r124, r206, r178, r124
	mma_16x16x16f16 r156, r208, r176, r156
	mma_16x16x16f16 r124, r208, r180, r124
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r206, r26, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r198, r174, r152
	mma_16x16x16f16 r120, r198, r178, r120
	mma_16x16x16f16 r152, r200, r176, r152
	mma_16x16x16f16 r120, r200, r180, r120
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r198, r27, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r202, r174, r148
	mma_16x16x16f16 r116, r202, r178, r116
	mma_16x16x16f16 r148, r204, r176, r148
	mma_16x16x16f16 r116, r204, r180, r116
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r202, r28, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r206, r174, r144
	mma_16x16x16f16 r112, r206, r178, r112
	mma_16x16x16f16 r144, r208, r176, r144
	mma_16x16x16f16 r112, r208, r180, r112
	.loc	2 303 41                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:303:41
	lds_b128 r206, r29, 0x0
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r198, r174, r140
	mma_16x16x16f16 r108, r198, r178, r108
	mma_16x16x16f16 r140, r200, r176, r140
	mma_16x16x16f16 r108, r200, r180, r108
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r198, r35, 0x0
	add_i32 r35, 0x4000, r23
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r202, r174, r136
	mma_16x16x16f16 r104, r202, r178, r104
	mma_16x16x16f16 r136, r204, r176, r136
	mma_16x16x16f16 r104, r204, r180, r104
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r202, r35, 0x0
	add_i32 r35, 0x4000, r24
	.loc	2 309 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r206, r174, r132
	mma_16x16x16f16 r100, r206, r178, r100
	mma_16x16x16f16 r132, r208, r176, r132
	mma_16x16x16f16 r100, r208, r180, r100
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r206, r35, 0x0
	add_i32 r35, 0x4000, r25
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r198, r174, r96
	mma_16x16x16f16 r64, r198, r178, r64
	mma_16x16x16f16 r96, r200, r176, r96
	mma_16x16x16f16 r64, r200, r180, r64
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r198, r35, 0x0
	add_i32 r35, 0x4000, r26
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r202, r174, r92
	mma_16x16x16f16 r60, r202, r178, r60
	mma_16x16x16f16 r92, r204, r176, r92
	mma_16x16x16f16 r60, r204, r180, r60
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r202, r35, 0x0
	add_i32 r35, 0x4000, r27
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r206, r174, r88
	mma_16x16x16f16 r56, r206, r178, r56
	mma_16x16x16f16 r88, r208, r176, r88
	mma_16x16x16f16 r56, r208, r180, r56
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r206, r35, 0x0
	add_i32 r35, 0x4000, r28
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r198, r174, r84
	mma_16x16x16f16 r52, r198, r178, r52
	mma_16x16x16f16 r84, r200, r176, r84
	mma_16x16x16f16 r52, r200, r180, r52
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r198, r35, 0x0
	add_i32 r35, 0x4000, r29
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r202, r174, r80
	mma_16x16x16f16 r48, r202, r178, r48
	mma_16x16x16f16 r80, r204, r176, r80
	mma_16x16x16f16 r48, r204, r180, r48
	.loc	2 317 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:317:43
	lds_b128 r202, r35, 0x0
	.loc	2 323 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:323:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r206, r174, r76
	mma_16x16x16f16 r44, r206, r178, r44
	mma_16x16x16f16 r76, r208, r176, r76
	mma_16x16x16f16 r44, r208, r180, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r72, r198, r174, r72
	mma_16x16x16f16 r40, r198, r178, r40
	mma_16x16x16f16 r72, r200, r176, r72
	mma_16x16x16f16 r40, r200, r180, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r68, r202, r174, r68
	mma_16x16x16f16 r36, r202, r178, r36
	mma_16x16x16f16 r68, r204, r176, r68
	mma_16x16x16f16 r36, r204, r180, r36
.Ltmp417:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	smov_b64 s20, -1
.Ltmp418:
	.loc	2 336 21                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:336:21
	sand_b64 cmsk, xmsk, s18
	snop 0
	bra_cmskz LBB3_25
; %bb.24:                               ; %if.end521.3.critedge.critedge
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 341 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:341:332
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	smov_b64 s20, 0
	snop 0
	sts_b128 r6, 0x0, r198
	sts_b128 r7, 0x0, r198
LBB3_25:                                ; %Flow797
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 332 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:332
	shl_b64 r198, 0, 0
	.loc	2 336 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:336:21
	sandn_b64 cmsk, xmsk, s20
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	shl_b64 r204, 0, 0
	bra_cmsks LBB3_27
; %bb.26:                               ; %if.then474
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 337 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:337:19
	add_co_u32 r198, r30, s14
	mov_b32 r35, s15
	addc_co_u32 r199, r31, r35
	add_co_u32 r200, 0x80000, r198
	addc_co_u32 r201, r199, 0
	ldg_b128 r202, r198, 0x0
	snop 0
	ldg_b128 r206, r200, 0x0
	add_co_u32 r200, 0x100000, r198
	addc_co_u32 r201, r199, 0
	add_co_u32 r210, 0x180000, r198
	addc_co_u32 r211, r199, 0
	ldg_b128 r198, r200, 0x0
	.loc	2 341 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:341:332
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r202
	.loc	2 337 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:337:19
	ldg_b128 r202, r210, 0x0
	.loc	2 341 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:341:332
	arrive gvmcnt(2)
	sts_b128 r7, 0x0, r206
LBB3_27:                                ; %if.end521.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 332 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:332
	smov_b64 s20, -1
	.loc	2 336 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:336:21
	sand_b64 cmsk, xmsk, s18
	.loc	2 341 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:341:332
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r202
	.loc	2 336 21                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:336:21
	bra_cmskz LBB3_29
; %bb.28:                               ; %if.end521.7.critedge.critedge
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 341 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:341:332
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	smov_b64 s20, 0
	snop 0
	sts_b128 r10, 0x0, r198
	sts_b128 r11, 0x0, r198
LBB3_29:                                ; %Flow796
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 332 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:332
	shl_b64 r198, 0, 0
	.loc	2 336 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:336:21
	sandn_b64 cmsk, xmsk, s20
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	shl_b64 r204, 0, 0
	bra_cmsks LBB3_31
; %bb.30:                               ; %if.then474.4
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 337 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:337:19
	add_co_u32 r35, r30, s14
	mov_b32 r198, s15
	addc_co_u32 r198, r31, r198
	add_co_u32 r200, 0x200000, r35
	addc_co_u32 r201, r198, 0
	add_co_u32 r202, 0x280000, r35
	addc_co_u32 r203, r198, 0
	ldg_b128 r204, r200, 0x0
	add_co_u32 r208, 0x300000, r35
	ldg_b128 r200, r202, 0x0
	addc_co_u32 r209, r198, 0
	add_co_u32 r210, 0x380000, r35
	addc_co_u32 r211, r198, 0
	.loc	2 341 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:341:332
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r204
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r200
	.loc	2 337 19                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:337:19
	ldg_b128 r198, r208, 0x0
	ldg_b128 r202, r210, 0x0
LBB3_31:                                ; %if.end521.7
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 341 332                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:341:332
	arrive gvmcnt(1)
	sts_b128 r12, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r13, 0x0, r202
.Ltmp419:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp420:
	.loc	2 344 16                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:344:16
	mov_b32 r198, 0x3f00
	mov_b32 r199, 0
	cmp_lg_u64 s20, s14, r198
	.loc	2 344 9 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:344:9
	snop 3
	sand_b64 cmsk, xmsk, s20
	snop 0
	bra_cmskz LBB3_37
; %bb.32:                               ; %for.cond563.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 349 24 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:349:24
	sand_b64 cmsk, xmsk, s4
	shl_b64 r160, 0, 0
	shl_b64 r162, 0, 0
	bra_cmsks LBB3_42
; %bb.33:                               ; %if.end625
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 24 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:24
	shl_b64 r164, 0, 0
	shl_b64 r166, 0, 0
	.loc	2 349 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:349:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB3_43
LBB3_34:                                ; %if.end625.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 24                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:24
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 349 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:349:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB3_44
LBB3_35:                                ; %if.end625.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 24                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:24
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 349 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:349:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB3_37
LBB3_36:                                ; %if.then570.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 24                          ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:24
	or_b32 r34, 0x20020, r34
	mad_u32 r34, r34, 2, r172
	.loc	2 350 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:350:21
	snop 1
	ldg_b128 r178, r34, 0x100
LBB3_37:                                ; %if.end633
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r198, r14, 0x0
	lds_b128 r202, r15, 0x0
	lds_b128 r206, r16, 0x0
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	add_i32 r34, 0x4000, r14
	.loc	2 387 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:387:9
	sandn_b64 cmsk, xmsk, s20
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r198, r190, r168
	mma_16x16x16f16 r128, r198, r194, r128
	mma_16x16x16f16 r168, r200, r192, r168
	mma_16x16x16f16 r128, r200, r196, r128
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r198, r17, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r202, r190, r156
	mma_16x16x16f16 r124, r202, r194, r124
	mma_16x16x16f16 r156, r204, r192, r156
	mma_16x16x16f16 r124, r204, r196, r124
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r202, r18, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r206, r190, r152
	mma_16x16x16f16 r120, r206, r194, r120
	mma_16x16x16f16 r152, r208, r192, r152
	mma_16x16x16f16 r120, r208, r196, r120
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r206, r19, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r198, r190, r148
	mma_16x16x16f16 r116, r198, r194, r116
	mma_16x16x16f16 r148, r200, r192, r148
	mma_16x16x16f16 r116, r200, r196, r116
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r198, r20, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r202, r190, r144
	mma_16x16x16f16 r112, r202, r194, r112
	mma_16x16x16f16 r144, r204, r192, r144
	mma_16x16x16f16 r112, r204, r196, r112
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r202, r21, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r206, r190, r140
	mma_16x16x16f16 r108, r206, r194, r108
	mma_16x16x16f16 r140, r208, r192, r140
	mma_16x16x16f16 r108, r208, r196, r108
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r206, r34, 0x0
	add_i32 r34, 0x4000, r15
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r190, r136
	mma_16x16x16f16 r104, r198, r194, r104
	mma_16x16x16f16 r136, r200, r192, r136
	mma_16x16x16f16 r104, r200, r196, r104
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r198, r34, 0x0
	add_i32 r34, 0x4000, r16
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r190, r132
	mma_16x16x16f16 r100, r202, r194, r100
	mma_16x16x16f16 r132, r204, r192, r132
	mma_16x16x16f16 r100, r204, r196, r100
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r202, r34, 0x0
	add_i32 r34, 0x4000, r17
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r206, r190, r96
	mma_16x16x16f16 r64, r206, r194, r64
	mma_16x16x16f16 r96, r208, r192, r96
	mma_16x16x16f16 r64, r208, r196, r64
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r206, r34, 0x0
	add_i32 r34, 0x4000, r18
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r198, r190, r92
	mma_16x16x16f16 r60, r198, r194, r60
	mma_16x16x16f16 r92, r200, r192, r92
	mma_16x16x16f16 r60, r200, r196, r60
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r198, r34, 0x0
	add_i32 r34, 0x4000, r19
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r190, r88
	mma_16x16x16f16 r56, r202, r194, r56
	mma_16x16x16f16 r88, r204, r192, r88
	mma_16x16x16f16 r56, r204, r196, r56
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r202, r34, 0x0
	add_i32 r34, 0x4000, r20
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r190, r84
	mma_16x16x16f16 r52, r206, r194, r52
	mma_16x16x16f16 r84, r208, r192, r84
	mma_16x16x16f16 r52, r208, r196, r52
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r206, r34, 0x0
	add_i32 r34, 0x4000, r21
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r48, r198, r194, r48
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r196, r48
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r198, r34, 0x0
	add_i32 r34, 0x4000, r22
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r190, r76
	mma_16x16x16f16 r44, r202, r194, r44
	mma_16x16x16f16 r76, r204, r192, r76
	mma_16x16x16f16 r44, r204, r196, r44
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r202, r22, 0x0
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r190, r72
	mma_16x16x16f16 r40, r206, r194, r40
	mma_16x16x16f16 r72, r208, r192, r72
	mma_16x16x16f16 r40, r208, r196, r40
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r206, r23, 0x0
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r198, r190, r68
	mma_16x16x16f16 r36, r198, r194, r36
	mma_16x16x16f16 r68, r200, r192, r68
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r190, r24, 0x0
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	mma_16x16x16f16 r36, r200, r196, r36
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r194, r25, 0x0
	lds_b128 r198, r26, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(4)
	mma_16x16x16f16 r168, r202, r182, r168
	mma_16x16x16f16 r128, r202, r186, r128
	mma_16x16x16f16 r168, r204, r184, r168
	mma_16x16x16f16 r128, r204, r188, r128
	arrive bsmcnt(3)
	mma_16x16x16f16 r156, r206, r182, r156
	mma_16x16x16f16 r124, r206, r186, r124
	mma_16x16x16f16 r156, r208, r184, r156
	mma_16x16x16f16 r124, r208, r188, r124
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r190, r182, r152
	mma_16x16x16f16 r120, r190, r186, r120
	mma_16x16x16f16 r152, r192, r184, r152
	mma_16x16x16f16 r120, r192, r188, r120
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r190, r27, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r194, r182, r148
	mma_16x16x16f16 r116, r194, r186, r116
	mma_16x16x16f16 r148, r196, r184, r148
	mma_16x16x16f16 r116, r196, r188, r116
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r194, r28, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r182, r144
	mma_16x16x16f16 r112, r198, r186, r112
	mma_16x16x16f16 r144, r200, r184, r144
	mma_16x16x16f16 r112, r200, r188, r112
	.loc	2 359 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:359:43
	lds_b128 r198, r29, 0x0
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r182, r140
	mma_16x16x16f16 r108, r190, r186, r108
	mma_16x16x16f16 r140, r192, r184, r140
	mma_16x16x16f16 r108, r192, r188, r108
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r190, r34, 0x0
	add_i32 r34, 0x4000, r23
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r182, r136
	mma_16x16x16f16 r104, r194, r186, r104
	mma_16x16x16f16 r136, r196, r184, r136
	mma_16x16x16f16 r104, r196, r188, r104
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r194, r34, 0x0
	add_i32 r34, 0x4000, r24
	.loc	2 365 58                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:365:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r198, r182, r132
	mma_16x16x16f16 r100, r198, r186, r100
	mma_16x16x16f16 r132, r200, r184, r132
	mma_16x16x16f16 r100, r200, r188, r100
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r198, r34, 0x0
	add_i32 r34, 0x4000, r25
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r190, r182, r96
	mma_16x16x16f16 r64, r190, r186, r64
	mma_16x16x16f16 r96, r192, r184, r96
	mma_16x16x16f16 r64, r192, r188, r64
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r190, r34, 0x0
	add_i32 r34, 0x4000, r26
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r194, r182, r92
	mma_16x16x16f16 r60, r194, r186, r60
	mma_16x16x16f16 r92, r196, r184, r92
	mma_16x16x16f16 r60, r196, r188, r60
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r194, r34, 0x0
	add_i32 r34, 0x4000, r27
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r198, r182, r88
	mma_16x16x16f16 r56, r198, r186, r56
	mma_16x16x16f16 r88, r200, r184, r88
	mma_16x16x16f16 r56, r200, r188, r56
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r198, r34, 0x0
	add_i32 r34, 0x4000, r28
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r190, r182, r84
	mma_16x16x16f16 r52, r190, r186, r52
	mma_16x16x16f16 r84, r192, r184, r84
	mma_16x16x16f16 r52, r192, r188, r52
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r190, r34, 0x0
	add_i32 r34, 0x4000, r29
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r194, r182, r80
	mma_16x16x16f16 r48, r194, r186, r48
	mma_16x16x16f16 r80, r196, r184, r80
	mma_16x16x16f16 r48, r196, r188, r48
	.loc	2 373 43                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:373:43
	lds_b128 r194, r34, 0x0
	.loc	2 379 59                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:379:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r198, r182, r76
	mma_16x16x16f16 r44, r198, r186, r44
	mma_16x16x16f16 r76, r200, r184, r76
	mma_16x16x16f16 r44, r200, r188, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r72, r190, r182, r72
	mma_16x16x16f16 r40, r190, r186, r40
	mma_16x16x16f16 r72, r192, r184, r72
	mma_16x16x16f16 r40, r192, r188, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r68, r194, r182, r68
	mma_16x16x16f16 r36, r194, r186, r36
	mma_16x16x16f16 r68, r196, r184, r68
	mma_16x16x16f16 r36, r196, r188, r36
	.loc	2 387 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:387:9
	bra_cmsks LBB3_9
; %bb.38:                               ; %if.then817
                                        ;   in Loop: Header=BB3_10 Depth=1
.Ltmp421:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_9
.Ltmp422:
	.p2align	5
LBB3_39:                                ; %if.then222
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	mad_u32 r182, r34, 2, r172
	.loc	2 295 19 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:295:19
	snop 1
	ldg_b128 r190, r182, 0x80
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	.loc	2 294 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:294:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB3_20
LBB3_40:                                ; %if.then222.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 22 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	or_b32 r35, 0x20000, r34
	mad_u32 r182, r35, 2, r172
	.loc	2 295 19 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:295:19
	snop 1
	ldg_b128 r194, r182, 0x80
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 294 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:294:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB3_21
LBB3_41:                                ; %if.then222.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 22 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	or_b32 r35, r34, 32
	mad_u32 r182, r35, 2, r172
	.loc	2 295 19 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:295:19
	snop 1
	ldg_b128 r182, r182, 0x80
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	.loc	2 294 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:294:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB3_22
	bra LBB3_23
	.p2align	5
LBB3_42:                                ; %if.then570
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 22 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:22
	mad_u32 r160, r34, 2, r172
	.loc	2 350 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:350:21
	snop 1
	ldg_b128 r160, r160, 0x100
	shl_b64 r164, 0, 0
	shl_b64 r166, 0, 0
	.loc	2 349 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:349:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB3_34
LBB3_43:                                ; %if.then570.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 24 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:24
	or_b32 r35, 0x20000, r34
	mad_u32 r164, r35, 2, r172
	.loc	2 350 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:350:21
	snop 1
	ldg_b128 r164, r164, 0x100
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 349 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:349:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB3_35
LBB3_44:                                ; %if.then570.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 24 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:24
	or_b32 r35, r34, 32
	mad_u32 r174, r35, 2, r172
	.loc	2 350 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:350:21
	snop 1
	ldg_b128 r174, r174, 0x100
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 349 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:349:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB3_36
	bra LBB3_37
LBB3_45:                                ; %for.cond822.preheader
	.loc	2 0 24 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:24
	and_b32 r2, r1, 15
	smov_b32 s3, 0x1e0
	and_or_b32 r6, r4, s3, r2
	sshl_b32 s3, 7, s6
	ssub_co_i32 s2, s2, s3
	sadd_co_i32 s14, s2, s0
	sadd_co_i32 s2, s1, s3
	add_u32 r4, s2, r6
	sashr_i32 s2, 31, s1
	mov_b32 r11, s2
	mov_b32 r10, s1
	mov_b32 r8, 0x80
	mad_u32 r8, s6, r8, r10
	add_co_u32 r8, r8, r6
	sashr_i32 s1, 31, s0
	.loc	2 393 92 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:393:92
	cmp_lt_i32 s2, r6, s14
	shl_b64 r2, 0, s0
	addc_co_u32 r9, r9, 0
	sub_co_u32 r8, r8, r2
	subb_co_u32 r9, r9, r3
	mov_b32 r7, 0
	sashr_i32 s15, 31, s14
	mov_b32 r3, 0
	.loc	2 393 9 is_stmt 0               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:393:9
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_49
; %bb.46:                               ; %if.then839
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sub_u32 r2, r4, s0
	.loc	2 395 15 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:395:15
	cmp_ge_i32 s20, r4, s0
	cmp_gt_i32 s22, 0x8e0, r2
	mov_b32 r3, 0
	.loc	2 395 148 is_stmt 0             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:395:148
	snop 2
	sand_b64 s22, s20, s22
	and_xmsk s20, s22
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then867
	.loc	2 0 148                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:148
	shl_b64 r2, 2, r8
	add_co_u32 r10, s12, r2
	mov_b32 r2, s13
	addc_co_u32 r11, r2, r3
	.loc	2 396 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:396:21
	snop 1
	ldg_b32 r3, r10, 0x0
LBB3_48:                                ; %Flow794
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s20
LBB3_49:                                ; %for.inc892
	sor_b64 xmsk, xmsk, s18
	.loc	2 393 63 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:393:63
	or_b32 r10, r6, 16
	mov_b32 r11, r7
	.loc	2 393 92 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:393:92
	cmp_lt_i64 s20, r10, s14
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:393:9
	snop 2
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_53
; %bb.50:                               ; %if.then839.1
	.loc	2 395 102 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:395:102
	add_u32 r2, r4, 16
	.loc	2 395 15 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:395:15
	cmp_ge_i32 s20, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x8e0, r2
	mov_b32 r2, 0
	.loc	2 395 148                       ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:395:148
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then867.1
	.loc	2 0 148                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:148
	shl_b64 r8, 2, r8
	add_co_u32 r8, s12, r8
	mov_b32 r2, s13
	addc_co_u32 r9, r2, r9
	.loc	2 396 21 is_stmt 1              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:396:21
	snop 1
	ldg_b32 r2, r8, 0x40
LBB3_52:                                ; %Flow
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s0
LBB3_53:                                ; %for.inc892.1
	sor_b64 xmsk, xmsk, s18
	shl_b32 r1, 11, r1
	sand_b64 s0, s8, s4
	sshl_b32 s4, 18, s6
	and_b32 r0, 0xf0000, r0
	and_b32 r1, 0x7800, r1
	sshl_b32 s5, 8, s16
	and_b32 r4, r5, 12
	or3_b32 r0, r1, r0, r4
	sadd_co_i32 s4, s4, s5
	add_u32 r0, s4, r0
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_119
; %bb.54:                               ; %if.end969
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_120
LBB3_55:                                ; %for.inc1008
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_121
LBB3_56:                                ; %if.end969.1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_122
LBB3_57:                                ; %for.inc1008.1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_123
LBB3_58:                                ; %if.end969.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_124
LBB3_59:                                ; %for.inc1008.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_125
LBB3_60:                                ; %if.end969.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_126
LBB3_61:                                ; %for.inc1008.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_127
LBB3_62:                                ; %if.end969.4
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_128
LBB3_63:                                ; %for.inc1008.4
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_129
LBB3_64:                                ; %if.end969.5
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_130
LBB3_65:                                ; %for.inc1008.5
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_131
LBB3_66:                                ; %if.end969.6
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_132
LBB3_67:                                ; %for.inc1008.6
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_133
LBB3_68:                                ; %if.end969.7
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_70
LBB3_69:                                ; %if.then977.7
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
LBB3_70:                                ; %for.inc1008.7
	.loc	2 405 66                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:66
	or_b32 r1, r6, 16
	.loc	2 405 95 is_stmt 0              ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:95
	cmp_lt_i32 s4, r1, s14
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	snop 2
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_134
; %bb.71:                               ; %if.end969.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_135
LBB3_72:                                ; %for.inc1008.8
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_136
LBB3_73:                                ; %if.end969.9
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_137
LBB3_74:                                ; %for.inc1008.9
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_138
LBB3_75:                                ; %if.end969.10
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_139
LBB3_76:                                ; %for.inc1008.10
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_140
LBB3_77:                                ; %if.end969.11
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_141
LBB3_78:                                ; %for.inc1008.11
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_142
LBB3_79:                                ; %if.end969.12
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_143
LBB3_80:                                ; %for.inc1008.12
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_144
LBB3_81:                                ; %if.end969.13
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_145
LBB3_82:                                ; %for.inc1008.13
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_146
LBB3_83:                                ; %if.end969.14
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_147
LBB3_84:                                ; %for.inc1008.14
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 405 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB3_148
LBB3_85:                                ; %if.end969.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_149
LBB3_86:                                ; %for.inc1008.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_150
LBB3_87:                                ; %if.end1089
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_151
LBB3_88:                                ; %for.inc1129
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_152
LBB3_89:                                ; %if.end1089.1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_153
LBB3_90:                                ; %for.inc1129.1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_154
LBB3_91:                                ; %if.end1089.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_155
LBB3_92:                                ; %for.inc1129.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_156
LBB3_93:                                ; %if.end1089.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_157
LBB3_94:                                ; %for.inc1129.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_158
LBB3_95:                                ; %if.end1089.4
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_159
LBB3_96:                                ; %for.inc1129.4
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_160
LBB3_97:                                ; %if.end1089.5
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_161
LBB3_98:                                ; %for.inc1129.5
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_162
LBB3_99:                                ; %if.end1089.6
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_163
LBB3_100:                               ; %for.inc1129.6
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB3_164
LBB3_101:                               ; %if.end1089.7
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_165
LBB3_102:                               ; %for.inc1129.7
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_166
LBB3_103:                               ; %if.end1089.8
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_167
LBB3_104:                               ; %for.inc1129.8
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_168
LBB3_105:                               ; %if.end1089.9
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_169
LBB3_106:                               ; %for.inc1129.9
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_170
LBB3_107:                               ; %if.end1089.10
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_171
LBB3_108:                               ; %for.inc1129.10
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_172
LBB3_109:                               ; %if.end1089.11
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_173
LBB3_110:                               ; %for.inc1129.11
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_174
LBB3_111:                               ; %if.end1089.12
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_175
LBB3_112:                               ; %for.inc1129.12
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_176
LBB3_113:                               ; %if.end1089.13
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_177
LBB3_114:                               ; %for.inc1129.13
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_178
LBB3_115:                               ; %if.end1089.14
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_179
LBB3_116:                               ; %for.inc1129.14
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 433 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB3_180
LBB3_117:                               ; %if.end1089.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_181
LBB3_118:                               ; %for.inc1129.15
	.loc	2 459 1                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:459:1
	snop 1
	endk
LBB3_119:                               ; %if.then912
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r169, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r168, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r170, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r171, r3
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp424:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp425:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp427:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_55
LBB3_120:                               ; %if.then977
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	mad_i32 r8, r0, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_56
LBB3_121:                               ; %if.then912.1
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r157, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r156, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r158, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r159, r3
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp429:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp432:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_57
LBB3_122:                               ; %if.then977.1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r8, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_58
LBB3_123:                               ; %if.then912.2
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r153, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r152, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r154, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r155, r3
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp434:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp437:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_59
LBB3_124:                               ; %if.then977.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r8, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_60
LBB3_125:                               ; %if.then912.3
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r149, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r148, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r150, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r151, r3
.Ltmp438:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp439:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp442:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_61
LBB3_126:                               ; %if.then977.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r8, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_62
LBB3_127:                               ; %if.then912.4
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r145, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r144, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r146, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r147, r3
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp444:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp447:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_63
LBB3_128:                               ; %if.then977.4
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r8, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_64
LBB3_129:                               ; %if.then912.5
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r141, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r140, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r142, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r143, r3
.Ltmp448:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp449:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp452:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_65
LBB3_130:                               ; %if.then977.5
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_66
LBB3_131:                               ; %if.then912.6
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r137, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r136, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r138, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r139, r3
.Ltmp453:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp454:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp455:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp457:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_67
LBB3_132:                               ; %if.then977.6
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r8, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_68
LBB3_133:                               ; %if.then912.7
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r133, r3
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r132, r3
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r7, r134, r3
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r8, r135, r3
.Ltmp458:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp459:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp462:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB3_69
	bra LBB3_70
LBB3_134:                               ; %if.then912.8
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r129, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r128, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r130, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r131, r2
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp464:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp467:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_72
LBB3_135:                               ; %if.then977.8
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_73
LBB3_136:                               ; %if.then912.9
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r125, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r124, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r126, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r127, r2
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp469:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp472:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_74
LBB3_137:                               ; %if.then977.9
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_75
LBB3_138:                               ; %if.then912.10
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r121, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r120, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r122, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r123, r2
.Ltmp473:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp474:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp475:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp477:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_76
LBB3_139:                               ; %if.then977.10
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_77
LBB3_140:                               ; %if.then912.11
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r117, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r116, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r118, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r119, r2
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp479:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp482:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_78
LBB3_141:                               ; %if.then977.11
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_79
LBB3_142:                               ; %if.then912.12
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r113, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r112, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r114, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r115, r2
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp484:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp485:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp487:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_80
LBB3_143:                               ; %if.then977.12
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_81
LBB3_144:                               ; %if.then912.13
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r109, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r108, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r110, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r111, r2
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp489:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp490:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp492:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_82
LBB3_145:                               ; %if.then977.13
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_83
LBB3_146:                               ; %if.then912.14
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r105, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r104, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r106, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r107, r2
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp494:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp495:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp497:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_84
LBB3_147:                               ; %if.then977.14
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 405 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:405:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_85
LBB3_148:                               ; %if.then912.15
	.loc	2 411 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:411:22
	arrive gvmcnt(0)
	mul_f32 r5, r101, r2
	.loc	2 410 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:410:22
	mul_f32 r1, r100, r2
	.loc	2 412 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:412:22
	mul_f32 r6, r102, r2
	.loc	2 413 22                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:413:22
	mul_f32 r7, r103, r2
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp499:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp500:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp502:
	.loc	2 421 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:421:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_86
LBB3_149:                               ; %if.then977.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8070, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 425 232 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:425:232
	snop 1
	stg_b64 r6, 0x0, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_87
LBB3_150:                               ; %if.then1028
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r97, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r96, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r98, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r7, r99, r3
.Ltmp503:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp504:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp505:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp507:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_88
LBB3_151:                               ; %if.then1097
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	mad_i32 r6, r0, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_89
LBB3_152:                               ; %if.then1028.1
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r93, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r92, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r94, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r7, r95, r3
.Ltmp508:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp509:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp510:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp511:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp512:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_90
LBB3_153:                               ; %if.then1097.1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_91
LBB3_154:                               ; %if.then1028.2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r89, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r88, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r90, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r7, r91, r3
.Ltmp513:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp514:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp515:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp517:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_92
LBB3_155:                               ; %if.then1097.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_93
LBB3_156:                               ; %if.then1028.3
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r85, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r84, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r86, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r7, r87, r3
.Ltmp518:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp519:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp520:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp521:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp522:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_94
LBB3_157:                               ; %if.then1097.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_95
LBB3_158:                               ; %if.then1028.4
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r81, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r80, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r82, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r7, r83, r3
.Ltmp523:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp524:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp525:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp526:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp527:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_96
LBB3_159:                               ; %if.then1097.4
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_97
LBB3_160:                               ; %if.then1028.5
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r77, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r76, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r78, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r7, r79, r3
.Ltmp528:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp529:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp530:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp531:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp532:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_98
LBB3_161:                               ; %if.then1097.5
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_99
LBB3_162:                               ; %if.then1028.6
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r73, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r72, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r74, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r7, r75, r3
.Ltmp533:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp534:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp535:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp536:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp537:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_100
LBB3_163:                               ; %if.then1097.6
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_101
LBB3_164:                               ; %if.then1028.7
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	arrive gvmcnt(0)
	mul_f32 r5, r69, r3
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r68, r3
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	mul_f32 r6, r70, r3
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r3, r71, r3
.Ltmp538:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp539:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp540:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp541:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp542:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_102
LBB3_165:                               ; %if.then1097.7
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_103
LBB3_166:                               ; %if.then1028.8
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r66, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r64, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r65, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r6, r67, r2
.Ltmp543:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp544:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp545:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp546:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp547:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_104
LBB3_167:                               ; %if.then1097.8
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_105
LBB3_168:                               ; %if.then1028.9
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r62, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r60, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r61, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r6, r63, r2
.Ltmp548:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp549:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp550:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp551:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp552:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_106
LBB3_169:                               ; %if.then1097.9
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_107
LBB3_170:                               ; %if.then1028.10
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r58, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r56, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r57, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r6, r59, r2
.Ltmp553:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp554:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp555:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp556:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp557:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_108
LBB3_171:                               ; %if.then1097.10
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_109
LBB3_172:                               ; %if.then1028.11
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r54, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r52, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r53, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r6, r55, r2
.Ltmp558:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp559:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp560:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp561:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp562:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_110
LBB3_173:                               ; %if.then1097.11
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_111
LBB3_174:                               ; %if.then1028.12
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r50, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r48, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r49, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r6, r51, r2
.Ltmp563:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp564:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp565:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp566:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp567:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_112
LBB3_175:                               ; %if.then1097.12
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_113
LBB3_176:                               ; %if.then1028.13
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r46, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r44, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r45, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r6, r47, r2
.Ltmp568:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp569:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp570:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp571:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp572:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_114
LBB3_177:                               ; %if.then1097.13
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_115
LBB3_178:                               ; %if.then1028.14
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r42, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r40, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r41, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r6, r43, r2
.Ltmp573:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp574:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp575:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp576:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp577:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_116
LBB3_179:                               ; %if.then1097.14
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 433 9                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:433:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB3_117
LBB3_180:                               ; %if.then1028.15
	.loc	2 440 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:440:24
	arrive gvmcnt(0)
	mul_f32 r5, r38, r2
	.loc	2 438 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:438:24
	mul_f32 r1, r36, r2
	.loc	2 439 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:439:24
	mul_f32 r3, r37, r2
	.loc	2 441 24                        ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:441:24
	mul_f32 r2, r39, r2
.Ltmp578:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp579:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp580:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp581:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp582:
	.loc	2 449 9 is_stmt 1               ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:449:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB3_118
LBB3_181:                               ; %if.then1097.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:0:9
	add_u32 r0, 0x8070, r0
	mad_i32 r0, r0, 2, s10
	.loc	2 453 240 is_stmt 1             ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:453:240
	snop 1
	stg_b64 r0, 0x100, r4 devc
	.loc	2 459 1                         ; race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp:459:1
	snop 2
	endk
.Ltmp583:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 20656
; NumMTRegsForWarps/PEU: 212
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
	.byte	194                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	193                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	195                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	196                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.quad	.Ltmp415                        ; DW_AT_low_pc
	.long	.Ltmp416-.Ltmp415               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	289                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c4:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp415                        ; DW_AT_low_pc
	.long	.Ltmp416-.Ltmp415               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1d9:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp417                        ; DW_AT_low_pc
	.long	.Ltmp418-.Ltmp417               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	331                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ee:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp417                        ; DW_AT_low_pc
	.long	.Ltmp418-.Ltmp417               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x203:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp419                        ; DW_AT_low_pc
	.long	.Ltmp420-.Ltmp419               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	343                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x218:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp419                        ; DW_AT_low_pc
	.long	.Ltmp420-.Ltmp419               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x22d:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp421                        ; DW_AT_low_pc
	.long	.Ltmp422-.Ltmp421               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	388                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x242:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp421                        ; DW_AT_low_pc
	.long	.Ltmp422-.Ltmp421               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x257:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	414                             ; DW_AT_call_line
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
	.short	415                             ; DW_AT_call_line
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
	.short	442                             ; DW_AT_call_line
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
	.short	443                             ; DW_AT_call_line
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges14:
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
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
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
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges18:
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
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v062_step1_epilogue_prune_sc-16g/codegen/v062_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=153
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=174
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=184
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=198
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=204
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=220
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=238
.Linfo_string9:
	.asciz	"kernel_kernel"                 ; string offset=256
.Linfo_string10:
	.asciz	"kernel_kernel_1"               ; string offset=270
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
    .mtreg_count:    212
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
