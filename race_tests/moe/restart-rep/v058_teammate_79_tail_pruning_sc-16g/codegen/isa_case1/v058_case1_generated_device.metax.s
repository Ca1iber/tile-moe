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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s12, s5
.Ltmp4:
	.loc	2 18 19 prologue_end            ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:18:19
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
	.loc	2 19 20                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:19:20
	sshl_b64 s0, 2, s8
	sadd_co_u32 s2, s22, s0
	saddc_co_u32 s3, s23, s1
	.loc	2 20 22                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:20:22
	sadd_co_u32 s0, s20, s0
	saddc_co_u32 s1, s21, s1
	sshl_b32 s5, 18, s5
	add_u32 r2, r2, s5
	.loc	2 33 157                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:33:157
	or_b32 r28, r2, r26
	or_b32 r29, 0x8000, r28
	.loc	2 33 216 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:33:216
	or_b32 r2, r28, r27
	or_b32 r150, r29, r27
	.loc	2 33 59                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:33:59
	shl_b32 r2, 1, r2
	shl_b32 r3, 1, r150
	.loc	2 19 20 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:19:20
	ldu_b32 s2, s2, 0x0
	.loc	2 33 41                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:33:41
	ldg_b128 r152, s24, r2, 0x0
	ldg_b128 r156, s24, r3, 0x0
	.loc	2 33 59 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:33:59
	or_b32 r3, r2, 64
	or_b32 r2, 0x10040, r2
	.loc	2 20 22 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:20:22
	ldu_b32 s3, s0, 0x0
	.loc	2 33 41                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:33:41
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
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:35:3
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
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:0
	shl_b64 r30, 0, 0
	shl_b64 r190, 0, 0
	or_b32 r10, r19, r18
	or_b32 r18, r19, r36
	or3_b32 r19, r25, r20, r36
	or3_b32 r20, r25, r22, r36
	or3_b32 r22, r25, r24, r36
	or3_b32 r24, r25, r34, r36
	or3_b32 r25, r25, r35, r36
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:35:3
	add_co_u32 r186, 0xc0, r26
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:0
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
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:35:3
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
	.loc	2 35 31                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:35:31
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
	.loc	2 35 3                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:35:3
	bra_smsks LBB2_76
LBB2_2:                                 ; %for.cond64.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 38 362 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:38:362
	add_co_u32 r26, r176, s24
	add_u32 r27, 0x10000, r26
	mad_i32 r28, r26, 2, s16
	mad_i32 r204, r27, 2, s16
	.loc	2 38 345 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:38:345
	snop 0
	ldg_b128 r206, r28, 0x0
	ldg_b128 r210, r204, 0x0
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r206
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r210
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_6
; %bb.3:                                ; %for.inc174
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_9
LBB2_4:                                 ; %for.inc174.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_12
LBB2_5:                                 ; %for.inc174.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 38                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmsks LBB2_15
	bra LBB2_18
	.p2align	5
LBB2_6:                                 ; %land.lhs.true
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:11
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:43:47
	ldg_b128 r200, r186, -0x40
LBB2_8:                                 ; %Flow317
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_4
LBB2_9:                                 ; %land.lhs.true.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:11
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB2_11
; %bb.10:                               ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:43:47
	ldg_b128 r196, r182, -0x88
LBB2_11:                                ; %Flow316
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_5
LBB2_12:                                ; %land.lhs.true.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:11
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:43:47
	ldg_b128 r192, r186, 0x0
LBB2_14:                                ; %Flow315
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 42 38 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:38
	and_xmsk s42, s14
	snop 0
	bra_xmskz LBB2_18
LBB2_15:                                ; %land.lhs.true.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 42 11 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:42:11
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB2_17
; %bb.16:                               ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:11
	add_co_u32 r188, r184, s24
	mov_b32 r28, s25
	addc_co_u32 r189, r177, r28
	shl_b64 r28, 1, r188
	or_b32 r28, r28, 64
	add_co_u32 r188, s0, r28
	mov_b32 r28, s1
	addc_co_u32 r189, r28, r29
	.loc	2 43 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:43:47
	snop 1
	ldg_b128 r188, r188, 0x0
LBB2_17:                                ; %Flow314
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
LBB2_18:                                ; %for.inc174.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s42
	.loc	2 48 371 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:48:371
	mad_i32 r28, r26, 2, s18
	mad_i32 r204, r27, 2, s18
	.loc	2 48 354 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:48:354
	snop 0
	ldg_b128 r206, r28, 0x0
	.loc	2 52 369 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:52:369
	mad_i32 r28, r26, 2, s26
	.loc	2 48 354                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:48:354
	ldg_b128 r210, r204, 0x0
	.loc	2 52 369                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:52:369
	mad_i32 r204, r27, 2, s26
	.loc	2 52 354 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:52:354
	ldg_b128 r214, r28, 0x0
	snop 0
	ldg_b128 r218, r204, 0x0
	.loc	2 48 354 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:48:354
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r210
	.loc	2 52 354                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:52:354
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r218
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_22
; %bb.19:                               ; %for.inc355
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_25
LBB2_20:                                ; %for.inc355.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_28
LBB2_21:                                ; %for.inc355.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 39                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmsks LBB2_31
	bra LBB2_34
	.p2align	5
LBB2_22:                                ; %land.lhs.true308
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:11
	and_xmsk s44, s10
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %if.then323
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:57:47
	ldg_b128 r200, r178, -0x40
LBB2_24:                                ; %Flow313
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_20
LBB2_25:                                ; %land.lhs.true308.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:11
	and_xmsk s44, s8
	snop 0
	bra_xmskz LBB2_27
; %bb.26:                               ; %if.then323.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:57:47
	ldg_b128 r196, r180, -0x8
LBB2_27:                                ; %Flow312
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_21
LBB2_28:                                ; %land.lhs.true308.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:11
	and_xmsk s44, s10
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.then323.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:57:47
	ldg_b128 r192, r178, 0x0
LBB2_30:                                ; %Flow311
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
	sor_b64 xmsk, xmsk, s42
	.loc	2 56 39 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:39
	and_xmsk s42, s20
	snop 0
	bra_xmskz LBB2_34
LBB2_31:                                ; %land.lhs.true308.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 56 11 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:56:11
	and_xmsk s44, s8
	snop 0
	bra_xmskz LBB2_33
; %bb.32:                               ; %if.then323.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:11
	add_co_u32 r188, r150, s24
	mov_b32 r28, s25
	addc_co_u32 r189, r151, r28
	shl_b64 r28, 1, r188
	or_b32 r28, r28, 64
	add_co_u32 r188, s0, r28
	mov_b32 r28, s1
	addc_co_u32 r189, r28, r29
	.loc	2 57 47 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:57:47
	snop 1
	ldg_b128 r188, r188, 0x0
LBB2_33:                                ; %Flow310
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s44
LBB2_34:                                ; %for.inc355.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s42
	.loc	2 62 370 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:62:370
	mad_i32 r28, r26, 2, s22
	mad_i32 r204, r27, 2, s22
	.loc	2 62 355 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:62:355
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
	.loc	2 65 9                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:65:9
	and_xmsk s42, s30
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %for.cond434.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r204, r10, 0x0
	lds_b128 r208, r11, 0x0
	lds_b128 r212, r12, 0x0
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	add_i32 r28, 0x4000, r10
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r204, r152, r168
	mma_16x16x16f16 r86, r204, r156, r86
	mma_16x16x16f16 r168, r206, r154, r168
	mma_16x16x16f16 r86, r206, r158, r86
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r204, r13, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r208, r152, r142
	mma_16x16x16f16 r78, r208, r156, r78
	mma_16x16x16f16 r142, r210, r154, r142
	mma_16x16x16f16 r78, r210, r158, r78
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r208, r14, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r212, r152, r134
	mma_16x16x16f16 r70, r212, r156, r70
	mma_16x16x16f16 r134, r214, r154, r134
	mma_16x16x16f16 r70, r214, r158, r70
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r212, r15, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r204, r152, r126
	mma_16x16x16f16 r62, r204, r156, r62
	mma_16x16x16f16 r126, r206, r154, r126
	mma_16x16x16f16 r62, r206, r158, r62
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r204, r16, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r208, r152, r118
	mma_16x16x16f16 r54, r208, r156, r54
	mma_16x16x16f16 r118, r210, r154, r118
	mma_16x16x16f16 r54, r210, r158, r54
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r208, r17, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r212, r152, r110
	mma_16x16x16f16 r46, r212, r156, r46
	mma_16x16x16f16 r110, r214, r154, r110
	mma_16x16x16f16 r46, r214, r158, r46
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r11
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r204, r152, r102
	mma_16x16x16f16 r38, r204, r156, r38
	mma_16x16x16f16 r102, r206, r154, r102
	mma_16x16x16f16 r38, r206, r158, r38
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r12
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r208, r152, r94
	mma_16x16x16f16 r30, r208, r156, r30
	mma_16x16x16f16 r94, r210, r154, r94
	mma_16x16x16f16 r30, r210, r158, r30
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r13
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r152, r172
	mma_16x16x16f16 r90, r212, r156, r90
	mma_16x16x16f16 r172, r214, r154, r172
	mma_16x16x16f16 r90, r214, r158, r90
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r14
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r204, r152, r146
	mma_16x16x16f16 r82, r204, r156, r82
	mma_16x16x16f16 r146, r206, r154, r146
	mma_16x16x16f16 r82, r206, r158, r82
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r15
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r208, r152, r138
	mma_16x16x16f16 r74, r208, r156, r74
	mma_16x16x16f16 r138, r210, r154, r138
	mma_16x16x16f16 r74, r210, r158, r74
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r16
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r212, r152, r130
	mma_16x16x16f16 r66, r212, r156, r66
	mma_16x16x16f16 r130, r214, r154, r130
	mma_16x16x16f16 r66, r214, r158, r66
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r17
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r204, r152, r122
	mma_16x16x16f16 r58, r204, r156, r58
	mma_16x16x16f16 r122, r206, r154, r122
	mma_16x16x16f16 r58, r206, r158, r58
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r18
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r208, r152, r114
	mma_16x16x16f16 r50, r208, r156, r50
	mma_16x16x16f16 r114, r210, r154, r114
	mma_16x16x16f16 r50, r210, r158, r50
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r208, r18, 0x0
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r212, r152, r106
	mma_16x16x16f16 r42, r212, r156, r42
	mma_16x16x16f16 r106, r214, r154, r106
	mma_16x16x16f16 r42, r214, r158, r42
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r212, r19, 0x0
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r204, r152, r98
	mma_16x16x16f16 r34, r204, r156, r34
	mma_16x16x16f16 r98, r206, r154, r98
	mma_16x16x16f16 r34, r206, r158, r34
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r204, r20, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r208, r160, r168
	mma_16x16x16f16 r86, r208, r164, r86
	mma_16x16x16f16 r168, r210, r162, r168
	mma_16x16x16f16 r86, r210, r166, r86
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r208, r21, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r212, r160, r142
	mma_16x16x16f16 r78, r212, r164, r78
	mma_16x16x16f16 r142, r214, r162, r142
	mma_16x16x16f16 r78, r214, r166, r78
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r212, r22, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r204, r160, r134
	mma_16x16x16f16 r70, r204, r164, r70
	mma_16x16x16f16 r134, r206, r162, r134
	mma_16x16x16f16 r70, r206, r166, r70
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r204, r23, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r208, r160, r126
	mma_16x16x16f16 r62, r208, r164, r62
	mma_16x16x16f16 r126, r210, r162, r126
	mma_16x16x16f16 r62, r210, r166, r62
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r208, r24, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r212, r160, r118
	mma_16x16x16f16 r54, r212, r164, r54
	mma_16x16x16f16 r118, r214, r162, r118
	mma_16x16x16f16 r54, r214, r166, r54
	.loc	2 68 45                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:68:45
	lds_b128 r212, r25, 0x0
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r204, r160, r110
	mma_16x16x16f16 r46, r204, r164, r46
	mma_16x16x16f16 r110, r206, r162, r110
	mma_16x16x16f16 r46, r206, r166, r46
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r19
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r208, r160, r102
	mma_16x16x16f16 r38, r208, r164, r38
	mma_16x16x16f16 r102, r210, r162, r102
	mma_16x16x16f16 r38, r210, r166, r38
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r20
	.loc	2 74 57                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:74:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r212, r160, r94
	mma_16x16x16f16 r30, r212, r164, r30
	mma_16x16x16f16 r94, r214, r162, r94
	mma_16x16x16f16 r30, r214, r166, r30
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r21
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r204, r160, r172
	mma_16x16x16f16 r90, r204, r164, r90
	mma_16x16x16f16 r172, r206, r162, r172
	mma_16x16x16f16 r90, r206, r166, r90
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r22
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r208, r160, r146
	mma_16x16x16f16 r82, r208, r164, r82
	mma_16x16x16f16 r146, r210, r162, r146
	mma_16x16x16f16 r82, r210, r166, r82
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r23
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r212, r160, r138
	mma_16x16x16f16 r74, r212, r164, r74
	mma_16x16x16f16 r138, r214, r162, r138
	mma_16x16x16f16 r74, r214, r166, r74
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r212, r28, 0x0
	add_i32 r28, 0x4000, r24
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r204, r160, r130
	mma_16x16x16f16 r66, r204, r164, r66
	mma_16x16x16f16 r130, r206, r162, r130
	mma_16x16x16f16 r66, r206, r166, r66
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r25
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r208, r160, r122
	mma_16x16x16f16 r58, r208, r164, r58
	mma_16x16x16f16 r122, r210, r162, r122
	mma_16x16x16f16 r58, r210, r166, r58
	.loc	2 82 47                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:82:47
	lds_b128 r208, r28, 0x0
	.loc	2 88 56                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:88:56
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
	.loc	2 0 56 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s42
.Ltmp7:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 100 363                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:100:363
	add_u32 r28, r26, 64
	add_u32 r29, 0x10040, r26
	mad_i32 r204, r28, 2, s16
	mad_i32 r206, r29, 2, s16
	.loc	2 102 16                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:102:16
	mov_b32 r212, 0x780
	.loc	2 100 346                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:100:346
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	.loc	2 102 16                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:102:16
	mov_b32 r213, 0
	cmp_lg_u64 s42, s24, r212
	scmp_eq_u64 0x780, s24
	.loc	2 100 346                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:100:346
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r208
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r204
	.loc	2 102 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:102:9
	bra_smsks LBB2_54
; %bb.37:                               ; %for.cond677.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_41
; %bb.38:                               ; %for.inc730
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_44
LBB2_39:                                ; %for.inc730.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_47
LBB2_40:                                ; %for.inc730.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 40                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB2_50
	bra LBB2_53
	.p2align	5
LBB2_41:                                ; %land.lhs.true683
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %if.then698
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:106:48
	ldg_b128 r152, r186, 0x40
LBB2_43:                                ; %Flow308
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_39
LBB2_44:                                ; %land.lhs.true683.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.then698.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:106:48
	ldg_b128 r156, r182, -0x8
LBB2_46:                                ; %Flow307
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_40
LBB2_47:                                ; %land.lhs.true683.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.then698.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:106:48
	ldg_b128 r160, r186, 0x80
LBB2_49:                                ; %Flow306
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 105 40 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:40
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB2_53
LBB2_50:                                ; %land.lhs.true683.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 105 13 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:105:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_52
; %bb.51:                               ; %if.then698.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:13
	add_co_u32 r166, r184, s24
	mov_b32 r164, s25
	addc_co_u32 r167, r177, r164
	shl_b64 r164, 1, r166
	or_b32 r164, r164, 64
	add_co_u32 r166, s2, r164
	mov_b32 r164, s3
	addc_co_u32 r167, r164, r165
	.loc	2 106 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:106:48
	snop 1
	ldg_b128 r164, r166, 0x0
LBB2_52:                                ; %Flow304
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
LBB2_53:                                ; %Flow305
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB2_54:                                ; %if.end733
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 112 372 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:112:372
	mad_i32 r204, r26, 2, s34
	.loc	2 116 370                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:116:370
	mad_i32 r212, r28, 2, s26
	.loc	2 112 372                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:112:372
	mad_i32 r206, r27, 2, s34
	.loc	2 116 370                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:116:370
	mad_i32 r28, r29, 2, s26
	.loc	2 112 355                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:112:355
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	.loc	2 116 355                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:116:355
	ldg_b128 r212, r212, 0x0
	ldg_b128 r216, r28, 0x0
	.loc	2 118 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:118:9
	sandn_b64 cmsk, xmsk, s42
	.loc	2 112 355                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:112:355
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r208
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r204
	.loc	2 116 355                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:116:355
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r212
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r216
	.loc	2 118 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:118:9
	bra_cmsks LBB2_72
; %bb.55:                               ; %for.cond862.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_59
; %bb.56:                               ; %for.inc915
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_62
LBB2_57:                                ; %for.inc915.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_65
LBB2_58:                                ; %for.inc915.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 41                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB2_68
	bra LBB2_71
	.p2align	5
LBB2_59:                                ; %land.lhs.true868
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_61
; %bb.60:                               ; %if.then883
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:122:48
	ldg_b128 r152, r178, 0x40
LBB2_61:                                ; %Flow302
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_57
LBB2_62:                                ; %land.lhs.true868.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_64
; %bb.63:                               ; %if.then883.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:122:48
	ldg_b128 r156, r180, 0x78
LBB2_64:                                ; %Flow301
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_58
LBB2_65:                                ; %land.lhs.true868.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB2_67
; %bb.66:                               ; %if.then883.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:122:48
	ldg_b128 r160, r178, 0x80
LBB2_67:                                ; %Flow300
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 121 41 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:41
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB2_71
LBB2_68:                                ; %land.lhs.true868.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 121 13 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:121:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB2_70
; %bb.69:                               ; %if.then883.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:13
	add_co_u32 r164, r150, s24
	mov_b32 r28, s25
	addc_co_u32 r165, r151, r28
	shl_b64 r28, 1, r164
	or_b32 r28, r28, 64
	add_co_u32 r164, s2, r28
	mov_b32 r28, s3
	addc_co_u32 r165, r28, r29
	.loc	2 122 48 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:122:48
	snop 1
	ldg_b128 r164, r164, 0x0
LBB2_70:                                ; %Flow
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s46
LBB2_71:                                ; %Flow299
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB2_72:                                ; %if.end918
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 128 371 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:128:371
	mad_i32 r28, r26, 2, s36
	mad_i32 r26, r27, 2, s36
	.loc	2 128 356 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:128:356
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
	.loc	2 131 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:131:9
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB2_74
; %bb.73:                               ; %for.cond995.preheader.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r26, r10, 0x0
	lds_b128 r204, r11, 0x0
	lds_b128 r208, r12, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r26, r200, r168
	mma_16x16x16f16 r86, r26, r196, r86
	mma_16x16x16f16 r168, r28, r202, r168
	mma_16x16x16f16 r86, r28, r198, r86
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r26, r13, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r204, r200, r142
	mma_16x16x16f16 r78, r204, r196, r78
	mma_16x16x16f16 r142, r206, r202, r142
	mma_16x16x16f16 r78, r206, r198, r78
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r204, r14, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r208, r200, r134
	mma_16x16x16f16 r70, r208, r196, r70
	mma_16x16x16f16 r134, r210, r202, r134
	mma_16x16x16f16 r70, r210, r198, r70
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r208, r15, 0x0
	lds_b128 r212, r16, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r126, r26, r200, r126
	mma_16x16x16f16 r62, r26, r196, r62
	mma_16x16x16f16 r126, r28, r202, r126
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	add_i32 r26, 0x4000, r10
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	mma_16x16x16f16 r62, r28, r198, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r204, r200, r118
	mma_16x16x16f16 r54, r204, r196, r54
	mma_16x16x16f16 r118, r206, r202, r118
	mma_16x16x16f16 r54, r206, r198, r54
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r204, r17, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r208, r200, r110
	mma_16x16x16f16 r46, r208, r196, r46
	mma_16x16x16f16 r110, r210, r202, r110
	mma_16x16x16f16 r46, r210, r198, r46
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r11
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r212, r200, r102
	mma_16x16x16f16 r38, r212, r196, r38
	mma_16x16x16f16 r102, r214, r202, r102
	mma_16x16x16f16 r38, r214, r198, r38
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r12
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r204, r200, r94
	mma_16x16x16f16 r30, r204, r196, r30
	mma_16x16x16f16 r94, r206, r202, r94
	mma_16x16x16f16 r30, r206, r198, r30
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r13
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r208, r200, r172
	mma_16x16x16f16 r90, r208, r196, r90
	mma_16x16x16f16 r172, r210, r202, r172
	mma_16x16x16f16 r90, r210, r198, r90
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r14
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r212, r200, r146
	mma_16x16x16f16 r82, r212, r196, r82
	mma_16x16x16f16 r146, r214, r202, r146
	mma_16x16x16f16 r82, r214, r198, r82
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r15
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r204, r200, r138
	mma_16x16x16f16 r74, r204, r196, r74
	mma_16x16x16f16 r138, r206, r202, r138
	mma_16x16x16f16 r74, r206, r198, r74
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r16
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r208, r200, r130
	mma_16x16x16f16 r66, r208, r196, r66
	mma_16x16x16f16 r130, r210, r202, r130
	mma_16x16x16f16 r66, r210, r198, r66
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r17
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r212, r200, r122
	mma_16x16x16f16 r58, r212, r196, r58
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r26, r26, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	mma_16x16x16f16 r122, r214, r202, r122
	mma_16x16x16f16 r58, r214, r198, r58
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r204, r200, r114
	mma_16x16x16f16 r50, r204, r196, r50
	mma_16x16x16f16 r114, r206, r202, r114
	mma_16x16x16f16 r50, r206, r198, r50
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r204, r18, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r208, r200, r106
	mma_16x16x16f16 r42, r208, r196, r42
	mma_16x16x16f16 r106, r210, r202, r106
	mma_16x16x16f16 r42, r210, r198, r42
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r208, r19, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r26, r200, r98
	mma_16x16x16f16 r34, r26, r196, r34
	mma_16x16x16f16 r98, r28, r202, r98
	mma_16x16x16f16 r34, r28, r198, r34
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r26, r20, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r204, r192, r168
	mma_16x16x16f16 r86, r204, r188, r86
	mma_16x16x16f16 r168, r206, r194, r168
	mma_16x16x16f16 r86, r206, r190, r86
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r204, r21, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r208, r192, r142
	mma_16x16x16f16 r78, r208, r188, r78
	mma_16x16x16f16 r142, r210, r194, r142
	mma_16x16x16f16 r78, r210, r190, r78
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r208, r22, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r26, r192, r134
	mma_16x16x16f16 r70, r26, r188, r70
	mma_16x16x16f16 r134, r28, r194, r134
	mma_16x16x16f16 r70, r28, r190, r70
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r26, r23, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r204, r192, r126
	mma_16x16x16f16 r62, r204, r188, r62
	mma_16x16x16f16 r126, r206, r194, r126
	mma_16x16x16f16 r62, r206, r190, r62
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r204, r24, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r208, r192, r118
	mma_16x16x16f16 r54, r208, r188, r54
	mma_16x16x16f16 r118, r210, r194, r118
	mma_16x16x16f16 r54, r210, r190, r54
	.loc	2 134 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:134:47
	lds_b128 r208, r25, 0x0
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r26, r192, r110
	mma_16x16x16f16 r46, r26, r188, r46
	mma_16x16x16f16 r110, r28, r194, r110
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	add_i32 r26, 0x4000, r18
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	mma_16x16x16f16 r46, r28, r190, r46
	arrive bsmcnt(1)
	mma_16x16x16f16 r102, r204, r192, r102
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r19
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	mma_16x16x16f16 r38, r204, r188, r38
	mma_16x16x16f16 r102, r206, r194, r102
	mma_16x16x16f16 r38, r206, r190, r38
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r20
	.loc	2 140 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:140:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r208, r192, r94
	mma_16x16x16f16 r30, r208, r188, r30
	mma_16x16x16f16 r94, r210, r194, r94
	mma_16x16x16f16 r30, r210, r190, r30
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r21
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r192, r172
	mma_16x16x16f16 r90, r212, r188, r90
	mma_16x16x16f16 r172, r214, r194, r172
	mma_16x16x16f16 r90, r214, r190, r90
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r22
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r204, r192, r146
	mma_16x16x16f16 r82, r204, r188, r82
	mma_16x16x16f16 r146, r206, r194, r146
	mma_16x16x16f16 r82, r206, r190, r82
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r204, r26, 0x0
	add_i32 r26, 0x4000, r23
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r208, r192, r138
	mma_16x16x16f16 r74, r208, r188, r74
	mma_16x16x16f16 r138, r210, r194, r138
	mma_16x16x16f16 r74, r210, r190, r74
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r208, r26, 0x0
	add_i32 r26, 0x4000, r24
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r212, r192, r130
	mma_16x16x16f16 r66, r212, r188, r66
	mma_16x16x16f16 r130, r214, r194, r130
	mma_16x16x16f16 r66, r214, r190, r66
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r212, r26, 0x0
	add_i32 r26, 0x4000, r25
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r204, r192, r122
	mma_16x16x16f16 r58, r204, r188, r58
	.loc	2 148 47                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:148:47
	lds_b128 r26, r26, 0x0
	.loc	2 154 56                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:154:56
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
	.loc	2 0 56 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s44
	.loc	2 163 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:163:9
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
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_93
; %bb.77:                               ; %if.end1357
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_94
LBB2_78:                                ; %if.end1357.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_95
LBB2_79:                                ; %if.end1357.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_96
LBB2_80:                                ; %if.end1357.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_97
LBB2_81:                                ; %if.end1357.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_98
LBB2_82:                                ; %if.end1357.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_99
LBB2_83:                                ; %if.end1357.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB2_100
LBB2_84:                                ; %if.end1357.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_101
LBB2_85:                                ; %if.end1357.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_102
LBB2_86:                                ; %if.end1357.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_103
LBB2_87:                                ; %if.end1357.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_104
LBB2_88:                                ; %if.end1357.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_105
LBB2_89:                                ; %if.end1357.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_106
LBB2_90:                                ; %if.end1357.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_107
LBB2_91:                                ; %if.end1357.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB2_108
LBB2_92:                                ; %if.end1357.15
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:223:1
	snop 1
	endk
LBB2_93:                                ; %if.then1297
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r171
.Ltmp13:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r171, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp14:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r170
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp16:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r171, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r175
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r170, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp18:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r169
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp20:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r170, r5
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r169, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp22:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r168
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp24:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r169, r6
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r168, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp26:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r168, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r172
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r173
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r174
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_b32 r3, 1, r0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_78
LBB2_94:                                ; %if.then1297.1
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r145
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r145, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp33:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r144
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp35:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r145, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r149
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r144, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp37:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r143
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp39:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r144, r5
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r143, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp41:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r142
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp43:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r143, r6
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r142, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp45:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r142, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r146
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r147
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r148
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_or_b32 r3, 1, r0, 32
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_79
LBB2_95:                                ; %if.then1297.2
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r137
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r137, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp52:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r136
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp54:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r137, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r141
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r136, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp56:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r135
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp58:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r136, r5
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r135, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp60:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r134
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp62:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r135, r6
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r134, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp64:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r134, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r138
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r139
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r140
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_or_b32 r3, 1, r0, 64
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_80
LBB2_96:                                ; %if.then1297.3
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r129
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r129, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp71:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r128
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp73:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r129, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r133
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r128, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp75:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r127
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp77:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r128, r5
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r127, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp79:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r126
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp81:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r127, r6
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r126, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp83:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r126, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r130
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r131
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r132
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	mov_b32 r3, 0x60
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_81
LBB2_97:                                ; %if.then1297.4
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r121
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r121, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp90:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r120
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp92:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r121, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r125
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r120, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp94:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r119
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp96:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r120, r5
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r119, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp98:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r118
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp100:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r119, r6
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r118, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp102:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r118, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r122
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r123
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r124
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	mov_b32 r3, 0x80
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_82
LBB2_98:                                ; %if.then1297.5
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r113
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r113, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp109:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r112
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp111:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r113, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r117
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r112, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp113:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r111
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp115:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r112, r5
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r111, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp117:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r110
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp119:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r111, r6
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r110, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp121:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r110, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r114
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r115
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r116
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	mov_b32 r3, 0xa0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_83
LBB2_99:                                ; %if.then1297.6
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r105
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r105, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp128:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r104
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp130:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r105, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r109
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r104, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp132:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r103
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp134:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r104, r5
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r103, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp136:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r102
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp138:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r103, r6
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r102, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp140:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r102, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r106
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r107
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r108
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	mov_b32 r3, 0xc0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB2_84
LBB2_100:                               ; %if.then1297.7
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r97
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r97, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp147:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r96
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp149:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r97, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r101
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r96, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp151:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r95
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp153:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r96, r5
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r95, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp155:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r94
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp157:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r95, r6
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r94, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp159:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r94, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r98
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r99
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r100
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
	.loc	2 220 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	mov_b32 r3, 0xe0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r7, r4, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	shl_or_b32 r3, 1, r0, r3
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r6, r2, r1
	snop 1
	stg_b64 s6, r3, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_85
LBB2_101:                               ; %if.then1297.8
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r89
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r89, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp166:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r88
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp168:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r89, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r93
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r88, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp170:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r87
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp172:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r88, r5
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r87, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp174:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r86
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp176:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r87, r6
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r86, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp178:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r86, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r90
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r91
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r92
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40000, r3
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r4, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_86
LBB2_102:                               ; %if.then1297.9
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r81
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r81, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp185:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r80
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp187:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r81, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r85
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r80, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp189:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r79
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp191:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r80, r5
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r79, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp193:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r78
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp195:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r79, r6
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r78, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp197:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r78, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r82
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r83
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r84
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40020, r3
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r4, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_87
LBB2_103:                               ; %if.then1297.10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r73
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r73, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp204:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r72
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp206:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r73, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r77
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r72, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp208:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r71
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp210:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r72, r5
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r71, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp212:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r70
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp214:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r71, r6
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r70, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp216:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r70, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r74
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r75
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r76
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40040, r3
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r4, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_88
LBB2_104:                               ; %if.then1297.11
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r65
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r65, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp223:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r64
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp225:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r65, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r69
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r64, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp227:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r63
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp229:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r64, r5
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r63, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp231:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r62
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp233:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r63, r6
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r62, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp235:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r62, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r66
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r67
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r68
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40060, r3
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r4, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_89
LBB2_105:                               ; %if.then1297.12
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r57
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r57, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp242:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r56
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp244:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r57, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r61
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r56, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp246:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r55
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp248:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r56, r5
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r55, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp250:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r54
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp252:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r55, r6
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r54, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp254:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r54, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r58
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r59
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r60
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40080, r3
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r4, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_90
LBB2_106:                               ; %if.then1297.13
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r49
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r49, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp261:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r48
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp263:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r49, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r53
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r48, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp265:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r47
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp267:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r48, r5
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r47, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp269:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r46
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp271:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r47, r6
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r46, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp273:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r46, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r50
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r51
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r52
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400a0, r3
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r4, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_91
LBB2_107:                               ; %if.then1297.14
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r41
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r41, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp280:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r40
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp282:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r41, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r45
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r40, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp284:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r39
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp286:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r40, r5
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r39, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp288:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r38
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp290:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r39, r6
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r38, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp292:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r38, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r42
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r43
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r44
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400c0, r3
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r9, r4, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 209 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:209:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB2_92
LBB2_108:                               ; %if.then1297.15
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:191:27
	mul_f32 r1, 0xbfb8aa3b, r33
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r33, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp299:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:199:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
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
	.loc	2 190 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:190:27
	mul_f32 r5, 0xbfb8aa3b, r32
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp301:
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:203:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:207:20
	mul_f32 r3, r33, r3
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:217:24
	mul_f32 r3, r3, r37
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r32, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp303:
	.loc	2 198 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:198:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
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
	.loc	2 189 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:189:27
	mul_f32 r6, 0xbfb8aa3b, r31
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp305:
	.loc	2 202 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:202:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 206 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:206:20
	mul_f32 r5, r32, r5
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r31, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp307:
	.loc	2 197 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:197:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
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
	.loc	2 188 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:188:27
	mul_f32 r7, 0xbfb8aa3b, r30
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp309:
	.loc	2 201 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:201:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 205 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:205:20
	mul_f32 r6, r31, r6
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r30, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp311:
	.loc	2 196 26                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 200 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:200:24
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
	.loc	2 204 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:204:20
	mul_f32 r1, r30, r1
	.loc	2 214 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:214:24
	mul_f32 r1, r1, r34
	.loc	2 215 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:215:24
	mul_f32 r2, r6, r35
	.loc	2 216 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:216:24
	mul_f32 r4, r5, r36
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
	.loc	2 220 27 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s6, r0
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x400e0, r0
	.loc	2 220 262 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	shl_b32 r0, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:27
	addc_co_u32 r7, r3, 0
	.loc	2 220 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:220:262
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:223:1
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
; codeLenInByte = 25944
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
	.loc	2 225 0                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:225:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp318:
	.loc	2 235 19 prologue_end           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:235:19
	smov_b32 s17, 0
	sshl_b64 s2, 2, s16
	and_b32 r0, 0x3ff, r0
	shl_b32 r1, 12, r0
	ldu_b256 s8, s0, 0x20
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	and_b32 r1, 0x3c0000, r1
	mov_b32 r2, s5
	ldu_b32 s6, s2, 0x0
	shl_add_u32 r1, 20, r2, r1
	shl_b32 r2, 13, r0
	smov_b32 s3, 0x1e000
	shr_b32 r3, 1, r0
	.loc	2 251 168                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:251:168
	and_or_b32 r28, r2, s3, r1
	and_b32 r4, r3, 24
	or_b32 r30, 0x20000, r28
	.loc	2 251 227 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:251:227
	or_b32 r154, r28, r4
	or_b32 r156, r30, r4
	.loc	2 251 67                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:251:67
	shl_b32 r1, 1, r154
	shl_b32 r2, 1, r156
	.loc	2 235 19 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:235:19
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 251 45                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:251:45
	ldg_b128 r158, s14, r1, 0x0
	ldg_b128 r162, s14, r2, 0x0
	.loc	2 251 67 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:251:67
	or_b32 r2, r1, 64
	or_b32 r1, 0x40040, r1
	.loc	2 236 20 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:236:20
	sshl_b64 s18, 2, s6
	.loc	2 251 45                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:251:45
	ldg_b128 r170, s14, r2, 0x0
	ldg_b128 r174, s14, r1, 0x0
	shl_b32 r2, 3, r0
	and_b32 r20, r2, 32
	add_u32 r4, r20, r0
	and_b32 r6, r4, 32
	shr_b32 r4, 5, r0
	and_b32 r32, r2, 56
	and_b32 r5, 0x1fc0, r2
	and_b32 r2, r2, 16
	add_u32 r2, r2, r0
	add_shl_u32 r4, r4, r3, 4
	and_b32 r7, r2, 16
	mul_u24 r2, r0, 9
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r0
	and_b32 r8, r2, 8
	shl_b32 r2, 6, r0
	add_shl_u32 r13, r4, r0, 3
	and_b32 r19, 0x3c0, r2
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:236:20
	sadd_co_u32 s0, s8, s18
	and_or_b32 r27, r13, 8, r12
	saddc_co_u32 s1, s9, s19
	or_b32 r21, r27, r19
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r26, 0x1000, r19
	or_b32 r33, 0x1800, r19
	xor_b32 r35, r20, 32
	or_b32 r12, r21, r20
	or_b32 r20, r21, r35
	or_b32 r13, r23, r22
	or_b32 r14, r23, r24
	or_b32 r16, r23, r26
	or_b32 r18, r23, r33
	or3_b32 r21, r27, r22, r35
	or3_b32 r22, r27, r24, r35
	or3_b32 r24, r27, r26, r35
	or3_b32 r26, r27, r33, r35
	ldu_b32 s2, s0, 0x0
	.loc	2 237 19                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:237:19
	sadd_co_u32 s0, s44, s18
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	and_b32 r33, r0, 48
	.loc	2 237 19                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:237:19
	saddc_co_u32 s1, s45, s19
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	shl_or_b32 r28, 1, r28, r33
	or_b32 r25, 0xc00, r19
	or_b32 r29, 0x1400, r19
	or_b32 r34, 0x1c00, r19
	.loc	2 238 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:238:22
	sadd_co_u32 s8, s46, s18
	or_b32 r15, r23, r25
	or_b32 r17, r23, r29
	or_b32 r19, r23, r34
	or3_b32 r23, r27, r25, r35
	or3_b32 r25, r27, r29, r35
	or3_b32 r27, r27, r34, r35
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	add_co_u32 r28, r28, s14
	mov_b32 r34, s15
	addc_co_u32 r35, 0, r34
	.loc	2 238 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:238:22
	saddc_co_u32 s9, s47, s19
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	add_co_u32 r178, 0x88, r28
	.loc	2 237 19                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:237:19
	ldu_b32 s1, s0, 0x0
	.loc	2 238 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:238:22
	ldu_b32 s0, s8, 0x0
	sshl_b32 s8, 24, s6
	sshl_b32 s9, 21, s4
	sadd_co_u32 s3, 0x80, s14
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	addc_co_u32 r179, r35, 0
	shl_or_b32 r28, 1, r30, r33
	saddc_co_u32 s5, s15, 0
	or_b32 r4, r6, r8
	add_co_u32 r28, r28, s14
	or3_b32 r4, r4, r5, r7
	sadd_co_u32 s6, 0x100, s14
	or_b32 r5, r5, r6
	addc_co_u32 r30, 0, r34
	shl_b32 r1, 10, r0
	add_co_u32 r182, 0x88, r28
	saddc_co_u32 s7, s15, 0
	or3_b32 r5, r5, r7, r8
	and_b32 r31, 0xfe000, r1
	sadd_co_i32 s8, s8, s9
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:0
	shl_b64 r126, 0, 0
	shl_add_u32 r11, 1, r5, 0
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	or3_b32 r180, s8, r31, r32
	shl_add_u32 r4, 1, r4, 0
	addc_co_u32 r183, r30, 0
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:0
	shl_b64 r128, 0, 0
	shl_b64 r130, 0, r126
	shl_b64 r134, 0, r126
	shl_b64 r138, 0, r126
	shl_b64 r142, 0, r126
	shl_b64 r146, 0, r126
	shl_b64 r150, 0, r126
	shl_b64 r166, 0, r126
	shl_b64 r30, 0, r126
	shl_b64 r34, 0, r126
	shl_b64 r38, 0, r126
	shl_b64 r42, 0, r126
	shl_b64 r46, 0, r126
	shl_b64 r50, 0, r126
	shl_b64 r54, 0, r126
	shl_b64 r58, 0, r126
	shl_b64 r62, 0, r126
	shl_b64 r66, 0, r126
	shl_b64 r70, 0, r126
	shl_b64 r74, 0, r126
	shl_b64 r78, 0, r126
	shl_b64 r82, 0, r126
	shl_b64 r86, 0, r126
	shl_b64 r90, 0, r126
	shl_b64 r122, 0, r126
	shl_b64 r118, 0, r126
	shl_b64 r114, 0, r126
	shl_b64 r110, 0, r126
	shl_b64 r106, 0, r126
	shl_b64 r102, 0, r126
	shl_b64 r98, 0, r126
	shl_b64 r94, 0, r126
	shr_b32 r2, 2, r0
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
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	mov_b32 r29, 0
	mov_b32 r155, 0
	smov_b64 s8, 0
	shl_b64 r132, 0, r128
	shl_b64 r136, 0, r128
	shl_b64 r140, 0, r128
	shl_b64 r144, 0, r128
	shl_b64 r148, 0, r128
	shl_b64 r152, 0, r128
	shl_b64 r168, 0, r128
	shl_b64 r32, 0, r128
	shl_b64 r36, 0, r128
	shl_b64 r40, 0, r128
	shl_b64 r44, 0, r128
	shl_b64 r48, 0, r128
	shl_b64 r52, 0, r128
	shl_b64 r56, 0, r128
	shl_b64 r60, 0, r128
	shl_b64 r64, 0, r128
	shl_b64 r68, 0, r128
	shl_b64 r72, 0, r128
	shl_b64 r76, 0, r128
	shl_b64 r80, 0, r128
	shl_b64 r84, 0, r128
	shl_b64 r88, 0, r128
	shl_b64 r92, 0, r128
	shl_b64 r124, 0, r128
	shl_b64 r120, 0, r128
	shl_b64 r116, 0, r128
	shl_b64 r112, 0, r128
	shl_b64 r108, 0, r128
	shl_b64 r104, 0, r128
	shl_b64 r100, 0, r128
	shl_b64 r96, 0, r128
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc632
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 253 31                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:31
	sadd_co_u32 s8, 0x80, s8
	add_co_u32 r178, 0x100, r178
	saddc_co_u32 s9, s9, 0
	addc_co_u32 r179, r179, 0
	add_co_u32 r182, 0x100, r182
	scmp_eq_u64 0x2000, s8
	addc_co_u32 r183, r183, 0
	.loc	2 253 3                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:253:3
	bra_smsks LBB3_6
LBB3_2:                                 ; %for.cond67.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 256 349 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:256:349
	add_u32 r28, r180, s8
	add_u32 r157, 0x40000, r28
	mad_i32 r186, r157, 2, s40
	add_u32 r157, 0x80000, r28
	mad_i32 r192, r157, 2, s40
	add_u32 r157, 0xc0000, r28
	mad_i32 r194, r157, 2, s40
	add_u32 r157, 0x100000, r28
	mad_i32 r200, r157, 2, s40
	add_u32 r157, 0x140000, r28
	mad_i32 r202, r157, 2, s40
	add_u32 r157, 0x180000, r28
	mad_i32 r208, r157, 2, s40
	add_u32 r157, 0x1c0000, r28
	mad_i32 r184, r28, 2, s40
	mad_i32 r210, r157, 2, s40
	.loc	2 256 332 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:256:332
	snop 0
	ldg_b128 r188, r184, 0x0
	ldg_b128 r184, r186, 0x0
	ldg_b128 r196, r192, 0x0
	ldg_b128 r192, r194, 0x0
	ldg_b128 r204, r200, 0x0
	ldg_b128 r200, r202, 0x0
	ldg_b128 r212, r208, 0x0
	ldg_b128 r208, r210, 0x0
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r188
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r184
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r196
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r192
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r204
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r200
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r212
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r208
.Ltmp319:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp320:
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r184, r12, 0x0
	lds_b128 r188, r13, 0x0
	lds_b128 r192, r14, 0x0
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	add_i32 r157, 0x4000, r12
	.loc	2 261 71                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:71
	mov_b32 r181, s9
	.loc	2 261 49 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:49
	ldg_b128 r196, r182, -0x8
	.loc	2 271 58 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r184, r158, r166
	mma_16x16x16f16 r122, r184, r162, r122
	mma_16x16x16f16 r166, r186, r160, r166
	mma_16x16x16f16 r122, r186, r164, r122
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r184, r15, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r188, r158, r150
	mma_16x16x16f16 r118, r188, r162, r118
	mma_16x16x16f16 r150, r190, r160, r150
	mma_16x16x16f16 r118, r190, r164, r118
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r188, r16, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r192, r158, r146
	mma_16x16x16f16 r114, r192, r162, r114
	mma_16x16x16f16 r146, r194, r160, r146
	mma_16x16x16f16 r114, r194, r164, r114
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r192, r17, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r184, r158, r142
	mma_16x16x16f16 r110, r184, r162, r110
	mma_16x16x16f16 r142, r186, r160, r142
	mma_16x16x16f16 r110, r186, r164, r110
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r184, r18, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r188, r158, r138
	mma_16x16x16f16 r106, r188, r162, r106
	mma_16x16x16f16 r138, r190, r160, r138
	mma_16x16x16f16 r106, r190, r164, r106
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r188, r19, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r158, r134
	mma_16x16x16f16 r102, r192, r162, r102
	mma_16x16x16f16 r134, r194, r160, r134
	mma_16x16x16f16 r102, r194, r164, r102
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r192, r157, 0x0
	add_i32 r157, 0x4000, r13
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r184, r158, r130
	mma_16x16x16f16 r98, r184, r162, r98
	mma_16x16x16f16 r130, r186, r160, r130
	mma_16x16x16f16 r98, r186, r164, r98
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r184, r157, 0x0
	add_i32 r157, 0x4000, r14
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r158, r126
	mma_16x16x16f16 r94, r188, r162, r94
	mma_16x16x16f16 r126, r190, r160, r126
	mma_16x16x16f16 r94, r190, r164, r94
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r188, r157, 0x0
	add_i32 r157, 0x4000, r15
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r192, r158, r90
	mma_16x16x16f16 r58, r192, r162, r58
	mma_16x16x16f16 r90, r194, r160, r90
	mma_16x16x16f16 r58, r194, r164, r58
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r192, r157, 0x0
	add_i32 r157, 0x4000, r16
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r184, r158, r86
	mma_16x16x16f16 r54, r184, r162, r54
	mma_16x16x16f16 r86, r186, r160, r86
	mma_16x16x16f16 r54, r186, r164, r54
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r184, r157, 0x0
	add_i32 r157, 0x4000, r17
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r188, r158, r82
	mma_16x16x16f16 r50, r188, r162, r50
	mma_16x16x16f16 r82, r190, r160, r82
	mma_16x16x16f16 r50, r190, r164, r50
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r188, r157, 0x0
	add_i32 r157, 0x4000, r18
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r192, r158, r78
	mma_16x16x16f16 r46, r192, r162, r46
	mma_16x16x16f16 r78, r194, r160, r78
	mma_16x16x16f16 r46, r194, r164, r46
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r192, r157, 0x0
	add_i32 r157, 0x4000, r19
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r184, r158, r74
	mma_16x16x16f16 r42, r184, r162, r42
	mma_16x16x16f16 r74, r186, r160, r74
	mma_16x16x16f16 r42, r186, r164, r42
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r184, r157, 0x0
	add_i32 r157, 0x4000, r20
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r188, r158, r70
	mma_16x16x16f16 r38, r188, r162, r38
	mma_16x16x16f16 r70, r190, r160, r70
	mma_16x16x16f16 r38, r190, r164, r38
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r188, r20, 0x0
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r192, r158, r66
	mma_16x16x16f16 r34, r192, r162, r34
	mma_16x16x16f16 r66, r194, r160, r66
	mma_16x16x16f16 r34, r194, r164, r34
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r192, r21, 0x0
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r184, r158, r62
	mma_16x16x16f16 r30, r184, r162, r30
	mma_16x16x16f16 r62, r186, r160, r62
	mma_16x16x16f16 r30, r186, r164, r30
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r184, r22, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r188, r170, r166
	mma_16x16x16f16 r122, r188, r174, r122
	mma_16x16x16f16 r166, r190, r172, r166
	mma_16x16x16f16 r122, r190, r176, r122
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r188, r23, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r192, r170, r150
	mma_16x16x16f16 r118, r192, r174, r118
	mma_16x16x16f16 r150, r194, r172, r150
	mma_16x16x16f16 r118, r194, r176, r118
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r192, r24, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r184, r170, r146
	mma_16x16x16f16 r114, r184, r174, r114
	mma_16x16x16f16 r146, r186, r172, r146
	mma_16x16x16f16 r114, r186, r176, r114
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r184, r25, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r188, r170, r142
	mma_16x16x16f16 r110, r188, r174, r110
	mma_16x16x16f16 r142, r190, r172, r142
	mma_16x16x16f16 r110, r190, r176, r110
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r188, r26, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r192, r170, r138
	mma_16x16x16f16 r106, r192, r174, r106
	mma_16x16x16f16 r138, r194, r172, r138
	mma_16x16x16f16 r106, r194, r176, r106
	.loc	2 265 41                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:265:41
	lds_b128 r192, r27, 0x0
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r184, r170, r134
	mma_16x16x16f16 r102, r184, r174, r102
	mma_16x16x16f16 r134, r186, r172, r134
	mma_16x16x16f16 r102, r186, r176, r102
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r184, r157, 0x0
	add_i32 r157, 0x4000, r21
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r188, r170, r130
	mma_16x16x16f16 r98, r188, r174, r98
	mma_16x16x16f16 r130, r190, r172, r130
	mma_16x16x16f16 r98, r190, r176, r98
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r188, r157, 0x0
	add_i32 r157, 0x4000, r22
	.loc	2 271 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:271:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r170, r126
	mma_16x16x16f16 r94, r192, r174, r94
	mma_16x16x16f16 r126, r194, r172, r126
	mma_16x16x16f16 r94, r194, r176, r94
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r192, r157, 0x0
	add_i32 r157, 0x4000, r23
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r184, r170, r90
	mma_16x16x16f16 r58, r184, r174, r58
	mma_16x16x16f16 r90, r186, r172, r90
	mma_16x16x16f16 r58, r186, r176, r58
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r184, r157, 0x0
	add_i32 r157, 0x4000, r24
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r188, r170, r86
	mma_16x16x16f16 r54, r188, r174, r54
	mma_16x16x16f16 r86, r190, r172, r86
	mma_16x16x16f16 r54, r190, r176, r54
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r188, r157, 0x0
	add_i32 r157, 0x4000, r25
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r192, r170, r82
	mma_16x16x16f16 r50, r192, r174, r50
	mma_16x16x16f16 r82, r194, r172, r82
	mma_16x16x16f16 r50, r194, r176, r50
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r192, r157, 0x0
	add_i32 r157, 0x4000, r26
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r184, r170, r78
	mma_16x16x16f16 r46, r184, r174, r46
	mma_16x16x16f16 r78, r186, r172, r78
	mma_16x16x16f16 r46, r186, r176, r46
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r184, r157, 0x0
	add_i32 r157, 0x4000, r27
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r188, r170, r74
	mma_16x16x16f16 r42, r188, r174, r42
	mma_16x16x16f16 r74, r190, r172, r74
	mma_16x16x16f16 r42, r190, r176, r42
	.loc	2 279 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:279:43
	lds_b128 r188, r157, 0x0
	.loc	2 261 71                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:71
	add_co_u32 r157, r154, s8
	addc_co_u32 r203, r29, r181
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r192, r170, r70
	.loc	2 261 251                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:251
	or_b32 r202, r157, 32
	.loc	2 261 71 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:71
	add_co_u32 r157, r156, s8
	addc_co_u32 r201, r155, r181
	.loc	2 285 58 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	mma_16x16x16f16 r38, r192, r174, r38
	.loc	2 261 251                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:251
	or_b32 r200, r157, 32
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	mma_16x16x16f16 r70, r194, r172, r70
	mma_16x16x16f16 r38, r194, r176, r38
	arrive bsmcnt(1)
	mma_16x16x16f16 r66, r184, r170, r66
	mma_16x16x16f16 r34, r184, r174, r34
	mma_16x16x16f16 r66, r186, r172, r66
	.loc	2 261 71                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:71
	mov_b32 r184, s5
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	mma_16x16x16f16 r34, r186, r176, r34
	arrive bsmcnt(0)
	mma_16x16x16f16 r62, r188, r170, r62
	.loc	2 261 71                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:71
	shl_b64 r186, 1, r202
	add_co_u32 r186, s3, r186
	addc_co_u32 r187, r184, r187
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	mma_16x16x16f16 r30, r188, r174, r30
	mma_16x16x16f16 r62, r190, r172, r62
	.loc	2 261 71                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:71
	shl_b64 r188, 1, r200
	add_co_u32 r192, s3, r188
	addc_co_u32 r193, r184, r189
	.loc	2 285 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:285:58
	mma_16x16x16f16 r30, r190, r176, r30
	.loc	2 261 49                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:261:49
	ldg_b128 r188, r186, 0x0
	ldg_b128 r184, r192, 0x0
	ldg_b128 r192, r178, -0x8
.Ltmp321:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp322:
	.loc	2 296 349                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:296:349
	add_u32 r157, 0x40040, r28
	mad_i32 r206, r157, 2, s40
	add_u32 r157, 0x80040, r28
	mad_i32 r212, r157, 2, s40
	add_u32 r157, 0xc0040, r28
	mad_i32 r214, r157, 2, s40
	add_u32 r157, 0x100040, r28
	mad_i32 r220, r157, 2, s40
	add_u32 r157, 0x140040, r28
	mad_i32 r204, r28, 2, s40
	mad_i32 r222, r157, 2, s40
	add_u32 r157, 0x180040, r28
	add_u32 r28, 0x1c0040, r28
	mad_i32 r228, r157, 2, s40
	mad_i32 r230, r28, 2, s40
	.loc	2 296 332 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:296:332
	ldg_b128 r208, r204, 0x80
	ldg_b128 r204, r206, 0x0
	ldg_b128 r216, r212, 0x0
	ldg_b128 r212, r214, 0x0
	ldg_b128 r224, r220, 0x0
	ldg_b128 r220, r222, 0x0
	ldg_b128 r232, r228, 0x0
	ldg_b128 r228, r230, 0x0
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r208
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r204
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r216
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r212
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r224
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r220
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r232
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r228
.Ltmp323:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp324:
	.loc	2 299 16                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:299:16
	mov_b32 r204, 0x1f80
	mov_b32 r205, 0
	cmp_lg_u64 s14, s8, r204
	.loc	2 299 9 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:299:9
	snop 3
	sand_b64 cmsk, xmsk, s14
	snop 0
	bra_cmskz LBB3_4
; %bb.3:                                ; %for.cond410.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 302 71 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:302:71
	shl_b64 r170, 1, r202
	add_co_u32 r170, s6, r170
	mov_b32 r28, s7
	addc_co_u32 r171, r28, r171
	shl_b64 r172, 1, r200
	add_co_u32 r174, s6, r172
	addc_co_u32 r175, r28, r173
	.loc	2 302 49 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:302:49
	ldg_b128 r158, r178, 0x78
	ldg_b128 r162, r182, 0x78
	ldg_b128 r170, r170, 0x0
	ldg_b128 r174, r174, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 307 43 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r200, r12, 0x0
	lds_b128 r204, r13, 0x0
	lds_b128 r208, r14, 0x0
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	add_i32 r28, 0x4000, r12
	.loc	2 335 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:335:9
	sandn_b64 cmsk, xmsk, s14
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r200, r192, r166
	mma_16x16x16f16 r122, r200, r196, r122
	mma_16x16x16f16 r166, r202, r194, r166
	mma_16x16x16f16 r122, r202, r198, r122
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r200, r15, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r204, r192, r150
	mma_16x16x16f16 r118, r204, r196, r118
	mma_16x16x16f16 r150, r206, r194, r150
	mma_16x16x16f16 r118, r206, r198, r118
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r204, r16, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r208, r192, r146
	mma_16x16x16f16 r114, r208, r196, r114
	mma_16x16x16f16 r146, r210, r194, r146
	mma_16x16x16f16 r114, r210, r198, r114
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r208, r17, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r200, r192, r142
	mma_16x16x16f16 r110, r200, r196, r110
	mma_16x16x16f16 r142, r202, r194, r142
	mma_16x16x16f16 r110, r202, r198, r110
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r200, r18, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r204, r192, r138
	mma_16x16x16f16 r106, r204, r196, r106
	mma_16x16x16f16 r138, r206, r194, r138
	mma_16x16x16f16 r106, r206, r198, r106
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r204, r19, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r208, r192, r134
	mma_16x16x16f16 r102, r208, r196, r102
	mma_16x16x16f16 r134, r210, r194, r134
	mma_16x16x16f16 r102, r210, r198, r102
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r13
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r200, r192, r130
	mma_16x16x16f16 r98, r200, r196, r98
	mma_16x16x16f16 r130, r202, r194, r130
	mma_16x16x16f16 r98, r202, r198, r98
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r14
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r204, r192, r126
	mma_16x16x16f16 r94, r204, r196, r94
	mma_16x16x16f16 r126, r206, r194, r126
	mma_16x16x16f16 r94, r206, r198, r94
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r15
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r208, r192, r90
	mma_16x16x16f16 r58, r208, r196, r58
	mma_16x16x16f16 r90, r210, r194, r90
	mma_16x16x16f16 r58, r210, r198, r58
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r16
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r200, r192, r86
	mma_16x16x16f16 r54, r200, r196, r54
	mma_16x16x16f16 r86, r202, r194, r86
	mma_16x16x16f16 r54, r202, r198, r54
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r17
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r204, r192, r82
	mma_16x16x16f16 r50, r204, r196, r50
	mma_16x16x16f16 r82, r206, r194, r82
	mma_16x16x16f16 r50, r206, r198, r50
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r204, r28, 0x0
	add_i32 r28, 0x4000, r18
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r208, r192, r78
	mma_16x16x16f16 r46, r208, r196, r46
	mma_16x16x16f16 r78, r210, r194, r78
	mma_16x16x16f16 r46, r210, r198, r46
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r208, r28, 0x0
	add_i32 r28, 0x4000, r19
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r200, r192, r74
	mma_16x16x16f16 r42, r200, r196, r42
	mma_16x16x16f16 r74, r202, r194, r74
	mma_16x16x16f16 r42, r202, r198, r42
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r20
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r204, r192, r70
	mma_16x16x16f16 r38, r204, r196, r38
	mma_16x16x16f16 r70, r206, r194, r70
	mma_16x16x16f16 r38, r206, r198, r38
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r204, r20, 0x0
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r208, r192, r66
	mma_16x16x16f16 r34, r208, r196, r34
	mma_16x16x16f16 r66, r210, r194, r66
	mma_16x16x16f16 r34, r210, r198, r34
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r208, r21, 0x0
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r200, r192, r62
	mma_16x16x16f16 r30, r200, r196, r30
	mma_16x16x16f16 r62, r202, r194, r62
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r192, r22, 0x0
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	mma_16x16x16f16 r30, r202, r198, r30
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r196, r23, 0x0
	lds_b128 r200, r24, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(4)
	mma_16x16x16f16 r166, r204, r188, r166
	mma_16x16x16f16 r122, r204, r184, r122
	mma_16x16x16f16 r166, r206, r190, r166
	mma_16x16x16f16 r122, r206, r186, r122
	arrive bsmcnt(3)
	mma_16x16x16f16 r150, r208, r188, r150
	mma_16x16x16f16 r118, r208, r184, r118
	mma_16x16x16f16 r150, r210, r190, r150
	mma_16x16x16f16 r118, r210, r186, r118
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r192, r188, r146
	mma_16x16x16f16 r114, r192, r184, r114
	mma_16x16x16f16 r146, r194, r190, r146
	mma_16x16x16f16 r114, r194, r186, r114
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r192, r25, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r196, r188, r142
	mma_16x16x16f16 r110, r196, r184, r110
	mma_16x16x16f16 r142, r198, r190, r142
	mma_16x16x16f16 r110, r198, r186, r110
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r196, r26, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r200, r188, r138
	mma_16x16x16f16 r106, r200, r184, r106
	mma_16x16x16f16 r138, r202, r190, r138
	mma_16x16x16f16 r106, r202, r186, r106
	.loc	2 307 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:307:43
	lds_b128 r200, r27, 0x0
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r188, r134
	mma_16x16x16f16 r102, r192, r184, r102
	mma_16x16x16f16 r134, r194, r190, r134
	mma_16x16x16f16 r102, r194, r186, r102
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r21
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r196, r188, r130
	mma_16x16x16f16 r98, r196, r184, r98
	mma_16x16x16f16 r130, r198, r190, r130
	mma_16x16x16f16 r98, r198, r186, r98
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r196, r28, 0x0
	add_i32 r28, 0x4000, r22
	.loc	2 313 58                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r200, r188, r126
	mma_16x16x16f16 r94, r200, r184, r94
	mma_16x16x16f16 r126, r202, r190, r126
	mma_16x16x16f16 r94, r202, r186, r94
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r23
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r192, r188, r90
	mma_16x16x16f16 r58, r192, r184, r58
	mma_16x16x16f16 r90, r194, r190, r90
	mma_16x16x16f16 r58, r194, r186, r58
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r24
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r196, r188, r86
	mma_16x16x16f16 r54, r196, r184, r54
	mma_16x16x16f16 r86, r198, r190, r86
	mma_16x16x16f16 r54, r198, r186, r54
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r196, r28, 0x0
	add_i32 r28, 0x4000, r25
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r200, r188, r82
	mma_16x16x16f16 r50, r200, r184, r50
	mma_16x16x16f16 r82, r202, r190, r82
	mma_16x16x16f16 r50, r202, r186, r50
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r26
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r192, r188, r78
	mma_16x16x16f16 r46, r192, r184, r46
	mma_16x16x16f16 r78, r194, r190, r78
	mma_16x16x16f16 r46, r194, r186, r46
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r27
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r196, r188, r74
	mma_16x16x16f16 r42, r196, r184, r42
	mma_16x16x16f16 r74, r198, r190, r74
	mma_16x16x16f16 r42, r198, r186, r42
	.loc	2 321 43                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:321:43
	lds_b128 r196, r28, 0x0
	.loc	2 327 59                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:327:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r200, r188, r70
	mma_16x16x16f16 r38, r200, r184, r38
	mma_16x16x16f16 r70, r202, r190, r70
	mma_16x16x16f16 r38, r202, r186, r38
	arrive bsmcnt(1)
	mma_16x16x16f16 r66, r192, r188, r66
	mma_16x16x16f16 r34, r192, r184, r34
	mma_16x16x16f16 r66, r194, r190, r66
	mma_16x16x16f16 r34, r194, r186, r34
	arrive bsmcnt(0)
	mma_16x16x16f16 r62, r196, r188, r62
	mma_16x16x16f16 r30, r196, r184, r30
	mma_16x16x16f16 r62, r198, r190, r62
	mma_16x16x16f16 r30, r198, r186, r30
	.loc	2 335 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:335:9
	bra_cmsks LBB3_1
; %bb.5:                                ; %if.then630
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp325:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp326:
LBB3_6:                                 ; %for.cond635.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	sshl_b32 s3, 7, s16
	sshl_b64 s6, 7, s16
	and_b32 r6, 0x1e0, r3
	and_b32 r7, r0, 15
	or_b32 r4, r7, s3
	or_b32 r3, r6, r7
	or_b32 r7, s6, r7
	ssub_co_i32 s2, s2, s3
	add_u32 r4, r4, r6
	mov_b32 r10, s7
	add_co_u32 r6, r7, r6
	sadd_co_i32 s2, s2, s0
	addc_co_u32 r7, r10, 0
	sashr_i32 s3, 31, s1
	add_co_u32 r6, r6, s1
	mov_b32 r10, s3
	.loc	2 341 92 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:341:92
	cmp_ge_i32 s8, r3, s2
	cmp_lt_i32 s14, r3, s2
	sashr_i32 s5, 31, s0
	mov_b32 r8, s0
	addc_co_u32 r7, r7, r10
	mov_b32 r9, s5
	sub_co_u32 r6, r6, r8
	add_u32 r5, r4, s1
	mov_b32 r4, 0
	subb_co_u32 r7, r7, r9
	.loc	2 341 9 is_stmt 0               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:341:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_10
; %bb.7:                                ; %if.then653
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sub_u32 r4, r5, s0
	cmp_gt_i32 s20, 0x8e0, r4
	.loc	2 343 15 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:343:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r4, 0
	.loc	2 343 163 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:343:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_9
; %bb.8:                                ; %if.then682
	.loc	2 0 163                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r4, s13
	addc_co_u32 r9, r4, r9
	.loc	2 344 19 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:344:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB3_9:                                 ; %Flow531
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_10:                                ; %for.inc706
	sor_b64 xmsk, xmsk, s6
	.loc	2 341 63 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:341:63
	or_b32 r3, r3, 16
	.loc	2 341 92 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:341:92
	cmp_ge_i32 s6, r3, s2
	cmp_lt_i32 s2, r3, s2
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:0
	mov_b32 r3, 0
	.loc	2 341 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:341:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_14
; %bb.11:                               ; %if.then653.1
	.loc	2 343 117 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:343:117
	add_u32 r3, r5, 16
	.loc	2 343 15 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:343:15
	cmp_ge_i32 s20, r3, s0
	sub_u32 r3, r3, s0
	cmp_gt_i32 s0, 0x8e0, r3
	mov_b32 r3, 0
	.loc	2 343 163                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:343:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_13
; %bb.12:                               ; %if.then682.1
	.loc	2 0 163                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r3, s13
	addc_co_u32 r7, r3, r7
	.loc	2 344 19 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:344:19
	snop 1
	ldg_b32 r3, r6, 0x40
LBB3_13:                                ; %Flow530
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_14:                                ; %for.inc706.1
	sor_b64 xmsk, xmsk, s18
	sshl_b32 s0, 18, s16
	sshl_b32 s1, 8, s4
	shl_b32 r0, 11, r0
	and_b32 r1, 0xf0000, r1
	sadd_co_i32 s0, s1, s0
	and_b32 r0, 0x7800, r0
	add_u32 r1, s0, r1
	add_u32 r0, r1, r0
	and_or_b32 r0, r2, 12, r0
	shl_b64 r8, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then727
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(0)
	mul_f32 r1, r166, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r167, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r168, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r6, r169, r4
.Ltmp327:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp328:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp331:
LBB3_16:                                ; %if.end782
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 22 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mov_b32 r1, 0
	shl_b64 r6, 1, r0
	add_co_u32 r6, s10, r6
	mov_b32 r1, s11
	addc_co_u32 r7, r1, r7
	.loc	2 369 254 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then727.1
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(1)
	mul_f32 r1, r150, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r151, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r152, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r10, r153, r4
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp333:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp336:
LBB3_18:                                ; %if.end782.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 16
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r22, 0x0, r8 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then727.2
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(2)
	mul_f32 r1, r146, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r147, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r148, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r8, r149, r4
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp338:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp340:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp341:
LBB3_20:                                ; %if.end782.2
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 32
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r8, r1, 2, s10
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then727.3
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(3)
	mul_f32 r1, r142, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r143, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r144, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r12, r145, r4
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp343:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp345:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp346:
LBB3_22:                                ; %if.end782.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 48
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r26, r1, 2, s10
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r26, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then727.4
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(4)
	mul_f32 r1, r138, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r139, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r140, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r12, r141, r4
.Ltmp347:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp348:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp350:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp351:
LBB3_24:                                ; %if.end782.4
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 64
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r14, r1, 2, s10
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r14, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then727.5
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(5)
	mul_f32 r1, r134, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r135, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r136, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r12, r137, r4
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp353:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp355:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp356:
LBB3_26:                                ; %if.end782.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, 0x50, r0
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r12, 0, 0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r28, 0x0, r10 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then727.6
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(6)
	mul_f32 r1, r130, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r131, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r132, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r10, r133, r4
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp358:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp361:
LBB3_28:                                ; %if.end782.6
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, 0x60, r0
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r10, r1, 2, s10
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r10, 0x0, r12 devc
	shl_b64 r12, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then727.7
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(7)
	mul_f32 r1, r126, r4
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r127, r4
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r128, r4
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r16, r129, r4
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp363:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp366:
LBB3_30:                                ; %if.end782.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, 0x70, r0
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r24, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r24, 0x0, r12 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then727.8
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(8)
	mul_f32 r1, r122, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r123, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r124, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r12, r125, r3
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp368:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp371:
LBB3_32:                                ; %if.end782.8
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 22 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	add_co_u32 r12, 0x10000, r6
	addc_co_u32 r13, r7, 0
	.loc	2 369 190 is_stmt 0             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:190
	add_u32 r0, 0x8000, r0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r12, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then727.9
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(9)
	mul_f32 r1, r118, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r119, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r120, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r18, r121, r3
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp373:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp376:
LBB3_34:                                ; %if.end782.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 16
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r118, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r118, 0x0, r16 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then727.10
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(10)
	mul_f32 r1, r114, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r115, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r116, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r16, r117, r3
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp378:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp381:
LBB3_36:                                ; %if.end782.10
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 32
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r16, r1, 2, s10
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then727.11
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(11)
	mul_f32 r1, r110, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r111, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r112, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r20, r113, r3
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp383:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp386:
LBB3_38:                                ; %if.end782.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 48
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r110, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r110, 0x0, r18 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then727.12
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(12)
	mul_f32 r1, r106, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r107, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r108, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r18, r109, r3
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp388:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp391:
LBB3_40:                                ; %if.end782.12
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, r0, 64
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r18, r1, 2, s10
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r18, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then727.13
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(13)
	mul_f32 r1, r102, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r103, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r104, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r102, r105, r3
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp393:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r102
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp396:
LBB3_42:                                ; %if.end782.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, 0x50, r0
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r102, r1, 2, s10
	shl_b64 r104, 0, 0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r102, 0x0, r20 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then727.14
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(14)
	mul_f32 r1, r98, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r99, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r100, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r20, r101, r3
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r104_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp398:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r104_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r105_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r105_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp401:
LBB3_44:                                ; %if.end782.14
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r1, 0x60, r0
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r20, r1, 2, s10
	shl_b64 r98, 0, 0
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 0
	stg_b64 r20, 0x0, r104 devc
	.loc	2 353 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:353:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then727.15
	.loc	2 358 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:358:22
	arrive gvmcnt(15)
	mul_f32 r1, r94, r3
	.loc	2 359 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:359:22
	mul_f32 r2, r95, r3
	.loc	2 360 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:360:22
	mul_f32 r5, r96, r3
	.loc	2 361 22                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:361:22
	mul_f32 r94, r97, r3
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp403:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_hi, r94
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp406:
LBB3_46:                                ; %if.end782.15
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 369 211 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:211
	or_b32 r0, 0x70, r0
	.loc	2 369 22 is_stmt 0              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:22
	mad_i32 r0, r0, 2, s10
	.loc	2 369 254                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:369:254
	snop 1
	stg_b64 r0, 0x0, r98 devc
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.end893.1.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	shl_b64 r94, 0, 0
	snop 1
	stg_b64 r6, 0x100, r94 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_48:                                ; %Flow529
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	shl_b64 r94, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then832
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	arrive gvmcnt(16)
	mul_f32 r2, r90, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r91, r4
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r90, r92, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r91, r93, r4
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r92_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp408:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r92_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r93_lo, r90
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp410:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r93_hi, r91
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp411:
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r6, 0x100, r92 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r86, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r87, r4
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r6, r88, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r7, r89, r4
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp413:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp416:
LBB3_50:                                ; %if.end893.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r22, 0x100, r94 devc
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.end893.3.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r8, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_52:                                ; %Flow528
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.then832.2
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	arrive gvmcnt(17)
	mul_f32 r6, r84, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r7, r85, r4
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r82, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r83, r4
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp418:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp420:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp421:
	.loc	2 380 24 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	snop 0
	mul_f32 r7, r80, r4
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	stg_b64 r8, 0x100, r22 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r78, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r79, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r8, r81, r4
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp423:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp425:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp426:
LBB3_54:                                ; %if.end893.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.end893.5.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r14, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_56:                                ; %Flow527
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.then832.4
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	arrive gvmcnt(18)
	mul_f32 r6, r76, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r7, r77, r4
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r74, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r75, r4
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp428:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp431:
	.loc	2 380 24 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	snop 0
	mul_f32 r7, r72, r4
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	stg_b64 r14, 0x100, r8 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r70, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r71, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r8, r73, r4
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp433:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp436:
LBB3_58:                                ; %if.end893.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.end893.7.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_10
LBB3_60:                                ; %Flow526
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.then832.6
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	arrive gvmcnt(19)
	mul_f32 r6, r68, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r7, r69, r4
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r66, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r67, r4
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp441:
	.loc	2 380 24 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	snop 0
	mul_f32 r7, r64, r4
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	stg_b64 r10, 0x100, r8 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r62, r4
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r5, r63, r4
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r4, r65, r4
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp446:
LBB3_62:                                ; %if.end893.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.end893.9.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_64:                                ; %Flow524
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.then832.8
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r4, r59, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r5, r60, r3
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r58, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r6, r61, r3
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp448:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp451:
	.loc	2 379 24 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	snop 0
	mul_f32 r5, r55, r3
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	stg_b64 r12, 0x100, r8 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r54, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r6, r56, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r7, r57, r3
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp453:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp455:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp456:
LBB3_66:                                ; %if.end893.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r118, 0x100, r4 devc
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.end893.11.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_68:                                ; %Flow523
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.then832.10
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r4, r51, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r5, r52, r3
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r50, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r6, r53, r3
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp458:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp461:
	.loc	2 379 24 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	snop 0
	mul_f32 r5, r47, r3
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	stg_b64 r16, 0x100, r8 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r46, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r6, r48, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r7, r49, r3
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp463:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp466:
LBB3_70:                                ; %if.end893.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r110, 0x100, r4 devc
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.end893.13.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r18, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_18
LBB3_72:                                ; %Flow522
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then832.12
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r4, r43, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r5, r44, r3
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r42, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r6, r45, r3
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp468:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp471:
	.loc	2 379 24 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	snop 0
	mul_f32 r5, r39, r3
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	stg_b64 r18, 0x100, r8 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r38, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r6, r40, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r7, r41, r3
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp473:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp475:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp476:
LBB3_74:                                ; %if.end893.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r102, 0x100, r4 devc
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmsks LBB3_77
; %bb.75:                               ; %Flow
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB3_78
LBB3_76:                                ; %if.end893.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 391 1                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:391:1
	snop 0
	endk
LBB3_77:                                ; %if.end893.15.critedge
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r20, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_3
                                        ; implicit-def: $mtreg_64bits_20
	.loc	2 373 9                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:373:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
LBB3_78:                                ; %if.then832.14
	.loc	2 379 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	mul_f32 r4, r35, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r5, r36, r3
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r34, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r6, r37, r3
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp478:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp481:
	.loc	2 379 24 is_stmt 1              ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:379:24
	snop 0
	mul_f32 r5, r31, r3
	.loc	2 389 262                       ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	stg_b64 r20, 0x100, r8 devc
	.loc	2 378 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:378:24
	mul_f32 r2, r30, r3
	.loc	2 380 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:380:24
	mul_f32 r6, r32, r3
	.loc	2 381 24                        ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:381:24
	mul_f32 r3, r33, r3
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp483:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp485:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp486:
	.loc	2 389 262 is_stmt 1             ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:389:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 391 1                         ; race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp:391:1
	snop 0
	endk
.Ltmp487:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 30
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
; codeLenInByte = 16336
; NumMTRegsForWarps/PEU: 236
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
	.short	258                             ; DW_AT_call_line
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
	.short	293                             ; DW_AT_call_line
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
	.short	298                             ; DW_AT_call_line
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
	.short	336                             ; DW_AT_call_line
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
	.short	362                             ; DW_AT_call_line
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
	.short	363                             ; DW_AT_call_line
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
	.short	382                             ; DW_AT_call_line
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
	.short	383                             ; DW_AT_call_line
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
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v058_teammate_79_tail_pruning_sc-16g/codegen/v058_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=157
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=178
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=188
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=202
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=208
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=224
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=242
.Linfo_string9:
	.asciz	"kernel_kernel"                 ; string offset=260
.Linfo_string10:
	.asciz	"kernel_kernel_1"               ; string offset=274
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
    .mtreg_count:    236
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
