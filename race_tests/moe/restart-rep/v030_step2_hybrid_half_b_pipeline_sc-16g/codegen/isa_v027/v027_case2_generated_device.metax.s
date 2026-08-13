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
	.file	2 "/root/tilelang-metax" "race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	and_b32 r0, 0x3ff, r0
	smov_b32 s6, s5
	smul_i32 s5, 0xe0000, s5
.Ltmp4:
	.loc	2 18 19 prologue_end            ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:18:19
	smov_b32 s7, 0
	ldu_b128 s16, s0, 0x20
	sshl_b64 s2, 2, s6
	mov_b32 r2, s5
	shr_b32 r1, 6, r0
	smov_b32 s7, 0x38000
	mad_u24 r2, r1, s7, r2
	and_b32 r1, r0, 15
	smov_b32 s5, 0x1c00
	mad_u24 r3, r1, s5, r2
	shr_b32 r2, 1, r0
	and_or_b32 r34, r2, 24, r3
	.loc	2 33 59                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:59
	mov_b32 r35, 0
	shl_b64 r4, 1, r34
	arrive slcnt(0)
	add_co_u32 r4, s16, r4
	mov_b32 r3, s17
	addc_co_u32 r5, r3, r5
	add_co_u32 r6, 0x38000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 33 41 is_stmt 0               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:41
	ldg_b128 r152, r4, 0x0
	.loc	2 33 218                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:218
	or_b32 r4, r34, 32
	.loc	2 33 59                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:59
	mov_b32 r5, 0
	shl_b64 r4, 1, r4
	.loc	2 33 41                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:41
	ldg_b128 r164, r6, 0x0
	.loc	2 33 59                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:59
	add_co_u32 r4, s16, r4
	.loc	2 33 218                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:218
	add_u32 r6, 0x1c020, r34
	.loc	2 33 59                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:59
	mov_b32 r7, 0
	addc_co_u32 r5, r3, r5
	shl_b64 r6, 1, r6
	add_co_u32 r6, s16, r6
	addc_co_u32 r7, r3, r7
	.loc	2 33 41                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:33:41
	ldg_b128 r168, r4, 0x0
	ldu_b256 s8, s0, 0x0
	ldg_b128 r172, r6, 0x0
	shl_b32 r29, 3, r0
	and_b32 r20, r29, 32
	add_u32 r3, r20, r0
	and_b32 r6, r3, 32
	and_b32 r3, r29, 16
	.loc	2 18 19 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:18:19
	arrive slcnt(0)
	sadd_co_u32 s2, s10, s2
	saddc_co_u32 s3, s11, s3
	ldu_b32 s10, s2, 0x0
	ldu_b64 s2, s0, 0x30
	shr_b32 r4, 5, r0
	add_u32 r3, r3, r0
	and_b32 r7, r3, 16
	mul_u24 r3, r0, 9
	add_shl_u32 r4, r4, r2, 4
	arrive slcnt(0)
	sashr_i32 s11, 31, s10
	.loc	2 19 20                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:19:20
	sshl_b64 s20, 2, s10
	sadd_co_u32 s0, s14, s20
	saddc_co_u32 s1, s15, s21
	.loc	2 20 22                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:20:22
	sadd_co_u32 s12, s12, s20
	saddc_co_u32 s13, s13, s21
	.loc	2 19 20                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:19:20
	ldu_b32 s0, s0, 0x0
	.loc	2 20 22                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:20:22
	ldu_b32 s1, s12, 0x0
	sadd_co_u32 s12, 0xe0000, s8
	saddc_co_u32 s13, s9, 0
	sadd_co_u32 s20, 0xe0000, s18
	saddc_co_u32 s21, s19, 0
	sadd_co_u32 s22, 0xe0080, s8
	and_b32 r8, r3, 8
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r0
	add_shl_u32 r13, r4, r0, 3
	saddc_co_u32 s23, s9, 0
	shl_b32 r3, 6, r0
	and_b32 r5, 0x1fc0, r29
	or_b32 r4, r6, r8
	and_b32 r19, 0x3c0, r3
	sadd_co_u32 s24, 0xe0080, s18
	or3_b32 r4, r4, r5, r7
	or_b32 r5, r5, r6
	and_or_b32 r27, r13, 8, r12
	smul_i32 s7, 0xe00000, s10
	smul_i32 s26, 0xe0000, s4
	saddc_co_u32 s25, s19, 0
	or3_b32 r5, r5, r7, r8
	mov_b32 r6, 0x1000
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r25, 0xc00, r19
	or_b32 r26, 0x1000, r19
	or_b32 r30, 0x1400, r19
	or_b32 r31, 0x1800, r19
	or_b32 r32, 0x1c00, r19
	xor_b32 r33, r20, 32
	.loc	2 35 3                          ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:35:3
	sadd_co_i32 s7, s7, s26
	shl_b32 r10, 1, r4
	shl_add_u32 r11, 1, r5, r6
	or_b32 r13, r23, r22
	or_b32 r14, r23, r24
	or_b32 r15, r23, r25
	or_b32 r16, r23, r26
	or_b32 r17, r23, r30
	or_b32 r18, r23, r31
	or_b32 r21, r27, r19
	or_b32 r19, r23, r32
	or3_b32 r23, r27, r25, r33
	or3_b32 r25, r27, r30, r33
	shr_b32 r28, 3, r0
	cmp_gt_u32 s10, 0x80, r0
	cmp_lt_u32 s14, 0x7f, r0
	sadd_co_i32 s27, 0x2000, 0
	mov_b32 r30, s7
	or_b32 r12, r21, r20
	or_b32 r20, r21, r33
	or3_b32 r21, r27, r22, r33
	or3_b32 r22, r27, r24, r33
	or3_b32 r24, r27, r26, r33
	or3_b32 r26, r27, r31, r33
	or3_b32 r27, r27, r32, r33
	mad_u24 r28, r28, s5, r30
	add_u32 r6, s27, r10
	add_u32 r7, s27, r11
	sadd_co_i32 s27, 0x4000, 0
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:0
	shl_b64 r32, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 35 3                          ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:35:3
	mad_u32 r176, r34, 2, s16
	.loc	2 0 0                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:0
	shl_b64 r34, 0, 0
	.loc	2 35 3                          ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:35:3
	and_or_b32 r28, r29, 56, r28
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
	shl_b64 r156, 0, r32
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
	shl_b64 r160, 0, r32
	add_u32 r8, s27, r10
	add_u32 r9, s27, r11
	sadd_co_i32 s27, 0x6000, 0
	shr_b32 r3, 2, r0
	add_u32 r4, 0, r10
	add_u32 r5, 0, r11
	add_u32 r10, s27, r10
	add_u32 r11, s27, r11
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
	add_u32 r28, 0x38040, r28
	smov_b64 s16, 0
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
	shl_b64 r182, 0, r184
	shl_b64 r188, 0, r184
	shl_b64 r186, 0, r184
	shl_b64 r192, 0, r184
	shl_b64 r190, 0, r184
	shl_b64 r180, 0, r184
	shl_b64 r178, 0, r184
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
	shl_b64 r162, 0, r34
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %for.inc1107
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 35 31                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:35:31
	sadd_co_u32 s16, 0x100, s16
	saddc_co_u32 s17, s17, 0
	scmp_eq_u64 0x3800, s16
	add_u32 r28, 0x80, r28
	.loc	2 35 3                          ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:35:3
	bra_smsks LBB2_16
LBB2_2:                                 ; %for.cond64.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 38 362 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:38:362
	add_u32 r29, 0xfffc7fc0, r28
	add_u32 r30, 0xffffffc0, r28
	mad_i32 r194, r29, 2, s8
	mad_i32 r196, r30, 2, s8
	.loc	2 38 345 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:38:345
	snop 0
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	arrive gvmcnt(1)
	sts_b128 r4, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r5, 0x0, r194
	.loc	2 40 9 is_stmt 1                ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:40:9
	and_xmsk s26, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %for.cond127.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 43 47                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:43:47
	add_co_u32 r182, r176, s16
	mov_b32 r31, s17
	addc_co_u32 r183, r177, r31
	add_co_u32 r184, 0x38080, r182
	addc_co_u32 r185, r183, 0
	ldg_b128 r178, r182, 0x80
	ldg_b128 r186, r182, 0xc0
	add_co_u32 r182, 0x380c0, r182
	addc_co_u32 r183, r183, 0
	ldg_b128 r190, r184, 0x0
	snop 0
	ldg_b128 r182, r182, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s26
	.loc	2 48 371 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:48:371
	mad_i32 r194, r29, 2, s12
	mad_i32 r196, r30, 2, s12
	.loc	2 52 369                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:52:369
	mad_i32 r202, r29, 2, s18
	mad_i32 r204, r30, 2, s18
	.loc	2 48 354                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:48:354
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 52 354                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:52:354
	ldg_b128 r206, r202, 0x0
	ldg_b128 r202, r204, 0x0
	.loc	2 48 354                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:48:354
	arrive gvmcnt(3)
	sts_b128 r6, 0x0, r198
	arrive gvmcnt(2)
	sts_b128 r7, 0x0, r194
	.loc	2 52 354                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:52:354
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r206
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r202
	.loc	2 54 9                          ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:54:9
	and_xmsk s26, s14
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %for.cond292.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 57 75                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:57:75
	add_co_u32 r182, r176, s16
	mov_b32 r31, s17
	addc_co_u32 r183, r177, r31
	add_co_u32 r184, 0x38080, r182
	addc_co_u32 r185, r183, 0
	ldg_b128 r178, r182, 0x80
	ldg_b128 r186, r182, 0xc0
	add_co_u32 r182, 0x380c0, r182
	addc_co_u32 r183, r183, 0
	ldg_b128 r190, r184, 0x0
	snop 0
	ldg_b128 r182, r182, 0x0
LBB2_6:                                 ; %if.end333
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 75 is_stmt 0                ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:75
	sor_b64 xmsk, xmsk, s26
	.loc	2 62 370 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:62:370
	mad_i32 r194, r29, 2, s20
	mad_i32 r196, r30, 2, s20
	.loc	2 62 355 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:62:355
	snop 0
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r194
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r194, r12, 0x0
	lds_b128 r198, r13, 0x0
	lds_b128 r202, r14, 0x0
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	add_i32 r31, 0x4000, r12
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r152, r156
	mma_16x16x16f16 r88, r194, r164, r88
	mma_16x16x16f16 r156, r196, r154, r156
	mma_16x16x16f16 r88, r196, r166, r88
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r194, r15, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r152, r144
	mma_16x16x16f16 r80, r198, r164, r80
	mma_16x16x16f16 r144, r200, r154, r144
	mma_16x16x16f16 r80, r200, r166, r80
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r198, r16, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r202, r152, r136
	mma_16x16x16f16 r72, r202, r164, r72
	mma_16x16x16f16 r136, r204, r154, r136
	mma_16x16x16f16 r72, r204, r166, r72
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r202, r17, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r152, r128
	mma_16x16x16f16 r64, r194, r164, r64
	mma_16x16x16f16 r128, r196, r154, r128
	mma_16x16x16f16 r64, r196, r166, r64
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r194, r18, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r198, r152, r120
	mma_16x16x16f16 r56, r198, r164, r56
	mma_16x16x16f16 r120, r200, r154, r120
	mma_16x16x16f16 r56, r200, r166, r56
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r198, r19, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r202, r152, r112
	mma_16x16x16f16 r48, r202, r164, r48
	mma_16x16x16f16 r112, r204, r154, r112
	mma_16x16x16f16 r48, r204, r166, r48
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r13
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r194, r152, r104
	mma_16x16x16f16 r40, r194, r164, r40
	mma_16x16x16f16 r104, r196, r154, r104
	mma_16x16x16f16 r40, r196, r166, r40
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r194, r31, 0x0
	add_i32 r31, 0x4000, r14
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r198, r152, r96
	mma_16x16x16f16 r32, r198, r164, r32
	mma_16x16x16f16 r96, r200, r154, r96
	mma_16x16x16f16 r32, r200, r166, r32
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r15
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r202, r152, r160
	mma_16x16x16f16 r92, r202, r164, r92
	mma_16x16x16f16 r160, r204, r154, r160
	mma_16x16x16f16 r92, r204, r166, r92
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r16
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r194, r152, r148
	mma_16x16x16f16 r84, r194, r164, r84
	mma_16x16x16f16 r148, r196, r154, r148
	mma_16x16x16f16 r84, r196, r166, r84
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r194, r31, 0x0
	add_i32 r31, 0x4000, r17
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r198, r152, r140
	mma_16x16x16f16 r76, r198, r164, r76
	mma_16x16x16f16 r140, r200, r154, r140
	mma_16x16x16f16 r76, r200, r166, r76
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r18
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r152, r132
	mma_16x16x16f16 r68, r202, r164, r68
	mma_16x16x16f16 r132, r204, r154, r132
	mma_16x16x16f16 r68, r204, r166, r68
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r19
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r194, r152, r124
	mma_16x16x16f16 r60, r194, r164, r60
	mma_16x16x16f16 r124, r196, r154, r124
	mma_16x16x16f16 r60, r196, r166, r60
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r194, r31, 0x0
	add_i32 r31, 0x4000, r20
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r198, r152, r116
	mma_16x16x16f16 r52, r198, r164, r52
	mma_16x16x16f16 r116, r200, r154, r116
	mma_16x16x16f16 r52, r200, r166, r52
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r198, r20, 0x0
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r202, r152, r108
	mma_16x16x16f16 r44, r202, r164, r44
	mma_16x16x16f16 r108, r204, r154, r108
	mma_16x16x16f16 r44, r204, r166, r44
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r202, r21, 0x0
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r194, r152, r100
	mma_16x16x16f16 r36, r194, r164, r36
	mma_16x16x16f16 r100, r196, r154, r100
	mma_16x16x16f16 r36, r196, r166, r36
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r194, r22, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r198, r168, r156
	mma_16x16x16f16 r88, r198, r172, r88
	mma_16x16x16f16 r156, r200, r170, r156
	mma_16x16x16f16 r88, r200, r174, r88
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r198, r23, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r202, r168, r144
	mma_16x16x16f16 r80, r202, r172, r80
	mma_16x16x16f16 r144, r204, r170, r144
	mma_16x16x16f16 r80, r204, r174, r80
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r202, r24, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r168, r136
	mma_16x16x16f16 r72, r194, r172, r72
	mma_16x16x16f16 r136, r196, r170, r136
	mma_16x16x16f16 r72, r196, r174, r72
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r194, r25, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r198, r168, r128
	mma_16x16x16f16 r64, r198, r172, r64
	mma_16x16x16f16 r128, r200, r170, r128
	mma_16x16x16f16 r64, r200, r174, r64
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r198, r26, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r202, r168, r120
	mma_16x16x16f16 r56, r202, r172, r56
	mma_16x16x16f16 r120, r204, r170, r120
	mma_16x16x16f16 r56, r204, r174, r56
	.loc	2 67 43                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:67:43
	lds_b128 r202, r27, 0x0
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r194, r168, r112
	mma_16x16x16f16 r48, r194, r172, r48
	mma_16x16x16f16 r112, r196, r170, r112
	mma_16x16x16f16 r48, r196, r174, r48
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r194, r31, 0x0
	add_i32 r31, 0x4000, r21
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r198, r168, r104
	mma_16x16x16f16 r40, r198, r172, r40
	mma_16x16x16f16 r104, r200, r170, r104
	mma_16x16x16f16 r40, r200, r174, r40
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r22
	.loc	2 73 57                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:73:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r202, r168, r96
	mma_16x16x16f16 r32, r202, r172, r32
	mma_16x16x16f16 r96, r204, r170, r96
	mma_16x16x16f16 r32, r204, r174, r32
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r23
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r194, r168, r160
	mma_16x16x16f16 r92, r194, r172, r92
	mma_16x16x16f16 r160, r196, r170, r160
	mma_16x16x16f16 r92, r196, r174, r92
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r194, r31, 0x0
	add_i32 r31, 0x4000, r24
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r198, r168, r148
	mma_16x16x16f16 r84, r198, r172, r84
	mma_16x16x16f16 r148, r200, r170, r148
	mma_16x16x16f16 r84, r200, r174, r84
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r198, r31, 0x0
	add_i32 r31, 0x4000, r25
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r168, r140
	mma_16x16x16f16 r76, r202, r172, r76
	mma_16x16x16f16 r140, r204, r170, r140
	mma_16x16x16f16 r76, r204, r174, r76
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r202, r31, 0x0
	add_i32 r31, 0x4000, r26
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r194, r168, r132
	mma_16x16x16f16 r68, r194, r172, r68
	mma_16x16x16f16 r132, r196, r170, r132
	mma_16x16x16f16 r68, r196, r174, r68
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r194, r31, 0x0
	add_i32 r31, 0x4000, r27
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r168, r124
	mma_16x16x16f16 r60, r198, r172, r60
	mma_16x16x16f16 r124, r200, r170, r124
	mma_16x16x16f16 r60, r200, r174, r60
	.loc	2 81 45                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:81:45
	lds_b128 r198, r31, 0x0
	.loc	2 87 56                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:87:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r202, r168, r116
	mma_16x16x16f16 r52, r202, r172, r52
	mma_16x16x16f16 r116, r204, r170, r116
	mma_16x16x16f16 r52, r204, r174, r52
	arrive bsmcnt(1)
	mma_16x16x16f16 r108, r194, r168, r108
	mma_16x16x16f16 r44, r194, r172, r44
	mma_16x16x16f16 r108, r196, r170, r108
	mma_16x16x16f16 r44, r196, r174, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r100, r198, r168, r100
	mma_16x16x16f16 r36, r198, r172, r36
	mma_16x16x16f16 r100, r200, r170, r100
	mma_16x16x16f16 r36, r200, r174, r36
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 98 363                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:98:363
	add_u32 r31, 0xfffc8000, r28
	mad_i32 r194, r31, 2, s8
	mad_i32 r196, r28, 2, s8
	.loc	2 100 16                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:100:16
	mov_b32 r202, 0x3700
	.loc	2 98 346                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:98:346
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 100 16                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:100:16
	mov_b32 r203, 0
	cmp_lg_u64 s26, s16, r202
	scmp_eq_u64 0x3700, s16
	.loc	2 98 346                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:98:346
	arrive gvmcnt(1)
	sts_b128 r4, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r5, 0x0, r194
	.loc	2 100 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:100:9
	bra_smsks LBB2_10
; %bb.7:                                ; %if.then642
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 101 11                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:101:11
	and_xmsk s30, s10
	snop 0
	bra_xmskz LBB2_9
; %bb.8:                                ; %for.cond646.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 104 48                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:104:48
	add_co_u32 r164, r176, s16
	mov_b32 r152, s17
	addc_co_u32 r165, r177, r152
	add_co_u32 r166, 0x38100, r164
	addc_co_u32 r167, r165, 0
	add_co_u32 r172, 0x38140, r164
	addc_co_u32 r173, r165, 0
	ldg_b128 r152, r164, 0x100
	ldg_b128 r168, r164, 0x140
	ldg_b128 r164, r166, 0x0
	ldg_b128 r172, r172, 0x0
LBB2_9:                                 ; %Flow570
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s30
LBB2_10:                                ; %if.end684
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 110 372 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:110:372
	mad_i32 r194, r29, 2, s22
	mad_i32 r196, r30, 2, s22
	.loc	2 114 370                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:114:370
	mad_i32 r202, r31, 2, s18
	mad_i32 r204, r28, 2, s18
	.loc	2 110 355                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:110:355
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 114 355                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:114:355
	ldg_b128 r206, r202, 0x0
	ldg_b128 r202, r204, 0x0
	.loc	2 116 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:116:9
	sandn_b64 cmsk, xmsk, s26
	.loc	2 110 355                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:110:355
	arrive gvmcnt(3)
	sts_b128 r6, 0x0, r198
	arrive gvmcnt(2)
	sts_b128 r7, 0x0, r194
	.loc	2 114 355                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:114:355
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r206
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r202
	.loc	2 116 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:116:9
	bra_cmsks LBB2_14
; %bb.11:                               ; %if.then812
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 117 11                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:117:11
	and_xmsk s30, s14
	snop 0
	bra_xmskz LBB2_13
; %bb.12:                               ; %for.cond816.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 120 77                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:120:77
	add_co_u32 r164, r176, s16
	mov_b32 r31, s17
	addc_co_u32 r165, r177, r31
	add_co_u32 r166, 0x38100, r164
	addc_co_u32 r167, r165, 0
	add_co_u32 r172, 0x38140, r164
	addc_co_u32 r173, r165, 0
	ldg_b128 r152, r164, 0x100
	ldg_b128 r168, r164, 0x140
	ldg_b128 r164, r166, 0x0
	ldg_b128 r172, r172, 0x0
LBB2_13:                                ; %Flow
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 77 is_stmt 0                ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:77
	sor_b64 xmsk, xmsk, s30
LBB2_14:                                ; %if.end858
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 126 371 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:126:371
	mad_i32 r194, r29, 2, s24
	mad_i32 r30, r30, 2, s24
	.loc	2 126 356 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:126:356
	snop 0
	ldg_b128 r194, r194, 0x0
	ldg_b128 r198, r30, 0x0
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r194
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r198
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r194, r12, 0x0
	lds_b128 r198, r13, 0x0
	lds_b128 r202, r14, 0x0
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	add_i32 r29, 0x4000, r12
	.loc	2 159 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:159:9
	sandn_b64 cmsk, xmsk, s26
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r178, r156
	mma_16x16x16f16 r88, r194, r190, r88
	mma_16x16x16f16 r156, r196, r180, r156
	mma_16x16x16f16 r88, r196, r192, r88
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r194, r15, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r178, r144
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r144, r200, r180, r144
	mma_16x16x16f16 r80, r200, r192, r80
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r198, r16, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r202, r178, r136
	mma_16x16x16f16 r72, r202, r190, r72
	mma_16x16x16f16 r136, r204, r180, r136
	mma_16x16x16f16 r72, r204, r192, r72
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r202, r17, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r178, r128
	mma_16x16x16f16 r64, r194, r190, r64
	mma_16x16x16f16 r128, r196, r180, r128
	mma_16x16x16f16 r64, r196, r192, r64
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r194, r18, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r198, r178, r120
	mma_16x16x16f16 r56, r198, r190, r56
	mma_16x16x16f16 r120, r200, r180, r120
	mma_16x16x16f16 r56, r200, r192, r56
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r198, r19, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r202, r178, r112
	mma_16x16x16f16 r48, r202, r190, r48
	mma_16x16x16f16 r112, r204, r180, r112
	mma_16x16x16f16 r48, r204, r192, r48
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r194, r178, r104
	mma_16x16x16f16 r40, r194, r190, r40
	mma_16x16x16f16 r104, r196, r180, r104
	mma_16x16x16f16 r40, r196, r192, r40
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r14
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r198, r178, r96
	mma_16x16x16f16 r32, r198, r190, r32
	mma_16x16x16f16 r96, r200, r180, r96
	mma_16x16x16f16 r32, r200, r192, r32
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r202, r178, r160
	mma_16x16x16f16 r92, r202, r190, r92
	mma_16x16x16f16 r160, r204, r180, r160
	mma_16x16x16f16 r92, r204, r192, r92
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r194, r178, r148
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r148, r196, r180, r148
	mma_16x16x16f16 r84, r196, r192, r84
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r198, r178, r140
	mma_16x16x16f16 r76, r198, r190, r76
	mma_16x16x16f16 r140, r200, r180, r140
	mma_16x16x16f16 r76, r200, r192, r76
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r18
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r178, r132
	mma_16x16x16f16 r68, r202, r190, r68
	mma_16x16x16f16 r132, r204, r180, r132
	mma_16x16x16f16 r68, r204, r192, r68
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r19
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r194, r178, r124
	mma_16x16x16f16 r60, r194, r190, r60
	mma_16x16x16f16 r124, r196, r180, r124
	mma_16x16x16f16 r60, r196, r192, r60
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r20
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r198, r178, r116
	mma_16x16x16f16 r52, r198, r190, r52
	mma_16x16x16f16 r116, r200, r180, r116
	mma_16x16x16f16 r52, r200, r192, r52
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r198, r20, 0x0
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r202, r178, r108
	mma_16x16x16f16 r44, r202, r190, r44
	mma_16x16x16f16 r108, r204, r180, r108
	mma_16x16x16f16 r44, r204, r192, r44
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r202, r21, 0x0
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r194, r178, r100
	mma_16x16x16f16 r36, r194, r190, r36
	mma_16x16x16f16 r100, r196, r180, r100
	mma_16x16x16f16 r36, r196, r192, r36
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r194, r22, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r198, r186, r156
	mma_16x16x16f16 r88, r198, r182, r88
	mma_16x16x16f16 r156, r200, r188, r156
	mma_16x16x16f16 r88, r200, r184, r88
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r198, r23, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r202, r186, r144
	mma_16x16x16f16 r80, r202, r182, r80
	mma_16x16x16f16 r144, r204, r188, r144
	mma_16x16x16f16 r80, r204, r184, r80
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r202, r24, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r186, r136
	mma_16x16x16f16 r72, r194, r182, r72
	mma_16x16x16f16 r136, r196, r188, r136
	mma_16x16x16f16 r72, r196, r184, r72
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r194, r25, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r198, r186, r128
	mma_16x16x16f16 r64, r198, r182, r64
	mma_16x16x16f16 r128, r200, r188, r128
	mma_16x16x16f16 r64, r200, r184, r64
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r198, r26, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r202, r186, r120
	mma_16x16x16f16 r56, r202, r182, r56
	mma_16x16x16f16 r120, r204, r188, r120
	mma_16x16x16f16 r56, r204, r184, r56
	.loc	2 131 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:131:45
	lds_b128 r202, r27, 0x0
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r194, r186, r112
	mma_16x16x16f16 r48, r194, r182, r48
	mma_16x16x16f16 r112, r196, r188, r112
	mma_16x16x16f16 r48, r196, r184, r48
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r198, r186, r104
	mma_16x16x16f16 r40, r198, r182, r40
	mma_16x16x16f16 r104, r200, r188, r104
	mma_16x16x16f16 r40, r200, r184, r40
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r22
	.loc	2 137 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:137:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r202, r186, r96
	mma_16x16x16f16 r32, r202, r182, r32
	mma_16x16x16f16 r96, r204, r188, r96
	mma_16x16x16f16 r32, r204, r184, r32
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r23
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r194, r186, r160
	mma_16x16x16f16 r92, r194, r182, r92
	mma_16x16x16f16 r160, r196, r188, r160
	mma_16x16x16f16 r92, r196, r184, r92
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r24
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r198, r186, r148
	mma_16x16x16f16 r84, r198, r182, r84
	mma_16x16x16f16 r148, r200, r188, r148
	mma_16x16x16f16 r84, r200, r184, r84
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r25
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r186, r140
	mma_16x16x16f16 r76, r202, r182, r76
	mma_16x16x16f16 r140, r204, r188, r140
	mma_16x16x16f16 r76, r204, r184, r76
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r26
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r194, r186, r132
	mma_16x16x16f16 r68, r194, r182, r68
	mma_16x16x16f16 r132, r196, r188, r132
	mma_16x16x16f16 r68, r196, r184, r68
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r27
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r186, r124
	mma_16x16x16f16 r60, r198, r182, r60
	mma_16x16x16f16 r124, r200, r188, r124
	mma_16x16x16f16 r60, r200, r184, r60
	.loc	2 145 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:145:45
	lds_b128 r198, r29, 0x0
	.loc	2 151 56                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:151:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r202, r186, r116
	mma_16x16x16f16 r52, r202, r182, r52
	mma_16x16x16f16 r116, r204, r188, r116
	mma_16x16x16f16 r52, r204, r184, r52
	arrive bsmcnt(1)
	mma_16x16x16f16 r108, r194, r186, r108
	mma_16x16x16f16 r44, r194, r182, r44
	mma_16x16x16f16 r108, r196, r188, r108
	mma_16x16x16f16 r44, r196, r184, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r100, r198, r186, r100
	mma_16x16x16f16 r36, r198, r182, r36
	mma_16x16x16f16 r100, r200, r188, r100
	mma_16x16x16f16 r36, r200, r184, r36
	.loc	2 159 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:159:9
	bra_cmsks LBB2_1
; %bb.15:                               ; %if.then1105
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
LBB2_16:                                ; %for.cond1110.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	sshl_b32 s5, 7, s6
	ssub_co_i32 s0, s0, s5
	sadd_co_i32 s0, s0, s1
	sshl_b32 s1, 18, s6
	sshl_b32 s4, 7, s4
	sadd_co_i32 s1, s4, s1
	smov_b32 s4, 0x1e0
	shl_b32 r4, 10, r0
	.loc	2 205 66 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:66
	and_or_b32 r1, r2, s4, r1
	shl_b32 r0, 11, r0
	and_b32 r4, 0xf0000, r4
	.loc	2 205 95 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:95
	cmp_lt_i32 s4, r1, s0
	and_b32 r0, 0x7800, r0
	add_u32 r2, s1, r4
	add_u32 r0, r2, r0
	and_or_b32 r0, r3, 12, r0
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_34
; %bb.17:                               ; %if.end1286
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_35
LBB2_18:                                ; %if.end1286.1
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_36
LBB2_19:                                ; %if.end1286.2
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_37
LBB2_20:                                ; %if.end1286.3
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_38
LBB2_21:                                ; %if.end1286.4
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_39
LBB2_22:                                ; %if.end1286.5
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_40
LBB2_23:                                ; %if.end1286.6
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_25
LBB2_24:                                ; %if.then1226.7
	.loc	2 187 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r99
.Ltmp13:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s4
	fmka_f32 r6, r99, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s4
	exp_f32 r6, r6
.Ltmp14:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r98
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp16:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r99, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r103
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s4
	fmka_f32 r7, r98, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s4
	exp_f32 r7, r7
.Ltmp18:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r97
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp20:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r98, r6
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s4
	fmka_f32 r8, r97, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s4
	exp_f32 r8, r8
.Ltmp22:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r96
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp24:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r97, r7
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s4
	fmka_f32 r5, r96, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s4
	exp_f32 r5, r5
.Ltmp26:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r96, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r100
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r101
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r102
.Ltmp27:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp28:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp29:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp30:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp31:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	mov_b32 r4, 0xe0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
LBB2_25:                                ; %if.end1286.7
	.loc	2 0 259                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:259
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 66 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:66
	or_b32 r1, r1, 16
	.loc	2 205 95 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:95
	cmp_lt_i32 s0, r1, s0
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_41
; %bb.26:                               ; %if.end1286.8
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_42
LBB2_27:                                ; %if.end1286.9
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_43
LBB2_28:                                ; %if.end1286.10
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_44
LBB2_29:                                ; %if.end1286.11
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_45
LBB2_30:                                ; %if.end1286.12
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_46
LBB2_31:                                ; %if.end1286.13
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_47
LBB2_32:                                ; %if.end1286.14
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_48
LBB2_33:                                ; %if.end1286.15
	.loc	2 219 1 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:219:1
	snop 1
	endk
LBB2_34:                                ; %if.then1226
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r159
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r159, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp33:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r158
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp35:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r159, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r163
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r158, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp37:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r157
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp39:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r158, r6
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r157, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp41:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r156
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp43:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r157, r7
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r156, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp45:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r156, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r160
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r161
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r162
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp47:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp48:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp49:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp50:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_b32 r4, 1, r0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_18
LBB2_35:                                ; %if.then1226.1
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r147
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r147, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp52:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r146
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp54:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r147, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r151
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r146, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp56:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r145
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp58:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r146, r6
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r145, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp60:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r144
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp62:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r145, r7
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r144, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp64:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r144, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r148
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r149
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r150
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp66:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp68:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp69:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_or_b32 r4, 1, r0, 32
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_19
LBB2_36:                                ; %if.then1226.2
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r139
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r139, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp71:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r138
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp73:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r139, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r143
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r138, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp75:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r137
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp77:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r138, r6
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r137, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp79:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r136
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp81:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r137, r7
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r136, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp83:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r136, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r140
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r141
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r142
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp85:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp87:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp88:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_or_b32 r4, 1, r0, 64
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_20
LBB2_37:                                ; %if.then1226.3
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r131
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r131, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp90:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r130
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp92:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r131, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r135
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r130, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp94:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r129
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp96:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r130, r6
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r129, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp98:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r128
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp100:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r129, r7
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r128, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp102:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r128, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r132
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r133
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r134
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp104:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp106:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp107:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	mov_b32 r4, 0x60
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_21
LBB2_38:                                ; %if.then1226.4
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r123
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r123, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp109:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r122
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp111:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r123, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r127
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r122, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp113:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r121
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp115:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r122, r6
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r121, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp117:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r120
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp119:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r121, r7
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r120, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp121:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r120, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r124
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r125
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r126
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp123:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp125:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp126:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	mov_b32 r4, 0x80
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_22
LBB2_39:                                ; %if.then1226.5
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r115
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r115, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp128:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r114
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp130:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r115, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r119
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r114, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp132:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r113
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp134:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r114, r6
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r113, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp136:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r112
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp138:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r113, r7
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r112, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp140:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r112, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r116
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r117
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r118
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp142:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp144:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp145:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	mov_b32 r4, 0xa0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_23
LBB2_40:                                ; %if.then1226.6
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r2, 0xbfb8aa3b, r107
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r107, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp147:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r6, r4, r4, s1
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s1, r4, s1
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r106
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp149:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r4, r107, r4
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r4, r4, r111
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r106, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp151:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r7, r6, r6, s1
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s1, r6, s1
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r105
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp153:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r6, r106, r6
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r105, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp155:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r8, r7, r7, s1
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s1, r7, s1
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r8, 0xbfb8aa3b, r104
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp157:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r7, r105, r7
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r104, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp159:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r5, r2, r2, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r2, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s1
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r2, r104, r2
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r2, r2, r108
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r3, r7, r109
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r5, r6, r110
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp161:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp163:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp164:
	.loc	2 216 259 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 216 27 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	mov_b32 r4, 0xc0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_24
	bra LBB2_25
LBB2_41:                                ; %if.then1226.8
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r91
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r91, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp166:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r90
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp168:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r91, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r95
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r90, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp170:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r89
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp172:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r90, r5
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r89, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp174:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r88
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp176:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r89, r6
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r88, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp178:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r88, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r92
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r93
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r94
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp182:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp183:
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10000, r3
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r9, r4, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_27
LBB2_42:                                ; %if.then1226.9
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r83
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r83, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp185:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r82
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp187:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r83, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r87
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r82, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp189:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r81
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp191:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r82, r5
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r81, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp193:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r80
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp195:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r81, r6
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r80, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp197:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r80, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r84
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r85
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r86
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp199:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp201:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp202:
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10020, r3
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r9, r4, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_28
LBB2_43:                                ; %if.then1226.10
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r75
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r75, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp204:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r74
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp206:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r75, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r79
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r74, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp208:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r73
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp210:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r74, r5
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r73, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp212:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r72
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp214:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r73, r6
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r72, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp216:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r72, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r76
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r77
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r78
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp218:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp220:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp221:
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10040, r3
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r9, r4, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_29
LBB2_44:                                ; %if.then1226.11
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r67
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r67, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp223:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r66
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp225:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r67, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r71
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r66, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp227:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r65
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp229:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r66, r5
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r65, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp231:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r64
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp233:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r65, r6
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r64, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp235:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r64, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r68
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r69
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r70
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp237:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp239:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp240:
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10060, r3
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r9, r4, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_30
LBB2_45:                                ; %if.then1226.12
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r59
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r59, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp242:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r58
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp244:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r59, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r63
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r58, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp246:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r57
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp248:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r58, r5
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r57, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp250:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r56
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp252:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r57, r6
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r56, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp254:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r56, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r60
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r61
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r62
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp256:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp258:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp259:
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10080, r3
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r9, r4, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_31
LBB2_46:                                ; %if.then1226.13
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r51
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r51, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp261:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r50
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp263:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r51, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r55
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r50, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp265:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r49
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp267:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r50, r5
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r49, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp269:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r48
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp271:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r49, r6
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r48, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp273:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r48, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r52
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r53
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r54
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp275:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp277:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp278:
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x100a0, r3
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r9, r4, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_32
LBB2_47:                                ; %if.then1226.14
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r43
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r43, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp280:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r42
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp282:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r43, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r47
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r42, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp284:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r41
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp286:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r42, r5
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r41, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp288:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r40
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp290:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r41, r6
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r40, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp292:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r40, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r44
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r45
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r46
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp294:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp296:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp297:
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x100c0, r3
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r9, r4, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:205:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_33
LBB2_48:                                ; %if.then1226.15
	.loc	2 187 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:187:27
	mul_f32 r1, 0xbfb8aa3b, r35
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r35, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp299:
	.loc	2 195 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:195:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:186:27
	mul_f32 r5, 0xbfb8aa3b, r34
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp301:
	.loc	2 199 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:199:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 203 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:203:20
	mul_f32 r3, r35, r3
	.loc	2 213 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:213:24
	mul_f32 r3, r3, r39
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r34, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp303:
	.loc	2 194 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:194:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:185:27
	mul_f32 r6, 0xbfb8aa3b, r33
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp305:
	.loc	2 198 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:198:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 202 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:202:20
	mul_f32 r5, r34, r5
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r33, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp307:
	.loc	2 193 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:193:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:184:27
	mul_f32 r7, 0xbfb8aa3b, r32
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp309:
	.loc	2 197 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:197:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 201 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:201:20
	mul_f32 r6, r33, r6
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r32, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp311:
	.loc	2 192 26                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:192:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:200:20
	mul_f32 r1, r32, r1
	.loc	2 210 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:210:24
	mul_f32 r1, r1, r36
	.loc	2 211 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:211:24
	mul_f32 r2, r6, r37
	.loc	2 212 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:212:24
	mul_f32 r4, r5, r38
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
	.loc	2 216 27 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s2, r0
	mov_b32 r3, s3
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x100e0, r0
	.loc	2 216 259 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	shl_b32 r0, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 216 27                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:27
	addc_co_u32 r7, r3, 0
	.loc	2 216 259                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:216:259
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 219 1 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:219:1
	snop 2
	endk
.Ltmp317:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 27
		.macahca_streg_size 3
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
; codeLenInByte = 24216
; NumMTRegsForWarps/PEU: 210
; NumSTRegsForWarps/PEU: 36
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 221 0                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:221:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp318:
	.loc	2 231 19 prologue_end           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:231:19
	smov_b32 s17, 0
	sshl_b64 s2, 2, s16
	and_b32 r0, 0x3ff, r0
	shl_b32 r1, 10, r0
	ldu_b256 s8, s0, 0x20
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	and_b32 r1, 0xf0000, r1
	mov_b32 r2, s5
	ldu_b32 s6, s2, 0x0
	shl_add_u32 r1, 18, r2, r1
	shl_b32 r3, 11, r0
	smov_b32 s3, 0x7800
	shr_b32 r2, 1, r0
	.loc	2 247 165                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:247:165
	and_or_b32 r27, r3, s3, r1
	and_b32 r4, r2, 24
	or_b32 r28, 0x8000, r27
	.loc	2 247 224 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:247:224
	or_b32 r152, r27, r4
	or_b32 r154, r28, r4
	.loc	2 247 67                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:247:67
	shl_b32 r1, 1, r152
	shl_b32 r3, 1, r154
	.loc	2 231 19 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:231:19
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 247 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:247:45
	ldg_b128 r156, s14, r1, 0x0
	ldg_b128 r160, s14, r3, 0x0
	.loc	2 247 67 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:247:67
	or_b32 r3, r1, 64
	or_b32 r1, 0x10040, r1
	.loc	2 232 20 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:232:20
	sshl_b64 s18, 2, s6
	.loc	2 247 45                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:247:45
	ldg_b128 r168, s14, r3, 0x0
	ldg_b128 r172, s14, r1, 0x0
	shl_b32 r1, 8, r0
	and_b32 r29, 0x3f800, r1
	shl_b32 r1, 3, r0
	and_b32 r19, r1, 32
	add_u32 r3, r19, r0
	and_b32 r5, r3, 32
	shr_b32 r3, 5, r0
	and_b32 r30, r1, 56
	and_b32 r4, 0x1fc0, r1
	and_b32 r1, r1, 16
	add_u32 r1, r1, r0
	add_shl_u32 r3, r3, r2, 4
	and_b32 r6, r1, 16
	mul_u24 r1, r0, 9
	and_b32 r11, r3, 16
	shr_b32 r3, 4, r0
	and_b32 r7, r1, 8
	shl_b32 r1, 6, r0
	add_shl_u32 r12, r3, r0, 3
	and_b32 r18, 0x3c0, r1
	.loc	2 232 20                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:232:20
	sadd_co_u32 s0, s8, s18
	and_or_b32 r26, r12, 8, r11
	saddc_co_u32 s1, s9, s19
	or_b32 r21, 0x400, r18
	or_b32 r22, r26, r19
	or_b32 r23, 0x800, r18
	or_b32 r24, 0xc00, r18
	or_b32 r25, 0x1000, r18
	or_b32 r31, 0x1400, r18
	or_b32 r32, 0x1800, r18
	or_b32 r33, 0x1c00, r18
	xor_b32 r34, r19, 32
	or_b32 r12, r22, r21
	or_b32 r13, r22, r23
	or_b32 r14, r22, r24
	or_b32 r15, r22, r25
	or_b32 r16, r22, r31
	or_b32 r17, r22, r32
	ldu_b32 s2, s0, 0x0
	.loc	2 233 19                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:233:19
	sadd_co_u32 s0, s44, s18
	or_b32 r20, r26, r18
	or_b32 r18, r22, r33
	or3_b32 r22, r26, r24, r34
	or3_b32 r24, r26, r31, r34
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	and_b32 r31, r0, 48
	.loc	2 233 19                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:233:19
	saddc_co_u32 s1, s45, s19
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	shl_or_b32 r27, 1, r27, r31
	or_b32 r11, r20, r19
	or_b32 r19, r20, r34
	or3_b32 r20, r26, r21, r34
	or3_b32 r21, r26, r23, r34
	or3_b32 r23, r26, r25, r34
	or3_b32 r25, r26, r32, r34
	.loc	2 234 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:234:22
	sadd_co_u32 s8, s46, s18
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	add_co_u32 r27, r27, s14
	mov_b32 r32, s15
	or3_b32 r26, r26, r33, r34
	addc_co_u32 r33, 0, r32
	.loc	2 234 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:234:22
	saddc_co_u32 s9, s47, s19
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	add_co_u32 r176, 0x88, r27
	.loc	2 233 19                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:233:19
	ldu_b32 s1, s0, 0x0
	.loc	2 234 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:234:22
	ldu_b32 s0, s8, 0x0
	sshl_b32 s9, 19, s4
	sadd_co_u32 s3, 0x80, s14
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	addc_co_u32 r177, r33, 0
	shl_or_b32 r27, 1, r28, r31
	or_b32 r3, r5, r7
	add_co_u32 r27, r27, s14
	saddc_co_u32 s5, s15, 0
	or3_b32 r3, r3, r4, r6
	or_b32 r4, r4, r5
	addc_co_u32 r28, 0, r32
	smul_i32 s8, 0xe00000, s6
	sadd_co_u32 s6, 0x100, s14
	add_co_u32 r180, 0x88, r27
	saddc_co_u32 s7, s15, 0
	or3_b32 r4, r4, r6, r7
	sadd_co_i32 s8, s8, s9
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:0
	shl_b64 r124, 0, 0
	shl_add_u32 r10, 1, r4, 0
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	or3_b32 r178, s8, r29, r30
	shl_add_u32 r3, 1, r3, 0
	addc_co_u32 r181, r28, 0
	.loc	2 0 0                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:0
	shl_b64 r126, 0, 0
	shl_b64 r128, 0, r124
	shl_b64 r132, 0, r124
	shl_b64 r136, 0, r124
	shl_b64 r140, 0, r124
	shl_b64 r144, 0, r124
	shl_b64 r148, 0, r124
	shl_b64 r164, 0, r124
	shl_b64 r28, 0, r124
	shl_b64 r32, 0, r124
	shl_b64 r36, 0, r124
	shl_b64 r40, 0, r124
	shl_b64 r44, 0, r124
	shl_b64 r48, 0, r124
	shl_b64 r52, 0, r124
	shl_b64 r56, 0, r124
	shl_b64 r60, 0, r124
	shl_b64 r64, 0, r124
	shl_b64 r68, 0, r124
	shl_b64 r72, 0, r124
	shl_b64 r76, 0, r124
	shl_b64 r80, 0, r124
	shl_b64 r84, 0, r124
	shl_b64 r88, 0, r124
	shl_b64 r120, 0, r124
	shl_b64 r116, 0, r124
	shl_b64 r112, 0, r124
	shl_b64 r108, 0, r124
	shl_b64 r104, 0, r124
	shl_b64 r100, 0, r124
	shl_b64 r96, 0, r124
	shl_b64 r92, 0, r124
	shr_b32 r1, 2, r0
	add_u32 r4, 0x1000, r10
	add_u32 r5, 0x2000, r10
	add_u32 r6, 0x3000, r10
	add_u32 r7, 0x4000, r3
	add_u32 r8, 0x5000, r10
	add_u32 r9, 0x6000, r10
	add_u32 r10, 0x7000, r10
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
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	mov_b32 r153, 0
	mov_b32 r155, 0
	smov_b64 s8, 0
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
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc632
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 249 31                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:31
	sadd_co_u32 s8, 0x80, s8
	add_co_u32 r176, 0x100, r176
	saddc_co_u32 s9, s9, 0
	addc_co_u32 r177, r177, 0
	add_co_u32 r180, 0x100, r180
	scmp_eq_u64 0x800, s8
	addc_co_u32 r181, r181, 0
	.loc	2 249 3                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:249:3
	bra_smsks LBB3_6
LBB3_2:                                 ; %for.cond67.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 252 349 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:252:349
	add_u32 r27, r178, s8
	add_u32 r179, 0x10000, r27
	mad_i32 r184, r179, 2, s40
	add_u32 r179, 0x20000, r27
	mad_i32 r190, r179, 2, s40
	add_u32 r179, 0x30000, r27
	mad_i32 r192, r179, 2, s40
	add_u32 r179, 0x40000, r27
	mad_i32 r198, r179, 2, s40
	add_u32 r179, 0x50000, r27
	mad_i32 r200, r179, 2, s40
	add_u32 r179, 0x60000, r27
	mad_i32 r206, r179, 2, s40
	add_u32 r179, 0x70000, r27
	mad_i32 r182, r27, 2, s40
	mad_i32 r208, r179, 2, s40
	.loc	2 252 332 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:252:332
	snop 0
	ldg_b128 r186, r182, 0x0
	ldg_b128 r182, r184, 0x0
	ldg_b128 r194, r190, 0x0
	ldg_b128 r190, r192, 0x0
	ldg_b128 r202, r198, 0x0
	ldg_b128 r198, r200, 0x0
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	arrive gvmcnt(7)
	sts_b128 r3, 0x0, r186
	arrive gvmcnt(6)
	sts_b128 r4, 0x0, r182
	arrive gvmcnt(5)
	sts_b128 r5, 0x0, r194
	arrive gvmcnt(4)
	sts_b128 r6, 0x0, r190
	arrive gvmcnt(3)
	sts_b128 r7, 0x0, r202
	arrive gvmcnt(2)
	sts_b128 r8, 0x0, r198
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r210
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r206
.Ltmp319:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp320:
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r182, r11, 0x0
	lds_b128 r186, r12, 0x0
	lds_b128 r190, r13, 0x0
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	add_i32 r179, 0x4000, r11
	.loc	2 257 49                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:49
	ldg_b128 r194, r180, -0x8
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r182, r156, r164
	mma_16x16x16f16 r120, r182, r160, r120
	mma_16x16x16f16 r164, r184, r158, r164
	mma_16x16x16f16 r120, r184, r162, r120
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r182, r14, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r186, r156, r148
	mma_16x16x16f16 r116, r186, r160, r116
	mma_16x16x16f16 r148, r188, r158, r148
	mma_16x16x16f16 r116, r188, r162, r116
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r186, r15, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r156, r144
	mma_16x16x16f16 r112, r190, r160, r112
	mma_16x16x16f16 r144, r192, r158, r144
	mma_16x16x16f16 r112, r192, r162, r112
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r190, r16, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r182, r156, r140
	mma_16x16x16f16 r108, r182, r160, r108
	mma_16x16x16f16 r140, r184, r158, r140
	mma_16x16x16f16 r108, r184, r162, r108
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r182, r17, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r186, r156, r136
	mma_16x16x16f16 r104, r186, r160, r104
	mma_16x16x16f16 r136, r188, r158, r136
	mma_16x16x16f16 r104, r188, r162, r104
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r186, r18, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r156, r132
	mma_16x16x16f16 r100, r190, r160, r100
	mma_16x16x16f16 r132, r192, r158, r132
	mma_16x16x16f16 r100, r192, r162, r100
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r190, r179, 0x0
	add_i32 r179, 0x4000, r12
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r182, r156, r128
	mma_16x16x16f16 r96, r182, r160, r96
	mma_16x16x16f16 r128, r184, r158, r128
	mma_16x16x16f16 r96, r184, r162, r96
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r182, r179, 0x0
	add_i32 r179, 0x4000, r13
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r186, r156, r124
	mma_16x16x16f16 r92, r186, r160, r92
	mma_16x16x16f16 r124, r188, r158, r124
	mma_16x16x16f16 r92, r188, r162, r92
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r186, r179, 0x0
	add_i32 r179, 0x4000, r14
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r190, r156, r88
	mma_16x16x16f16 r56, r190, r160, r56
	mma_16x16x16f16 r88, r192, r158, r88
	mma_16x16x16f16 r56, r192, r162, r56
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r190, r179, 0x0
	add_i32 r179, 0x4000, r15
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r182, r156, r84
	mma_16x16x16f16 r52, r182, r160, r52
	mma_16x16x16f16 r84, r184, r158, r84
	mma_16x16x16f16 r52, r184, r162, r52
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r182, r179, 0x0
	add_i32 r179, 0x4000, r16
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r186, r156, r80
	mma_16x16x16f16 r48, r186, r160, r48
	mma_16x16x16f16 r80, r188, r158, r80
	mma_16x16x16f16 r48, r188, r162, r48
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r186, r179, 0x0
	add_i32 r179, 0x4000, r17
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r190, r156, r76
	mma_16x16x16f16 r44, r190, r160, r44
	mma_16x16x16f16 r76, r192, r158, r76
	mma_16x16x16f16 r44, r192, r162, r44
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r190, r179, 0x0
	add_i32 r179, 0x4000, r18
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r182, r156, r72
	mma_16x16x16f16 r40, r182, r160, r40
	mma_16x16x16f16 r72, r184, r158, r72
	mma_16x16x16f16 r40, r184, r162, r40
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r182, r179, 0x0
	add_i32 r179, 0x4000, r19
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r186, r156, r68
	mma_16x16x16f16 r36, r186, r160, r36
	mma_16x16x16f16 r68, r188, r158, r68
	mma_16x16x16f16 r36, r188, r162, r36
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r186, r19, 0x0
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r190, r156, r64
	mma_16x16x16f16 r32, r190, r160, r32
	mma_16x16x16f16 r64, r192, r158, r64
	mma_16x16x16f16 r32, r192, r162, r32
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r190, r20, 0x0
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r60, r182, r156, r60
	mma_16x16x16f16 r28, r182, r160, r28
	mma_16x16x16f16 r60, r184, r158, r60
	mma_16x16x16f16 r28, r184, r162, r28
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r182, r21, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r186, r168, r164
	mma_16x16x16f16 r120, r186, r172, r120
	mma_16x16x16f16 r164, r188, r170, r164
	mma_16x16x16f16 r120, r188, r174, r120
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r186, r22, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r190, r168, r148
	mma_16x16x16f16 r116, r190, r172, r116
	mma_16x16x16f16 r148, r192, r170, r148
	mma_16x16x16f16 r116, r192, r174, r116
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r190, r23, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r182, r168, r144
	mma_16x16x16f16 r112, r182, r172, r112
	mma_16x16x16f16 r144, r184, r170, r144
	mma_16x16x16f16 r112, r184, r174, r112
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r182, r24, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r186, r168, r140
	mma_16x16x16f16 r108, r186, r172, r108
	mma_16x16x16f16 r140, r188, r170, r140
	mma_16x16x16f16 r108, r188, r174, r108
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r186, r25, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r190, r168, r136
	mma_16x16x16f16 r104, r190, r172, r104
	mma_16x16x16f16 r136, r192, r170, r136
	mma_16x16x16f16 r104, r192, r174, r104
	.loc	2 261 41                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:261:41
	lds_b128 r190, r26, 0x0
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r182, r168, r132
	mma_16x16x16f16 r100, r182, r172, r100
	mma_16x16x16f16 r132, r184, r170, r132
	mma_16x16x16f16 r100, r184, r174, r100
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r182, r179, 0x0
	add_i32 r179, 0x4000, r20
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r186, r168, r128
	mma_16x16x16f16 r96, r186, r172, r96
	mma_16x16x16f16 r128, r188, r170, r128
	mma_16x16x16f16 r96, r188, r174, r96
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r186, r179, 0x0
	add_i32 r179, 0x4000, r21
	.loc	2 267 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:267:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r190, r168, r124
	mma_16x16x16f16 r92, r190, r172, r92
	mma_16x16x16f16 r124, r192, r170, r124
	mma_16x16x16f16 r92, r192, r174, r92
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r190, r179, 0x0
	add_i32 r179, 0x4000, r22
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r182, r168, r88
	mma_16x16x16f16 r56, r182, r172, r56
	mma_16x16x16f16 r88, r184, r170, r88
	mma_16x16x16f16 r56, r184, r174, r56
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r182, r179, 0x0
	add_i32 r179, 0x4000, r23
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r186, r168, r84
	mma_16x16x16f16 r52, r186, r172, r52
	mma_16x16x16f16 r84, r188, r170, r84
	mma_16x16x16f16 r52, r188, r174, r52
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r186, r179, 0x0
	add_i32 r179, 0x4000, r24
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r190, r168, r80
	mma_16x16x16f16 r48, r190, r172, r48
	mma_16x16x16f16 r80, r192, r170, r80
	mma_16x16x16f16 r48, r192, r174, r48
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r190, r179, 0x0
	add_i32 r179, 0x4000, r25
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r182, r168, r76
	mma_16x16x16f16 r44, r182, r172, r44
	mma_16x16x16f16 r76, r184, r170, r76
	mma_16x16x16f16 r44, r184, r174, r44
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r182, r179, 0x0
	add_i32 r179, 0x4000, r26
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r186, r168, r72
	mma_16x16x16f16 r40, r186, r172, r40
	mma_16x16x16f16 r72, r188, r170, r72
	mma_16x16x16f16 r40, r188, r174, r40
	.loc	2 275 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:275:43
	lds_b128 r186, r179, 0x0
	.loc	2 257 71                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:71
	add_co_u32 r179, r152, s8
	.loc	2 257 248 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:248
	or_b32 r200, r179, 32
	.loc	2 281 58 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r190, r168, r68
	mma_16x16x16f16 r36, r190, r172, r36
	mma_16x16x16f16 r68, r192, r170, r68
	mma_16x16x16f16 r36, r192, r174, r36
	.loc	2 257 49                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:49
	ldg_b128 r190, r176, -0x8
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r64, r182, r168, r64
	mma_16x16x16f16 r32, r182, r172, r32
	mma_16x16x16f16 r64, r184, r170, r64
	.loc	2 257 71                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:71
	mov_b32 r182, s9
	addc_co_u32 r201, r153, r182
	add_co_u32 r179, r154, s8
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	mma_16x16x16f16 r32, r184, r174, r32
	.loc	2 257 71                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:71
	addc_co_u32 r199, r155, r182
	shl_b64 r184, 1, r200
	mov_b32 r183, s5
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	arrive bsmcnt(0)
	mma_16x16x16f16 r60, r186, r168, r60
	.loc	2 257 71                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:71
	add_co_u32 r184, s3, r184
	.loc	2 257 248 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:248
	or_b32 r198, r179, 32
	.loc	2 257 71                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:71
	addc_co_u32 r185, r183, r185
	.loc	2 281 58 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	mma_16x16x16f16 r28, r186, r172, r28
	mma_16x16x16f16 r60, r188, r170, r60
	.loc	2 257 71                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:71
	shl_b64 r186, 1, r198
	add_co_u32 r182, s3, r186
	addc_co_u32 r183, r183, r187
	.loc	2 281 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:281:58
	mma_16x16x16f16 r28, r188, r174, r28
	.loc	2 257 49                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:257:49
	ldg_b128 r186, r184, 0x0
	ldg_b128 r182, r182, 0x0
.Ltmp321:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp322:
	.loc	2 292 349                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:292:349
	add_u32 r179, 0x10040, r27
	mad_i32 r204, r179, 2, s40
	add_u32 r179, 0x20040, r27
	mad_i32 r210, r179, 2, s40
	add_u32 r179, 0x30040, r27
	mad_i32 r212, r179, 2, s40
	add_u32 r179, 0x40040, r27
	mad_i32 r218, r179, 2, s40
	add_u32 r179, 0x50040, r27
	mad_i32 r202, r27, 2, s40
	mad_i32 r220, r179, 2, s40
	add_u32 r179, 0x60040, r27
	add_u32 r27, 0x70040, r27
	mad_i32 r226, r179, 2, s40
	mad_i32 r228, r27, 2, s40
	.loc	2 292 332 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:292:332
	ldg_b128 r206, r202, 0x80
	ldg_b128 r202, r204, 0x0
	ldg_b128 r214, r210, 0x0
	ldg_b128 r210, r212, 0x0
	ldg_b128 r222, r218, 0x0
	ldg_b128 r218, r220, 0x0
	ldg_b128 r230, r226, 0x0
	ldg_b128 r226, r228, 0x0
	arrive gvmcnt(7)
	sts_b128 r3, 0x0, r206
	arrive gvmcnt(6)
	sts_b128 r4, 0x0, r202
	arrive gvmcnt(5)
	sts_b128 r5, 0x0, r214
	arrive gvmcnt(4)
	sts_b128 r6, 0x0, r210
	arrive gvmcnt(3)
	sts_b128 r7, 0x0, r222
	arrive gvmcnt(2)
	sts_b128 r8, 0x0, r218
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r230
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r226
.Ltmp323:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp324:
	.loc	2 295 16                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:295:16
	mov_b32 r202, 0x780
	mov_b32 r203, 0
	cmp_lg_u64 s14, s8, r202
	.loc	2 295 9 is_stmt 0               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:295:9
	snop 3
	sand_b64 cmsk, xmsk, s14
	snop 0
	bra_cmskz LBB3_4
; %bb.3:                                ; %for.cond410.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 298 71 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:298:71
	shl_b64 r168, 1, r200
	add_co_u32 r168, s6, r168
	mov_b32 r27, s7
	addc_co_u32 r169, r27, r169
	shl_b64 r170, 1, r198
	add_co_u32 r172, s6, r170
	addc_co_u32 r173, r27, r171
	.loc	2 298 49 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:298:49
	ldg_b128 r156, r176, 0x78
	ldg_b128 r160, r180, 0x78
	ldg_b128 r168, r168, 0x0
	ldg_b128 r172, r172, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 303 43 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r198, r11, 0x0
	lds_b128 r202, r12, 0x0
	lds_b128 r206, r13, 0x0
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	add_i32 r27, 0x4000, r11
	.loc	2 331 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:331:9
	sandn_b64 cmsk, xmsk, s14
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r198, r190, r164
	mma_16x16x16f16 r120, r198, r194, r120
	mma_16x16x16f16 r164, r200, r192, r164
	mma_16x16x16f16 r120, r200, r196, r120
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r198, r14, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r202, r190, r148
	mma_16x16x16f16 r116, r202, r194, r116
	mma_16x16x16f16 r148, r204, r192, r148
	mma_16x16x16f16 r116, r204, r196, r116
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r202, r15, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r206, r190, r144
	mma_16x16x16f16 r112, r206, r194, r112
	mma_16x16x16f16 r144, r208, r192, r144
	mma_16x16x16f16 r112, r208, r196, r112
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r206, r16, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r198, r190, r140
	mma_16x16x16f16 r108, r198, r194, r108
	mma_16x16x16f16 r140, r200, r192, r140
	mma_16x16x16f16 r108, r200, r196, r108
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r198, r17, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r202, r190, r136
	mma_16x16x16f16 r104, r202, r194, r104
	mma_16x16x16f16 r136, r204, r192, r136
	mma_16x16x16f16 r104, r204, r196, r104
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r202, r18, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r206, r190, r132
	mma_16x16x16f16 r100, r206, r194, r100
	mma_16x16x16f16 r132, r208, r192, r132
	mma_16x16x16f16 r100, r208, r196, r100
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r12
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r198, r190, r128
	mma_16x16x16f16 r96, r198, r194, r96
	mma_16x16x16f16 r128, r200, r192, r128
	mma_16x16x16f16 r96, r200, r196, r96
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r13
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r202, r190, r124
	mma_16x16x16f16 r92, r202, r194, r92
	mma_16x16x16f16 r124, r204, r192, r124
	mma_16x16x16f16 r92, r204, r196, r92
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r202, r27, 0x0
	add_i32 r27, 0x4000, r14
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r206, r190, r88
	mma_16x16x16f16 r56, r206, r194, r56
	mma_16x16x16f16 r88, r208, r192, r88
	mma_16x16x16f16 r56, r208, r196, r56
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r15
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r198, r190, r84
	mma_16x16x16f16 r52, r198, r194, r52
	mma_16x16x16f16 r84, r200, r192, r84
	mma_16x16x16f16 r52, r200, r196, r52
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r16
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r202, r190, r80
	mma_16x16x16f16 r48, r202, r194, r48
	mma_16x16x16f16 r80, r204, r192, r80
	mma_16x16x16f16 r48, r204, r196, r48
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r202, r27, 0x0
	add_i32 r27, 0x4000, r17
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r206, r190, r76
	mma_16x16x16f16 r44, r206, r194, r44
	mma_16x16x16f16 r76, r208, r192, r76
	mma_16x16x16f16 r44, r208, r196, r44
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r206, r27, 0x0
	add_i32 r27, 0x4000, r18
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r198, r190, r72
	mma_16x16x16f16 r40, r198, r194, r40
	mma_16x16x16f16 r72, r200, r192, r72
	mma_16x16x16f16 r40, r200, r196, r40
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r19
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r202, r190, r68
	mma_16x16x16f16 r36, r202, r194, r36
	mma_16x16x16f16 r68, r204, r192, r68
	mma_16x16x16f16 r36, r204, r196, r36
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r202, r19, 0x0
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r206, r190, r64
	mma_16x16x16f16 r32, r206, r194, r32
	mma_16x16x16f16 r64, r208, r192, r64
	mma_16x16x16f16 r32, r208, r196, r32
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r206, r20, 0x0
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r60, r198, r190, r60
	mma_16x16x16f16 r28, r198, r194, r28
	mma_16x16x16f16 r60, r200, r192, r60
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r190, r21, 0x0
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	mma_16x16x16f16 r28, r200, r196, r28
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r194, r22, 0x0
	lds_b128 r198, r23, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(4)
	mma_16x16x16f16 r164, r202, r186, r164
	mma_16x16x16f16 r120, r202, r182, r120
	mma_16x16x16f16 r164, r204, r188, r164
	mma_16x16x16f16 r120, r204, r184, r120
	arrive bsmcnt(3)
	mma_16x16x16f16 r148, r206, r186, r148
	mma_16x16x16f16 r116, r206, r182, r116
	mma_16x16x16f16 r148, r208, r188, r148
	mma_16x16x16f16 r116, r208, r184, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r186, r144
	mma_16x16x16f16 r112, r190, r182, r112
	mma_16x16x16f16 r144, r192, r188, r144
	mma_16x16x16f16 r112, r192, r184, r112
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r190, r24, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r186, r140
	mma_16x16x16f16 r108, r194, r182, r108
	mma_16x16x16f16 r140, r196, r188, r140
	mma_16x16x16f16 r108, r196, r184, r108
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r194, r25, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r186, r136
	mma_16x16x16f16 r104, r198, r182, r104
	mma_16x16x16f16 r136, r200, r188, r136
	mma_16x16x16f16 r104, r200, r184, r104
	.loc	2 303 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:303:43
	lds_b128 r198, r26, 0x0
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r186, r132
	mma_16x16x16f16 r100, r190, r182, r100
	mma_16x16x16f16 r132, r192, r188, r132
	mma_16x16x16f16 r100, r192, r184, r100
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r190, r27, 0x0
	add_i32 r27, 0x4000, r20
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r186, r128
	mma_16x16x16f16 r96, r194, r182, r96
	mma_16x16x16f16 r128, r196, r188, r128
	mma_16x16x16f16 r96, r196, r184, r96
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r21
	.loc	2 309 58                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:309:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r186, r124
	mma_16x16x16f16 r92, r198, r182, r92
	mma_16x16x16f16 r124, r200, r188, r124
	mma_16x16x16f16 r92, r200, r184, r92
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r22
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r190, r186, r88
	mma_16x16x16f16 r56, r190, r182, r56
	mma_16x16x16f16 r88, r192, r188, r88
	mma_16x16x16f16 r56, r192, r184, r56
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r190, r27, 0x0
	add_i32 r27, 0x4000, r23
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r194, r186, r84
	mma_16x16x16f16 r52, r194, r182, r52
	mma_16x16x16f16 r84, r196, r188, r84
	mma_16x16x16f16 r52, r196, r184, r52
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r24
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r186, r80
	mma_16x16x16f16 r48, r198, r182, r48
	mma_16x16x16f16 r80, r200, r188, r80
	mma_16x16x16f16 r48, r200, r184, r48
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r25
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r190, r186, r76
	mma_16x16x16f16 r44, r190, r182, r44
	mma_16x16x16f16 r76, r192, r188, r76
	mma_16x16x16f16 r44, r192, r184, r44
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r190, r27, 0x0
	add_i32 r27, 0x4000, r26
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r194, r186, r72
	mma_16x16x16f16 r40, r194, r182, r40
	mma_16x16x16f16 r72, r196, r188, r72
	mma_16x16x16f16 r40, r196, r184, r40
	.loc	2 317 43                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:317:43
	lds_b128 r194, r27, 0x0
	.loc	2 323 59                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:323:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r198, r186, r68
	mma_16x16x16f16 r36, r198, r182, r36
	mma_16x16x16f16 r68, r200, r188, r68
	mma_16x16x16f16 r36, r200, r184, r36
	arrive bsmcnt(1)
	mma_16x16x16f16 r64, r190, r186, r64
	mma_16x16x16f16 r32, r190, r182, r32
	mma_16x16x16f16 r64, r192, r188, r64
	mma_16x16x16f16 r32, r192, r184, r32
	arrive bsmcnt(0)
	mma_16x16x16f16 r60, r194, r186, r60
	mma_16x16x16f16 r28, r194, r182, r28
	mma_16x16x16f16 r60, r196, r188, r60
	mma_16x16x16f16 r28, r196, r184, r28
	.loc	2 331 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:331:9
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
	and_b32 r4, r0, 15
	and_b32 r6, 0x1e0, r2
	or_b32 r3, r4, s3
	or_b32 r9, s6, r4
	ssub_co_i32 s2, s2, s3
	add_u32 r3, r3, r6
	or_b32 r2, r6, r4
	mov_b32 r10, s7
	add_co_u32 r6, r9, r6
	addc_co_u32 r9, r10, 0
	sadd_co_i32 s2, s2, s0
	sashr_i32 s3, 31, s1
	add_co_u32 r6, r6, s1
	mov_b32 r10, s3
	.loc	2 337 92 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:337:92
	cmp_ge_i32 s8, r2, s2
	cmp_lt_i32 s14, r2, s2
	sashr_i32 s5, 31, s0
	mov_b32 r7, s0
	addc_co_u32 r9, r9, r10
	mov_b32 r8, s5
	sub_co_u32 r6, r6, r7
	add_u32 r5, r3, s1
	mov_b32 r3, 0
	subb_co_u32 r7, r9, r8
	.loc	2 337 9 is_stmt 0               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:337:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_10
; %bb.7:                                ; %if.then653
	.loc	2 0 9                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sub_u32 r3, r5, s0
	cmp_gt_i32 s20, 0x11c0, r3
	.loc	2 339 15 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:339:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r3, 0
	.loc	2 339 163 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:339:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_9
; %bb.8:                                ; %if.then682
	.loc	2 0 163                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r3, s13
	addc_co_u32 r9, r3, r9
	.loc	2 340 19 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:340:19
	snop 1
	ldg_b32 r3, r8, 0x0
LBB3_9:                                 ; %Flow531
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_10:                                ; %for.inc706
	sor_b64 xmsk, xmsk, s6
	.loc	2 337 63 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:337:63
	or_b32 r2, r2, 16
	.loc	2 337 92 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:337:92
	cmp_ge_i32 s6, r2, s2
	cmp_lt_i32 s2, r2, s2
	.loc	2 0 0                           ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 337 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:337:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_14
; %bb.11:                               ; %if.then653.1
	.loc	2 339 117 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:339:117
	add_u32 r2, r5, 16
	.loc	2 339 15 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:339:15
	cmp_ge_i32 s20, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x11c0, r2
	mov_b32 r2, 0
	.loc	2 339 163                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:339:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_13
; %bb.12:                               ; %if.then682.1
	.loc	2 0 163                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 340 19 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:340:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_13:                                ; %Flow530
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_14:                                ; %for.inc706.1
	sor_b64 xmsk, xmsk, s18
	smul_i32 s0, 0xe0000, s16
	sshl_b32 s1, 8, s4
	sadd_co_i32 s0, s1, s0
	mov_b32 r5, s0
	shr_b32 r0, 6, r0
	smov_b32 s1, 0x38000
	mad_u24 r0, r0, s1, r5
	smov_b32 s0, 0x1c00
	mad_u24 r0, r4, s0, r0
	and_or_b32 r0, r1, 12, r0
	shl_b64 r6, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then727
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(0)
	mul_f32 r1, r164, r3
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r4, r165, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r5, r166, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r8, r167, r3
.Ltmp327:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp328:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp331:
LBB3_16:                                ; %if.end782
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 22 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mov_b32 r1, 0
	shl_b64 r4, 1, r0
	add_co_u32 r4, s10, r4
	mov_b32 r1, s11
	addc_co_u32 r5, r1, r5
	.loc	2 365 256 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r4, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then727.1
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(1)
	mul_f32 r7, r149, r3
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r148, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r8, r150, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r9, r151, r3
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp333:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp336:
LBB3_18:                                ; %if.end782.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 16
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r20, r1, 2, s10
	shl_b64 r8, 0, 0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r20, 0x0, r6 devc
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then727.2
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(2)
	mul_f32 r1, r144, r3
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r6, r145, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r7, r146, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r10, r147, r3
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp338:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp340:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp341:
LBB3_20:                                ; %if.end782.2
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 32
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r6, r1, 2, s10
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then727.3
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(3)
	mul_f32 r9, r141, r3
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r140, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r10, r142, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r11, r143, r3
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp343:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp345:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp346:
LBB3_22:                                ; %if.end782.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 48
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r24, r1, 2, s10
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then727.4
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(4)
	mul_f32 r9, r137, r3
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r136, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r10, r138, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r11, r139, r3
.Ltmp347:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp348:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp350:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp351:
LBB3_24:                                ; %if.end782.4
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 64
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r12, r1, 2, s10
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then727.5
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(5)
	mul_f32 r9, r133, r3
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r132, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r10, r134, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r11, r135, r3
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp353:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp355:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp356:
LBB3_26:                                ; %if.end782.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, 0x50, r0
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r26, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r26, 0x0, r8 devc
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then727.6
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(6)
	mul_f32 r1, r128, r3
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r8, r129, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r9, r130, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r14, r131, r3
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp358:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp361:
LBB3_28:                                ; %if.end782.6
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, 0x60, r0
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r8, r1, 2, s10
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then727.7
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(7)
	mul_f32 r11, r125, r3
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r124, r3
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r14, r126, r3
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r15, r127, r3
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp363:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp366:
LBB3_30:                                ; %if.end782.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, 0x70, r0
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r14, 0, 0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r22, 0x0, r10 devc
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then727.8
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(8)
	mul_f32 r1, r120, r2
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r10, r121, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r11, r122, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r16, r123, r2
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp368:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp371:
LBB3_32:                                ; %if.end782.8
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 22 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	add_co_u32 r10, 0x38000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 365 192 is_stmt 0             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:192
	add_u32 r0, 0x1c000, r0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r10, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then727.9
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(9)
	mul_f32 r15, r117, r2
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r116, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r16, r118, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r17, r119, r2
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp373:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp376:
LBB3_34:                                ; %if.end782.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 16
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r116, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r116, 0x0, r14 devc
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then727.10
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(10)
	mul_f32 r1, r112, r2
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r14, r113, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r15, r114, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r18, r115, r2
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp378:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp381:
LBB3_36:                                ; %if.end782.10
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 32
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r14, r1, 2, s10
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then727.11
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(11)
	mul_f32 r17, r109, r2
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r108, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r18, r110, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r19, r111, r2
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp383:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp386:
LBB3_38:                                ; %if.end782.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 48
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r108, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r108, 0x0, r16 devc
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then727.12
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(12)
	mul_f32 r1, r104, r2
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r16, r105, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r17, r106, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r104, r107, r2
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp388:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r104
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp391:
LBB3_40:                                ; %if.end782.12
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, r0, 64
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r16, r1, 2, s10
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then727.13
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	arrive gvmcnt(13)
	mul_f32 r19, r101, r2
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	mul_f32 r1, r100, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r100, r102, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r101, r103, r2
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp393:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r100
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r101
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp396:
LBB3_42:                                ; %if.end782.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, 0x50, r0
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r100, r1, 2, s10
	shl_b64 r102, 0, 0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r100, 0x0, r18 devc
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then727.14
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(14)
	mul_f32 r1, r96, r2
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r18, r97, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r19, r98, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r96, r99, r2
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r102_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp398:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r102_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r103_lo, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r103_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp401:
LBB3_44:                                ; %if.end782.14
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r1, 0x60, r0
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r18, r1, 2, s10
	shl_b64 r96, 0, 0
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 0
	stg_b64 r18, 0x0, r102 devc
	.loc	2 349 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then727.15
	.loc	2 354 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:354:22
	arrive gvmcnt(15)
	mul_f32 r1, r92, r2
	.loc	2 355 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:355:22
	mul_f32 r92, r93, r2
	.loc	2 356 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:356:22
	mul_f32 r93, r94, r2
	.loc	2 357 22                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:357:22
	mul_f32 r94, r95, r2
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp403:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_hi, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_lo, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_hi, r94
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp406:
LBB3_46:                                ; %if.end782.15
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 213 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:213
	or_b32 r0, 0x70, r0
	.loc	2 365 22 is_stmt 0              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:22
	mad_i32 r0, r0, 2, s10
	.loc	2 365 256                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:365:256
	snop 1
	stg_b64 r0, 0x0, r96 devc
	.loc	2 369 9 is_stmt 1               ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.end893.1.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	shl_b64 r92, 0, 0
	snop 1
	stg_b64 r4, 0x100, r92 devc
                                        ; implicit-def: $mtreg_64bits_4
LBB3_48:                                ; %Flow529
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r92, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then832
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	arrive gvmcnt(16)
	mul_f32 r88, r88, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r89, r89, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r90, r90, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r91, r91, r3
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r88_lo, r88
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp408:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r88_hi, r89
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r89_lo, r90
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp410:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r89_hi, r91
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp411:
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r4, 0x100, r88 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r4, r84, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r5, r85, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r84, r86, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r85, r87, r3
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r92_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp413:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r92_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r93_lo, r84
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r93_hi, r85
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp416:
LBB3_50:                                ; %if.end893.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r20, 0x100, r92 devc
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.end893.3.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r6, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_52:                                ; %Flow528
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.then832.2
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	arrive gvmcnt(17)
	mul_f32 r4, r80, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r5, r81, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r20, r82, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r21, r83, r3
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp418:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp420:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r21
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp421:
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r6, 0x100, r4 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r4, r76, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r5, r77, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r78, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r7, r79, r3
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp423:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp425:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp426:
LBB3_54:                                ; %if.end893.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r24, 0x100, r4 devc
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.end893.5.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_56:                                ; %Flow527
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.then832.4
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	arrive gvmcnt(18)
	mul_f32 r4, r72, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r5, r73, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r74, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r7, r75, r3
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp428:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp431:
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r12, 0x100, r4 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r4, r68, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r5, r69, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r70, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r7, r71, r3
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp433:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp436:
LBB3_58:                                ; %if.end893.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r26, 0x100, r4 devc
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.end893.7.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	shl_b64 r4, 0, 0
                                        ; implicit-def: $mtreg_32bit_3
	snop 1
	stg_b64 r8, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_60:                                ; %Flow526
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.then832.6
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	arrive gvmcnt(19)
	mul_f32 r4, r64, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r5, r65, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r66, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r7, r67, r3
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp441:
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r8, 0x100, r4 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r4, r60, r3
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	mul_f32 r5, r61, r3
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r62, r3
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r3, r63, r3
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp446:
LBB3_62:                                ; %if.end893.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r22, 0x100, r4 devc
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.end893.9.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_64:                                ; %Flow524
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.then832.8
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	arrive gvmcnt(20)
	mul_f32 r4, r57, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r5, r58, r2
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r56, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r6, r59, r2
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
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
	.loc	2 375 24 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r53, r2
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	stg_b64 r10, 0x100, r8 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r52, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r54, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r7, r55, r2
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
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
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r116, 0x100, r4 devc
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.end893.11.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r14, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_68:                                ; %Flow523
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.then832.10
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	arrive gvmcnt(21)
	mul_f32 r4, r49, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r5, r50, r2
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r48, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r6, r51, r2
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
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
	.loc	2 375 24 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r45, r2
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	stg_b64 r14, 0x100, r8 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r44, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r46, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r7, r47, r2
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
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
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r108, 0x100, r4 devc
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.end893.13.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_72:                                ; %Flow522
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then832.12
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	arrive gvmcnt(22)
	mul_f32 r4, r41, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r5, r42, r2
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r40, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r6, r43, r2
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
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
	.loc	2 375 24 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r37, r2
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	stg_b64 r16, 0x100, r8 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r36, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r38, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r7, r39, r2
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
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
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r100, 0x100, r4 devc
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
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
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 387 1                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:387:1
	snop 0
	endk
LBB3_77:                                ; %if.end893.15.critedge
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	arrive gvmcnt(23)
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r18, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_18
	.loc	2 369 9                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
LBB3_78:                                ; %if.then832.14
	.loc	2 375 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	arrive gvmcnt(23)
	mul_f32 r4, r33, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r5, r34, r2
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r32, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r6, r35, r2
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
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
	.loc	2 375 24 is_stmt 1              ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r29, r2
	.loc	2 385 264                       ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	stg_b64 r18, 0x100, r8 devc
	.loc	2 374 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:374:24
	mul_f32 r3, r28, r2
	.loc	2 376 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:376:24
	mul_f32 r6, r30, r2
	.loc	2 377 24                        ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:377:24
	mul_f32 r2, r31, r2
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
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
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp486:
	.loc	2 385 264 is_stmt 1             ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:385:264
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 387 1                         ; race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp:387:1
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
; codeLenInByte = 16360
; NumMTRegsForWarps/PEU: 234
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
	.byte	95                              ; DW_AT_call_line
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
	.byte	128                             ; DW_AT_call_line
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
	.byte	160                             ; DW_AT_call_line
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
	.byte	191                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	190                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	189                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	188                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x133:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	214                             ; DW_AT_call_line
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
	.byte	215                             ; DW_AT_call_line
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
	.byte	254                             ; DW_AT_call_line
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
	.short	289                             ; DW_AT_call_line
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
	.short	294                             ; DW_AT_call_line
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
	.short	332                             ; DW_AT_call_line
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
	.short	358                             ; DW_AT_call_line
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
	.short	359                             ; DW_AT_call_line
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
	.short	378                             ; DW_AT_call_line
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
	.short	379                             ; DW_AT_call_line
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
	.asciz	"/root/tilelang-metax/race_tests/moe/v030_codegen_tmp/v027_case2_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=117
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=138
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=148
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=162
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=168
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=184
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=202
.Linfo_string9:
	.asciz	"kernel_kernel"                 ; string offset=220
.Linfo_string10:
	.asciz	"kernel_kernel_1"               ; string offset=234
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
    .mtreg_count:    210
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    36
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
    .mtreg_count:    234
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
