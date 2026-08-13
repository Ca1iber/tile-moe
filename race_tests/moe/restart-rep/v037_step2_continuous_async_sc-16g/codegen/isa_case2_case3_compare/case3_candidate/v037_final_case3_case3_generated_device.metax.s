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
	.file	2 "/tmp/v037_case1only_codegen" "v037_final_case3_case3_generated_device.cpp"
	.loc	2 56 0                          ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:56:0
; %bb.0:                                ; %entry
	and_b32 r0, 0x3ff, r0
	smov_b32 s6, s5
	smul_i32 s5, 0xe0000, s5
.Ltmp4:
	.loc	2 63 19 prologue_end            ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:63:19
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
	.loc	2 78 59                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:59
	mov_b32 r35, 0
	shl_b64 r4, 1, r34
	arrive slcnt(0)
	add_co_u32 r4, s16, r4
	mov_b32 r3, s17
	addc_co_u32 r5, r3, r5
	add_co_u32 r6, 0x38000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 78 41 is_stmt 0               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:41
	ldg_b128 r158, r4, 0x0
	.loc	2 78 218                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:218
	or_b32 r4, r34, 32
	.loc	2 78 59                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:59
	mov_b32 r5, 0
	shl_b64 r4, 1, r4
	.loc	2 78 41                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:41
	ldg_b128 r162, r6, 0x0
	.loc	2 78 59                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:59
	add_co_u32 r4, s16, r4
	.loc	2 78 218                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:218
	add_u32 r6, 0x1c020, r34
	.loc	2 78 59                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:59
	mov_b32 r7, 0
	addc_co_u32 r5, r3, r5
	shl_b64 r6, 1, r6
	add_co_u32 r6, s16, r6
	addc_co_u32 r7, r3, r7
	.loc	2 78 41                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:78:41
	ldg_b128 r166, r4, 0x0
	ldu_b256 s8, s0, 0x0
	ldg_b128 r170, r6, 0x0
	shl_b32 r29, 3, r0
	and_b32 r20, r29, 32
	add_u32 r3, r20, r0
	and_b32 r6, r3, 32
	and_b32 r3, r29, 16
	.loc	2 63 19 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:63:19
	arrive slcnt(0)
	sadd_co_u32 s2, s10, s2
	saddc_co_u32 s3, s11, s3
	ldu_b32 s10, s2, 0x0
	shr_b32 r4, 5, r0
	add_u32 r3, r3, r0
	and_b32 r7, r3, 16
	mul_u24 r3, r0, 9
	add_shl_u32 r4, r4, r2, 4
	and_b32 r8, r3, 8
	arrive slcnt(0)
	sashr_i32 s11, 31, s10
	.loc	2 64 20                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:64:20
	sshl_b64 s20, 2, s10
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r0
	ldu_b64 s2, s0, 0x30
	sadd_co_u32 s0, s14, s20
	saddc_co_u32 s1, s15, s21
	add_shl_u32 r13, r4, r0, 3
	and_b32 r5, 0x1fc0, r29
	or_b32 r4, r6, r8
	.loc	2 65 22                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:65:22
	sadd_co_u32 s12, s12, s20
	or3_b32 r4, r4, r5, r7
	or_b32 r5, r5, r6
	or3_b32 r5, r5, r7, r8
	saddc_co_u32 s13, s13, s21
	shl_b32 r3, 6, r0
	and_b32 r19, 0x3c0, r3
	shl_b32 r7, 1, r5
	and_or_b32 r27, r13, 8, r12
	.loc	2 64 20                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:64:20
	ldu_b32 s0, s0, 0x0
	.loc	2 65 22                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:65:22
	ldu_b32 s1, s12, 0x0
	smul_i32 s7, 0xe00000, s10
	smul_i32 s10, 0xe0000, s4
	shl_b32 r9, 1, r4
	add_u32 r10, 0x1000, r7
	add_u32 r11, 0x2000, r7
	add_u32 r14, 0x3000, r7
	sadd_co_i32 s11, 0x4000, 0
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r25, 0xc00, r19
	or_b32 r26, 0x1000, r19
	or_b32 r30, 0x1400, r19
	or_b32 r31, 0x1800, r19
	or_b32 r32, 0x1c00, r19
	xor_b32 r33, r20, 32
	.loc	2 80 3                          ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:80:3
	sadd_co_i32 s7, s7, s10
	or_b32 r13, r23, r22
	or_b32 r15, r23, r25
	or_b32 r16, r23, r26
	or_b32 r17, r23, r30
	or_b32 r18, r23, r31
	or_b32 r21, r27, r19
	or_b32 r19, r23, r32
	shr_b32 r28, 3, r0
	add_u32 r4, 0, r9
	add_u32 r5, 0, r10
	add_u32 r6, 0, r11
	add_u32 r7, 0, r14
	add_u32 r8, s11, r9
	add_u32 r9, s11, r10
	add_u32 r10, s11, r11
	add_u32 r11, s11, r14
	or_b32 r14, r23, r24
	or3_b32 r23, r27, r25, r33
	or3_b32 r25, r27, r30, r33
	mov_b32 r30, s7
	mad_u24 r28, r28, s5, r30
	.loc	2 0 0 is_stmt 0                 ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:0
	shl_b64 r94, 0, 0
	or_b32 r12, r21, r20
	or_b32 r20, r21, r33
	or3_b32 r21, r27, r22, r33
	or3_b32 r22, r27, r24, r33
	or3_b32 r24, r27, r26, r33
	or3_b32 r26, r27, r31, r33
	or3_b32 r27, r27, r32, r33
	.loc	2 80 3                          ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:80:3
	and_or_b32 r28, r29, 56, r28
	mad_u32 r174, r34, 2, s16
	.loc	2 0 0                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:0
	shl_b64 r96, 0, 0
	shl_b64 r102, 0, r94
	shl_b64 r110, 0, r94
	shl_b64 r118, 0, r94
	shl_b64 r126, 0, r94
	shl_b64 r134, 0, r94
	shl_b64 r142, 0, r94
	shl_b64 r150, 0, r94
	shl_b64 r30, 0, r94
	shl_b64 r38, 0, r94
	shl_b64 r46, 0, r94
	shl_b64 r54, 0, r94
	shl_b64 r62, 0, r94
	shl_b64 r70, 0, r94
	shl_b64 r78, 0, r94
	shl_b64 r86, 0, r94
	shl_b64 r98, 0, r94
	shl_b64 r106, 0, r94
	shl_b64 r114, 0, r94
	shl_b64 r122, 0, r94
	shl_b64 r130, 0, r94
	shl_b64 r138, 0, r94
	shl_b64 r146, 0, r94
	shl_b64 r154, 0, r94
	shl_b64 r90, 0, r94
	shl_b64 r82, 0, r94
	shl_b64 r74, 0, r94
	shl_b64 r66, 0, r94
	shl_b64 r58, 0, r94
	shl_b64 r50, 0, r94
	shl_b64 r42, 0, r94
	shl_b64 r34, 0, r94
	shr_b32 r3, 2, r0
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
	.loc	2 80 3                          ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:80:3
	add_u32 r28, 0xa8040, r28
	smov_b64 s10, 0
	shl_b64 r104, 0, r96
	shl_b64 r112, 0, r96
	shl_b64 r120, 0, r96
	shl_b64 r128, 0, r96
	shl_b64 r136, 0, r96
	shl_b64 r144, 0, r96
	shl_b64 r152, 0, r96
	shl_b64 r32, 0, r96
	shl_b64 r40, 0, r96
	shl_b64 r48, 0, r96
	shl_b64 r56, 0, r96
	shl_b64 r64, 0, r96
	shl_b64 r72, 0, r96
	shl_b64 r80, 0, r96
	shl_b64 r88, 0, r96
	shl_b64 r100, 0, r96
	shl_b64 r108, 0, r96
	shl_b64 r116, 0, r96
	shl_b64 r124, 0, r96
	shl_b64 r132, 0, r96
	shl_b64 r140, 0, r96
	shl_b64 r148, 0, r96
	shl_b64 r156, 0, r96
	shl_b64 r92, 0, r96
	shl_b64 r84, 0, r96
	shl_b64 r76, 0, r96
	shl_b64 r68, 0, r96
	shl_b64 r60, 0, r96
	shl_b64 r52, 0, r96
	shl_b64 r44, 0, r96
	shl_b64 r36, 0, r96
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %for.inc754
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 80 31                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:80:31
	sadd_co_u32 s10, 0x100, s10
	saddc_co_u32 s11, s11, 0
	scmp_eq_u64 0x3800, s10
	add_u32 r28, 0x80, r28
	.loc	2 80 3                          ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:80:3
	bra_smsks LBB2_6
LBB2_2:                                 ; %for.cond64.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 83 362 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:83:362
	add_u32 r29, 0xfff57fc0, r28
	mad_i32 r178, r29, 2, s8
	add_u32 r176, 0xfff8ffc0, r28
	mad_i32 r180, r176, 2, s8
	.loc	2 83 345 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:83:345
	ldg_b128 r182, r178, 0x0
	.loc	2 83 362                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:83:362
	add_u32 r178, 0xffffffc0, r28
	add_u32 r177, 0xfffc7fc0, r28
	mad_i32 r190, r178, 2, s8
	.loc	2 83 345                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:83:345
	ldg_b128 r186, r180, 0x0
	.loc	2 83 362                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:83:362
	mad_i32 r180, r177, 2, s8
	.loc	2 87 369 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:87:369
	mad_i32 r178, r178, 2, s18
	.loc	2 83 345                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:83:345
	snop 0
	ldg_b128 r192, r180, 0x0
	ldg_b128 r196, r190, 0x0
	.loc	2 87 369                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:87:369
	mad_i32 r190, r176, 2, s18
	mad_i32 r180, r29, 2, s18
	mad_i32 r176, r177, 2, s18
	.loc	2 87 354 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:87:354
	snop 0
	ldg_b128 r200, r180, 0x0
	ldg_b128 r204, r190, 0x0
	ldg_b128 r208, r176, 0x0
	ldg_b128 r176, r178, 0x0
	.loc	2 83 345 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:83:345
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r182
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r186
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r192
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r196
	.loc	2 87 354                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:87:354
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r200
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r204
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r208
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r176
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r176, r12, 0x0
	lds_b128 r180, r13, 0x0
	lds_b128 r184, r14, 0x0
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	add_i32 r29, 0x4000, r12
	.loc	2 92 45                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:92:45
	add_co_u32 r192, r174, s10
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r176, r158, r150
	mma_16x16x16f16 r90, r176, r162, r90
	mma_16x16x16f16 r150, r178, r160, r150
	mma_16x16x16f16 r90, r178, r164, r90
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r176, r15, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r180, r158, r142
	mma_16x16x16f16 r82, r180, r162, r82
	mma_16x16x16f16 r142, r182, r160, r142
	mma_16x16x16f16 r82, r182, r164, r82
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r180, r16, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r184, r158, r134
	mma_16x16x16f16 r74, r184, r162, r74
	mma_16x16x16f16 r134, r186, r160, r134
	mma_16x16x16f16 r74, r186, r164, r74
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r184, r17, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r176, r158, r126
	mma_16x16x16f16 r66, r176, r162, r66
	mma_16x16x16f16 r126, r178, r160, r126
	mma_16x16x16f16 r66, r178, r164, r66
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r176, r18, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r180, r158, r118
	mma_16x16x16f16 r58, r180, r162, r58
	mma_16x16x16f16 r118, r182, r160, r118
	mma_16x16x16f16 r58, r182, r164, r58
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r180, r19, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r184, r158, r110
	mma_16x16x16f16 r50, r184, r162, r50
	mma_16x16x16f16 r110, r186, r160, r110
	mma_16x16x16f16 r50, r186, r164, r50
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r176, r158, r102
	mma_16x16x16f16 r42, r176, r162, r42
	mma_16x16x16f16 r102, r178, r160, r102
	mma_16x16x16f16 r42, r178, r164, r42
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r176, r29, 0x0
	add_i32 r29, 0x4000, r14
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r180, r158, r94
	mma_16x16x16f16 r34, r180, r162, r34
	mma_16x16x16f16 r94, r182, r160, r94
	mma_16x16x16f16 r34, r182, r164, r34
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r180, r29, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r184, r158, r154
	mma_16x16x16f16 r86, r184, r162, r86
	mma_16x16x16f16 r154, r186, r160, r154
	mma_16x16x16f16 r86, r186, r164, r86
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r176, r158, r146
	mma_16x16x16f16 r78, r176, r162, r78
	mma_16x16x16f16 r146, r178, r160, r146
	mma_16x16x16f16 r78, r178, r164, r78
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r176, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r180, r158, r138
	mma_16x16x16f16 r70, r180, r162, r70
	mma_16x16x16f16 r138, r182, r160, r138
	mma_16x16x16f16 r70, r182, r164, r70
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r180, r29, 0x0
	add_i32 r29, 0x4000, r18
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r184, r158, r130
	mma_16x16x16f16 r62, r184, r162, r62
	mma_16x16x16f16 r130, r186, r160, r130
	mma_16x16x16f16 r62, r186, r164, r62
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r19
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r176, r158, r122
	mma_16x16x16f16 r54, r176, r162, r54
	mma_16x16x16f16 r122, r178, r160, r122
	mma_16x16x16f16 r54, r178, r164, r54
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r176, r29, 0x0
	add_i32 r29, 0x4000, r20
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r180, r158, r114
	mma_16x16x16f16 r46, r180, r162, r46
	mma_16x16x16f16 r114, r182, r160, r114
	mma_16x16x16f16 r46, r182, r164, r46
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r180, r20, 0x0
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r184, r158, r106
	mma_16x16x16f16 r38, r184, r162, r38
	mma_16x16x16f16 r106, r186, r160, r106
	mma_16x16x16f16 r38, r186, r164, r38
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r184, r21, 0x0
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r176, r158, r98
	mma_16x16x16f16 r30, r176, r162, r30
	mma_16x16x16f16 r98, r178, r160, r98
	mma_16x16x16f16 r30, r178, r164, r30
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r176, r22, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r180, r166, r150
	mma_16x16x16f16 r90, r180, r170, r90
	mma_16x16x16f16 r150, r182, r168, r150
	mma_16x16x16f16 r90, r182, r172, r90
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r180, r23, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r184, r166, r142
	mma_16x16x16f16 r82, r184, r170, r82
	mma_16x16x16f16 r142, r186, r168, r142
	mma_16x16x16f16 r82, r186, r172, r82
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r184, r24, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r176, r166, r134
	mma_16x16x16f16 r74, r176, r170, r74
	mma_16x16x16f16 r134, r178, r168, r134
	mma_16x16x16f16 r74, r178, r172, r74
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r176, r25, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r180, r166, r126
	mma_16x16x16f16 r66, r180, r170, r66
	mma_16x16x16f16 r126, r182, r168, r126
	mma_16x16x16f16 r66, r182, r172, r66
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r180, r26, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r184, r166, r118
	mma_16x16x16f16 r58, r184, r170, r58
	mma_16x16x16f16 r118, r186, r168, r118
	mma_16x16x16f16 r58, r186, r172, r58
	.loc	2 96 43                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:96:43
	lds_b128 r184, r27, 0x0
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r176, r166, r110
	mma_16x16x16f16 r50, r176, r170, r50
	mma_16x16x16f16 r110, r178, r168, r110
	mma_16x16x16f16 r50, r178, r172, r50
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r176, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r180, r166, r102
	mma_16x16x16f16 r42, r180, r170, r42
	mma_16x16x16f16 r102, r182, r168, r102
	mma_16x16x16f16 r42, r182, r172, r42
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r180, r29, 0x0
	add_i32 r29, 0x4000, r22
	.loc	2 102 57                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:102:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r184, r166, r94
	mma_16x16x16f16 r34, r184, r170, r34
	mma_16x16x16f16 r94, r186, r168, r94
	mma_16x16x16f16 r34, r186, r172, r34
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r23
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r176, r166, r154
	mma_16x16x16f16 r86, r176, r170, r86
	mma_16x16x16f16 r154, r178, r168, r154
	mma_16x16x16f16 r86, r178, r172, r86
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r176, r29, 0x0
	add_i32 r29, 0x4000, r24
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r180, r166, r146
	mma_16x16x16f16 r78, r180, r170, r78
	mma_16x16x16f16 r146, r182, r168, r146
	mma_16x16x16f16 r78, r182, r172, r78
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r180, r29, 0x0
	add_i32 r29, 0x4000, r25
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r184, r166, r138
	mma_16x16x16f16 r70, r184, r170, r70
	mma_16x16x16f16 r138, r186, r168, r138
	mma_16x16x16f16 r70, r186, r172, r70
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r26
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r176, r166, r130
	mma_16x16x16f16 r62, r176, r170, r62
	mma_16x16x16f16 r130, r178, r168, r130
	mma_16x16x16f16 r62, r178, r172, r62
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r176, r29, 0x0
	add_i32 r29, 0x4000, r27
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r180, r166, r122
	mma_16x16x16f16 r54, r180, r170, r54
	mma_16x16x16f16 r122, r182, r168, r122
	mma_16x16x16f16 r54, r182, r172, r54
	.loc	2 110 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:110:45
	lds_b128 r180, r29, 0x0
	.loc	2 92 45                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:92:45
	mov_b32 r29, s11
	addc_co_u32 r193, r175, r29
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r184, r166, r114
	mma_16x16x16f16 r46, r184, r170, r46
	.loc	2 92 45                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:92:45
	ldg_b128 r188, r192, 0x80
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	mma_16x16x16f16 r114, r186, r168, r114
	mma_16x16x16f16 r46, r186, r172, r46
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r176, r166, r106
	mma_16x16x16f16 r38, r176, r170, r38
	mma_16x16x16f16 r106, r178, r168, r106
	.loc	2 92 45                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:92:45
	add_co_u32 r176, 0x38080, r192
	addc_co_u32 r177, r193, 0
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	mma_16x16x16f16 r38, r178, r172, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r180, r166, r98
	.loc	2 92 45                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:92:45
	add_co_u32 r178, 0x380c0, r192
	addc_co_u32 r179, r193, 0
	ldg_b128 r184, r176, 0x0
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	mma_16x16x16f16 r30, r180, r170, r30
	.loc	2 92 45                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:92:45
	ldg_b128 r176, r178, 0x0
	.loc	2 116 55                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:116:55
	mma_16x16x16f16 r98, r182, r168, r98
	mma_16x16x16f16 r30, r182, r172, r30
	.loc	2 92 45                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:92:45
	ldg_b128 r180, r192, 0xc0
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 127 362                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:127:362
	add_u32 r29, 0xfff58000, r28
	add_u32 r194, 0xfff90000, r28
	add_u32 r195, 0xfffc8000, r28
	mad_i32 r196, r29, 2, s8
	mad_i32 r198, r194, 2, s8
	mad_i32 r204, r195, 2, s8
	mad_i32 r206, r28, 2, s8
	.loc	2 131 369                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:131:369
	mad_i32 r212, r29, 2, s18
	mad_i32 r214, r194, 2, s18
	mad_i32 r194, r195, 2, s18
	mad_i32 r220, r28, 2, s18
	.loc	2 127 345                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:127:345
	ldg_b128 r200, r196, 0x0
	ldg_b128 r196, r198, 0x0
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	.loc	2 131 354                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:131:354
	ldg_b128 r216, r212, 0x0
	ldg_b128 r212, r214, 0x0
	ldg_b128 r222, r194, 0x0
	ldg_b128 r226, r220, 0x0
	.loc	2 127 345                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:127:345
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r200
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r196
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r208
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r204
	.loc	2 131 354                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:131:354
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r216
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r212
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r222
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r226
.Ltmp9:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 134 16                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:134:16
	mov_b32 r194, 0x3700
	mov_b32 r195, 0
	cmp_lg_u64 s12, s10, r194
	.loc	2 134 9 is_stmt 0               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:134:9
	snop 3
	sand_b64 cmsk, xmsk, s12
	snop 0
	bra_cmskz LBB2_4
; %bb.3:                                ; %for.cond532.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 137 46 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:137:46
	add_co_u32 r162, 0x38100, r192
	addc_co_u32 r163, r193, 0
	add_co_u32 r170, 0x38140, r192
	addc_co_u32 r171, r193, 0
	ldg_b128 r158, r192, 0x100
	ldg_b128 r166, r192, 0x140
	ldg_b128 r162, r162, 0x0
	ldg_b128 r170, r170, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r192, r12, 0x0
	lds_b128 r196, r13, 0x0
	lds_b128 r200, r14, 0x0
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	add_i32 r29, 0x4000, r12
	.loc	2 170 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:170:9
	sandn_b64 cmsk, xmsk, s12
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r192, r188, r150
	mma_16x16x16f16 r90, r192, r184, r90
	mma_16x16x16f16 r150, r194, r190, r150
	mma_16x16x16f16 r90, r194, r186, r90
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r192, r15, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r196, r188, r142
	mma_16x16x16f16 r82, r196, r184, r82
	mma_16x16x16f16 r142, r198, r190, r142
	mma_16x16x16f16 r82, r198, r186, r82
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r196, r16, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r200, r188, r134
	mma_16x16x16f16 r74, r200, r184, r74
	mma_16x16x16f16 r134, r202, r190, r134
	mma_16x16x16f16 r74, r202, r186, r74
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r200, r17, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r188, r126
	mma_16x16x16f16 r66, r192, r184, r66
	mma_16x16x16f16 r126, r194, r190, r126
	mma_16x16x16f16 r66, r194, r186, r66
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r192, r18, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r196, r188, r118
	mma_16x16x16f16 r58, r196, r184, r58
	mma_16x16x16f16 r118, r198, r190, r118
	mma_16x16x16f16 r58, r198, r186, r58
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r196, r19, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r200, r188, r110
	mma_16x16x16f16 r50, r200, r184, r50
	mma_16x16x16f16 r110, r202, r190, r110
	mma_16x16x16f16 r50, r202, r186, r50
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r192, r188, r102
	mma_16x16x16f16 r42, r192, r184, r42
	mma_16x16x16f16 r102, r194, r190, r102
	mma_16x16x16f16 r42, r194, r186, r42
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r192, r29, 0x0
	add_i32 r29, 0x4000, r14
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r196, r188, r94
	mma_16x16x16f16 r34, r196, r184, r34
	mma_16x16x16f16 r94, r198, r190, r94
	mma_16x16x16f16 r34, r198, r186, r34
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r196, r29, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r200, r188, r154
	mma_16x16x16f16 r86, r200, r184, r86
	mma_16x16x16f16 r154, r202, r190, r154
	mma_16x16x16f16 r86, r202, r186, r86
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r192, r188, r146
	mma_16x16x16f16 r78, r192, r184, r78
	mma_16x16x16f16 r146, r194, r190, r146
	mma_16x16x16f16 r78, r194, r186, r78
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r192, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r196, r188, r138
	mma_16x16x16f16 r70, r196, r184, r70
	mma_16x16x16f16 r138, r198, r190, r138
	mma_16x16x16f16 r70, r198, r186, r70
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r196, r29, 0x0
	add_i32 r29, 0x4000, r18
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r200, r188, r130
	mma_16x16x16f16 r62, r200, r184, r62
	mma_16x16x16f16 r130, r202, r190, r130
	mma_16x16x16f16 r62, r202, r186, r62
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r19
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r192, r188, r122
	mma_16x16x16f16 r54, r192, r184, r54
	mma_16x16x16f16 r122, r194, r190, r122
	mma_16x16x16f16 r54, r194, r186, r54
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r192, r29, 0x0
	add_i32 r29, 0x4000, r20
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r196, r188, r114
	mma_16x16x16f16 r46, r196, r184, r46
	mma_16x16x16f16 r114, r198, r190, r114
	mma_16x16x16f16 r46, r198, r186, r46
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r196, r20, 0x0
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r200, r188, r106
	mma_16x16x16f16 r38, r200, r184, r38
	mma_16x16x16f16 r106, r202, r190, r106
	mma_16x16x16f16 r38, r202, r186, r38
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r200, r21, 0x0
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r192, r188, r98
	mma_16x16x16f16 r30, r192, r184, r30
	mma_16x16x16f16 r98, r194, r190, r98
	mma_16x16x16f16 r30, r194, r186, r30
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r184, r22, 0x0
	lds_b128 r188, r23, 0x0
	lds_b128 r192, r24, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(4)
	mma_16x16x16f16 r150, r196, r180, r150
	mma_16x16x16f16 r90, r196, r176, r90
	mma_16x16x16f16 r150, r198, r182, r150
	mma_16x16x16f16 r90, r198, r178, r90
	arrive bsmcnt(3)
	mma_16x16x16f16 r142, r200, r180, r142
	mma_16x16x16f16 r82, r200, r176, r82
	mma_16x16x16f16 r142, r202, r182, r142
	mma_16x16x16f16 r82, r202, r178, r82
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r184, r180, r134
	mma_16x16x16f16 r74, r184, r176, r74
	mma_16x16x16f16 r134, r186, r182, r134
	mma_16x16x16f16 r74, r186, r178, r74
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r184, r25, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r180, r126
	mma_16x16x16f16 r66, r188, r176, r66
	mma_16x16x16f16 r126, r190, r182, r126
	mma_16x16x16f16 r66, r190, r178, r66
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r188, r26, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r192, r180, r118
	mma_16x16x16f16 r58, r192, r176, r58
	mma_16x16x16f16 r118, r194, r182, r118
	mma_16x16x16f16 r58, r194, r178, r58
	.loc	2 142 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:142:45
	lds_b128 r192, r27, 0x0
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r184, r180, r110
	mma_16x16x16f16 r50, r184, r176, r50
	mma_16x16x16f16 r110, r186, r182, r110
	mma_16x16x16f16 r50, r186, r178, r50
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r188, r180, r102
	mma_16x16x16f16 r42, r188, r176, r42
	mma_16x16x16f16 r102, r190, r182, r102
	mma_16x16x16f16 r42, r190, r178, r42
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r188, r29, 0x0
	add_i32 r29, 0x4000, r22
	.loc	2 148 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r192, r180, r94
	mma_16x16x16f16 r34, r192, r176, r34
	mma_16x16x16f16 r94, r194, r182, r94
	mma_16x16x16f16 r34, r194, r178, r34
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r192, r29, 0x0
	add_i32 r29, 0x4000, r23
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r184, r180, r154
	mma_16x16x16f16 r86, r184, r176, r86
	mma_16x16x16f16 r154, r186, r182, r154
	mma_16x16x16f16 r86, r186, r178, r86
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r24
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r188, r180, r146
	mma_16x16x16f16 r78, r188, r176, r78
	mma_16x16x16f16 r146, r190, r182, r146
	mma_16x16x16f16 r78, r190, r178, r78
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r188, r29, 0x0
	add_i32 r29, 0x4000, r25
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r192, r180, r138
	mma_16x16x16f16 r70, r192, r176, r70
	mma_16x16x16f16 r138, r194, r182, r138
	mma_16x16x16f16 r70, r194, r178, r70
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r192, r29, 0x0
	add_i32 r29, 0x4000, r26
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r184, r180, r130
	mma_16x16x16f16 r62, r184, r176, r62
	mma_16x16x16f16 r130, r186, r182, r130
	mma_16x16x16f16 r62, r186, r178, r62
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r184, r29, 0x0
	add_i32 r29, 0x4000, r27
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r188, r180, r122
	mma_16x16x16f16 r54, r188, r176, r54
	mma_16x16x16f16 r122, r190, r182, r122
	mma_16x16x16f16 r54, r190, r178, r54
	.loc	2 156 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:156:45
	lds_b128 r188, r29, 0x0
	.loc	2 162 56                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r192, r180, r114
	mma_16x16x16f16 r46, r192, r176, r46
	mma_16x16x16f16 r114, r194, r182, r114
	mma_16x16x16f16 r46, r194, r178, r46
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r184, r180, r106
	mma_16x16x16f16 r38, r184, r176, r38
	mma_16x16x16f16 r106, r186, r182, r106
	mma_16x16x16f16 r38, r186, r178, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r188, r180, r98
	mma_16x16x16f16 r30, r188, r176, r30
	mma_16x16x16f16 r98, r190, r182, r98
	mma_16x16x16f16 r30, r190, r178, r30
	.loc	2 170 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:170:9
	bra_cmsks LBB2_1
; %bb.5:                                ; %if.then752
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
LBB2_6:                                 ; %for.cond757.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	sshl_b32 s5, 7, s6
	ssub_co_i32 s0, s0, s5
	sadd_co_i32 s0, s0, s1
	sshl_b32 s1, 18, s6
	sshl_b32 s4, 7, s4
	sadd_co_i32 s1, s4, s1
	smov_b32 s4, 0x1e0
	shl_b32 r4, 10, r0
	.loc	2 216 66 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:66
	and_or_b32 r1, r2, s4, r1
	shl_b32 r0, 11, r0
	and_b32 r4, 0xf0000, r4
	.loc	2 216 95 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:95
	cmp_lt_i32 s4, r1, s0
	and_b32 r0, 0x7800, r0
	add_u32 r2, s1, r4
	add_u32 r0, r2, r0
	and_or_b32 r0, r3, 12, r0
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_24
; %bb.7:                                ; %if.end933
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_25
LBB2_8:                                 ; %if.end933.1
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_26
LBB2_9:                                 ; %if.end933.2
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_27
LBB2_10:                                ; %if.end933.3
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_28
LBB2_11:                                ; %if.end933.4
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_29
LBB2_12:                                ; %if.end933.5
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_30
LBB2_13:                                ; %if.end933.6
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_15
LBB2_14:                                ; %if.then873.7
	.loc	2 198 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r97
.Ltmp13:
	.file	4 "/opt/maca/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s4
	fmka_f32 r6, r97, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s4
	exp_f32 r6, r6
.Ltmp14:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r96
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp16:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r97, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r101
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s4
	fmka_f32 r7, r96, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s4
	exp_f32 r7, r7
.Ltmp18:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r95
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp20:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r96, r6
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s4
	fmka_f32 r8, r95, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s4
	exp_f32 r8, r8
.Ltmp22:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r94
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp24:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r95, r7
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s4
	fmka_f32 r5, r94, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s4
	exp_f32 r5, r5
.Ltmp26:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r94, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r98
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r99
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r100
.Ltmp27:
	.file	5 "/opt/maca/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp28:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp29:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp30:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp31:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	mov_b32 r4, 0xe0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
LBB2_15:                                ; %if.end933.7
	.loc	2 0 259                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:259
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 66 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:66
	or_b32 r1, r1, 16
	.loc	2 216 95 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:95
	cmp_lt_i32 s0, r1, s0
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_31
; %bb.16:                               ; %if.end933.8
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_32
LBB2_17:                                ; %if.end933.9
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_33
LBB2_18:                                ; %if.end933.10
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_34
LBB2_19:                                ; %if.end933.11
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_35
LBB2_20:                                ; %if.end933.12
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_36
LBB2_21:                                ; %if.end933.13
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_37
LBB2_22:                                ; %if.end933.14
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_38
LBB2_23:                                ; %if.end933.15
	.loc	2 230 1 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:230:1
	snop 1
	endk
LBB2_24:                                ; %if.then873
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r153
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r153, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp33:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r152
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp35:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r153, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r157
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r152, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp37:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r151
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp39:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r152, r6
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r151, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp41:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r150
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp43:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r151, r7
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r150, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp45:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r150, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r154
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r155
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r156
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp47:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp48:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp49:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp50:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_b32 r4, 1, r0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_8
LBB2_25:                                ; %if.then873.1
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r145
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r145, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp52:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r144
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp54:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r145, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r149
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r144, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp56:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r143
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp58:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r144, r6
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r143, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp60:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r142
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp62:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r143, r7
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r142, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp64:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r142, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r146
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r147
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r148
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp66:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp68:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp69:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_or_b32 r4, 1, r0, 32
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_9
LBB2_26:                                ; %if.then873.2
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r137
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r137, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp71:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r136
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp73:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r137, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r141
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r136, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp75:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r135
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp77:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r136, r6
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r135, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp79:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r134
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp81:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r135, r7
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r134, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp83:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r134, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r138
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r139
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r140
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp85:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp87:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp88:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_or_b32 r4, 1, r0, 64
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_10
LBB2_27:                                ; %if.then873.3
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r129
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r129, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp90:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r128
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp92:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r129, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r133
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r128, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp94:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r127
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp96:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r128, r6
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r127, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp98:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r126
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp100:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r127, r7
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r126, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp102:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r126, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r130
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r131
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r132
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp104:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp106:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp107:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	mov_b32 r4, 0x60
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_11
LBB2_28:                                ; %if.then873.4
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r121
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r121, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp109:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r120
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp111:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r121, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r125
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r120, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp113:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r119
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp115:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r120, r6
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r119, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp117:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r118
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp119:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r119, r7
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r118, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp121:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r118, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r122
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r123
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r124
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp123:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp125:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp126:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	mov_b32 r4, 0x80
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_12
LBB2_29:                                ; %if.then873.5
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r113
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r113, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp128:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r112
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp130:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r113, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r117
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r112, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp132:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r111
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp134:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r112, r6
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r111, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp136:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r110
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp138:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r111, r7
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r110, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp140:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r110, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r114
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r115
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r116
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp142:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp144:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp145:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	mov_b32 r4, 0xa0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_13
LBB2_30:                                ; %if.then873.6
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r2, 0xbfb8aa3b, r105
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r105, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp147:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r104
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp149:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r4, r105, r4
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r4, r4, r109
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r104, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp151:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r103
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp153:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r6, r104, r6
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r103, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp155:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r8, 0xbfb8aa3b, r102
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp157:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r7, r103, r7
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r102, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp159:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r2, r102, r2
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r2, r2, r106
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r3, r7, r107
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r5, r6, r108
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp161:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp163:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp164:
	.loc	2 227 259 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 227 27 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	mov_b32 r4, 0xc0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_14
	bra LBB2_15
LBB2_31:                                ; %if.then873.8
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r93
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r93, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp166:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r92
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp168:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r93, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r89
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r92, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp170:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r91
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp172:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r92, r5
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r91, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp174:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r90
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp176:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r91, r6
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r90, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp178:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r90, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r86
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r87
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r88
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp182:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp183:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10000, r3
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r9, r4, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_17
LBB2_32:                                ; %if.then873.9
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r85
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r85, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp185:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r84
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp187:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r85, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r81
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r84, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp189:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r83
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp191:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r84, r5
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r83, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp193:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r82
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp195:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r83, r6
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r82, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp197:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r82, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r78
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r79
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r80
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp199:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp201:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp202:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10020, r3
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r9, r4, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_18
LBB2_33:                                ; %if.then873.10
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r77
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r77, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp204:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r76
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp206:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r77, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r73
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r76, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp208:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r75
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp210:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r76, r5
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r75, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp212:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r74
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp214:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r75, r6
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r74, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp216:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r74, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r70
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r71
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r72
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp218:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp220:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp221:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10040, r3
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r9, r4, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_19
LBB2_34:                                ; %if.then873.11
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r69
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r69, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp223:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r68
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp225:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r69, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r65
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r68, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp227:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r67
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp229:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r68, r5
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r67, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp231:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r66
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp233:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r67, r6
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r66, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp235:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r66, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r62
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r63
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r64
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp237:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp239:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp240:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10060, r3
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r9, r4, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_20
LBB2_35:                                ; %if.then873.12
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r61
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r61, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp242:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r60
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp244:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r61, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r57
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r60, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp246:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r59
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp248:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r60, r5
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r59, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp250:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r58
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp252:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r59, r6
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r58, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp254:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r58, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r54
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r55
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r56
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp256:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp258:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp259:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x10080, r3
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r9, r4, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_21
LBB2_36:                                ; %if.then873.13
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r53
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r53, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp261:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r52
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp263:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r53, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r49
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r52, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp265:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r51
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp267:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r52, r5
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r51, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp269:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r50
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp271:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r51, r6
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r50, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp273:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r50, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r46
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r47
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r48
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp275:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp277:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp278:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x100a0, r3
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r9, r4, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_22
LBB2_37:                                ; %if.then873.14
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r45
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r45, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp280:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r44
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp282:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r45, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r41
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r44, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp284:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r43
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp286:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r44, r5
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r43, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp288:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r42
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp290:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r43, r6
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r42, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp292:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r42, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r38
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r39
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r40
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp294:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp296:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp297:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x100c0, r3
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r9, r4, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 216 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:216:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_23
LBB2_38:                                ; %if.then873.15
	.loc	2 198 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:198:27
	mul_f32 r1, 0xbfb8aa3b, r37
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r37, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp299:
	.loc	2 206 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:206:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:197:27
	mul_f32 r5, 0xbfb8aa3b, r36
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp301:
	.loc	2 210 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:210:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 214 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:214:20
	mul_f32 r3, r37, r3
	.loc	2 224 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:224:24
	mul_f32 r3, r3, r33
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r36, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp303:
	.loc	2 205 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:205:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:196:27
	mul_f32 r6, 0xbfb8aa3b, r35
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp305:
	.loc	2 209 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:209:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 213 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:213:20
	mul_f32 r5, r36, r5
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r35, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp307:
	.loc	2 204 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:204:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
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
	.loc	2 195 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:195:27
	mul_f32 r7, 0xbfb8aa3b, r34
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp309:
	.loc	2 208 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:208:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 212 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:212:20
	mul_f32 r6, r35, r6
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r34, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp311:
	.loc	2 203 26                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:203:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 207 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:207:24
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
	.loc	2 211 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:211:20
	mul_f32 r1, r34, r1
	.loc	2 221 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:221:24
	mul_f32 r1, r1, r30
	.loc	2 222 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:222:24
	mul_f32 r2, r6, r31
	.loc	2 223 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:223:24
	mul_f32 r4, r5, r32
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp313:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp314:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp315:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp316:
	.loc	2 227 27 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s2, r0
	mov_b32 r3, s3
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x100e0, r0
	.loc	2 227 259 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	shl_b32 r0, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 227 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:27
	addc_co_u32 r7, r3, 0
	.loc	2 227 259                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:227:259
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 230 1 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:230:1
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
; codeLenInByte = 23752
; NumMTRegsForWarps/PEU: 230
; NumSTRegsForWarps/PEU: 26
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 232 0                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:232:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp318:
	.loc	2 243 19 prologue_end           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:243:19
	smov_b32 s17, 0
	sshl_b64 s2, 2, s16
	ldu_b256 s8, s0, 0x20
	and_b32 r0, 0x3ff, r0
	shl_b32 r2, 10, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	ldu_b32 s20, s2, 0x0
	mov_b32 r1, s5
	and_b32 r2, 0xf0000, r2
	shl_add_u32 r2, 18, r1, r2
	shl_b32 r3, 11, r0
	shr_b32 r1, 1, r0
	and_b32 r4, r1, 24
	arrive slcnt(0)
	sashr_i32 s21, 31, s20
	.loc	2 244 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:244:20
	sshl_b64 s2, 2, s20
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 245 19                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:245:19
	sadd_co_u32 s6, s44, s2
	saddc_co_u32 s7, s45, s3
	.loc	2 246 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:246:22
	sadd_co_u32 s18, s46, s2
	smov_b32 s2, 0x7800
	.loc	2 259 165                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:165
	and_or_b32 r27, r3, s2, r2
	or_b32 r28, 0x8000, r27
	.loc	2 259 224 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:224
	or_b32 r148, r27, r4
	or_b32 r150, r28, r4
	shl_b32 r4, 8, r0
	and_b32 r29, 0x3f800, r4
	shl_b32 r4, 3, r0
	.loc	2 246 22 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:246:22
	saddc_co_u32 s19, s47, s3
	sshl_b32 s9, 19, s4
	and_b32 r5, r4, 56
	smul_i32 s8, 0xe00000, s20
	or3_b32 r5, r29, s9, r5
	add_u32 r5, r5, s8
	.loc	2 263 356                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:356
	mad_i32 r6, r5, 2, s40
	add_co_u32 r8, 0x20000, r6
	addc_co_u32 r9, r7, 0
	.loc	2 263 339 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:339
	ldg_b128 r16, r6, 0x0
	.loc	2 259 67 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:67
	shl_b32 r2, 1, r148
	.loc	2 263 339                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:339
	ldg_b128 r20, r8, 0x0
	.loc	2 263 356 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:356
	add_co_u32 r8, 0x40000, r6
	addc_co_u32 r9, r7, 0
	add_co_u32 r6, 0x60000, r6
	.loc	2 259 67 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:67
	shl_b32 r3, 1, r150
	.loc	2 259 45 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:45
	ldg_b128 r152, s14, r2, 0x0
	.loc	2 263 356 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:356
	addc_co_u32 r7, r7, 0
	.loc	2 259 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:45
	ldg_b128 r160, s14, r3, 0x0
	.loc	2 259 67 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:67
	or_b32 r3, r2, 64
	or_b32 r2, 0x10040, r2
	.loc	2 263 339 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:339
	ldg_b128 r30, r8, 0x0
	.loc	2 259 45                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:259:45
	ldg_b128 r172, s14, r3, 0x0
	ldg_b128 r176, s14, r2, 0x0
	.loc	2 263 339                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:339
	ldg_b128 r34, r6, 0x0
	and_b32 r5, r4, 16
	.loc	2 244 20                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:244:20
	ldu_b32 s2, s0, 0x0
	and_b32 r15, r4, 32
	.loc	2 245 19                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:245:19
	ldu_b32 s1, s6, 0x0
	.loc	2 246 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:246:22
	ldu_b32 s0, s18, 0x0
	mul_u24 r2, r0, 9
	add_u32 r6, r15, r0
	add_u32 r5, r5, r0
	and_b32 r3, 0x1fc0, r4
	and_b32 r2, r2, 8
	and_b32 r6, r6, 32
	and_b32 r5, r5, 16
	.loc	2 263 47                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:47
	add_u32 r7, 0x800, r3
	add_u32 r8, 0x1000, r3
	add_u32 r9, 0x1800, r3
	.loc	2 263 83 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:83
	or_b32 r10, r6, r2
	.loc	2 263 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:27
	or_b32 r2, r5, r2
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 263 253                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:253
	or3_b32 r11, r10, r3, r5
	.loc	2 263 27                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:27
	or3_b32 r12, r10, r7, r5
	or3_b32 r5, r10, r8, r5
	mov_b32 r10, s3
	or3_b32 r2, r2, r9, r6
	shl_add_u32 r11, 1, r11, r10
	shl_add_u32 r12, 1, r12, r10
	shl_add_u32 r5, 1, r5, r10
	shl_add_u32 r2, 1, r2, r10
	.loc	2 263 339                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:263:339
	arrive gvmcnt(7)
	sts_b128 r11, 0x0, r16
	arrive gvmcnt(6)
	sts_b128 r12, 0x0, r20
	arrive gvmcnt(3)
	sts_b128 r5, 0x0, r30
	arrive gvmcnt(0)
	sts_b128 r2, 0x0, r34
.Ltmp319:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	xor_b32 r2, r4, r0
	and_b32 r5, r2, 32
	add_u32 r5, r5, r0
	and_b32 r6, r5, 32
	and_b32 r5, r2, 16
	sadd_co_u32 s18, 0x80000, s40
	add_u32 r5, r5, r0
	saddc_co_u32 s19, s41, 0
	and_b32 r10, r5, 16
	and_b32 r5, r0, 8
.Ltmp320:
	.loc	2 266 3                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:266:3
	and_b32 r32, r0, 48
	sadd_co_u32 s3, 0x80, s14
	shl_or_b32 r27, 1, r27, r32
	xadd_u32 r4, r5, r4, r0
	and_b32 r11, r4, 8
	saddc_co_u32 s5, s15, 0
	shr_b32 r4, 5, r0
	add_co_u32 r27, r27, s14
	mov_b32 r33, s15
	sadd_co_u32 s20, 0x80080, s40
	addc_co_u32 r34, 0, r33
	add_shl_u32 r4, r4, r1, 4
	add_co_u32 r180, 0x88, r27
	saddc_co_u32 s21, s41, 0
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r0
	sadd_co_u32 s6, 0x100, s14
	add_shl_u32 r13, r4, r0, 3
	and_b32 r30, r2, 56
	shl_b32 r2, 6, r0
	addc_co_u32 r181, r34, 0
	shl_or_b32 r27, 1, r28, r32
	and_b32 r14, 0x3c0, r2
	saddc_co_u32 s7, s15, 0
	add_co_u32 r27, r27, s14
	or_b32 r5, r6, r11
	and_or_b32 r22, r13, 8, r12
	or3_b32 r4, r5, r7, r10
	or3_b32 r3, r5, r3, r10
	sadd_co_u32 s22, 0x100, s40
	addc_co_u32 r28, 0, r33
	or_b32 r7, r10, r11
	or_b32 r16, r22, r14
	or_b32 r17, 0x400, r14
	or_b32 r18, r22, r15
	or_b32 r19, 0x800, r14
	or_b32 r20, 0xc00, r14
	or_b32 r21, 0x1000, r14
	or_b32 r23, 0x1400, r14
	or_b32 r24, 0x1800, r14
	or_b32 r25, 0x1c00, r14
	xor_b32 r26, r15, 32
	.loc	2 0 0 is_stmt 0                 ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:0
	shl_b64 r128, 0, 0
	or3_b32 r5, r5, r8, r10
	or3_b32 r6, r7, r9, r6
	or_b32 r7, r16, r15
	or_b32 r15, r16, r26
	or_b32 r8, r18, r17
	or_b32 r9, r18, r19
	or_b32 r10, r18, r20
	or_b32 r11, r18, r21
	or_b32 r12, r18, r23
	or_b32 r13, r18, r24
	or_b32 r14, r18, r25
	or3_b32 r18, r22, r20, r26
	or3_b32 r16, r22, r17, r26
	or3_b32 r17, r22, r19, r26
	or3_b32 r19, r22, r21, r26
	or3_b32 r20, r22, r23, r26
	or3_b32 r21, r22, r24, r26
	or3_b32 r22, r22, r25, r26
	.loc	2 266 3                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:266:3
	add_co_u32 r184, 0x88, r27
	saddc_co_u32 s23, s41, 0
	sadd_co_i32 s8, s8, s9
	shl_add_u32 r3, 1, r3, 0
	.loc	2 0 0                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:0
	shl_b64 r130, 0, 0
	shl_b64 r132, 0, r128
	shl_b64 r136, 0, r128
	shl_b64 r140, 0, r128
	shl_b64 r144, 0, r128
	shl_b64 r156, 0, r128
	shl_b64 r164, 0, r128
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
	shr_b32 r2, 2, r0
	mov_b32 r31, 0
	shl_add_u32 r4, 1, r4, 0
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
	shl_add_u32 r21, 1, r21, 0
	shl_add_u32 r22, 1, r22, 0
	add_u32 r23, 0x4000, r3
	add_u32 r24, 0x5000, r3
	add_u32 r25, 0x6000, r3
	add_u32 r26, 0x7000, r3
	.loc	2 266 3                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:266:3
	or3_b32 r182, s8, r29, r30
	mov_b32 r149, 0
	addc_co_u32 r185, r28, 0
	smov_b64 s14, 0
	shl_b64 r134, 0, r130
	shl_b64 r138, 0, r130
	shl_b64 r142, 0, r130
	shl_b64 r146, 0, r130
	shl_b64 r158, 0, r130
	shl_b64 r166, 0, r130
	shl_b64 r170, 0, r130
	shl_b64 r34, 0, r130
	shl_b64 r38, 0, r130
	shl_b64 r42, 0, r130
	shl_b64 r46, 0, r130
	shl_b64 r50, 0, r130
	shl_b64 r54, 0, r130
	shl_b64 r58, 0, r130
	shl_b64 r62, 0, r130
	shl_b64 r66, 0, r130
	shl_b64 r70, 0, r130
	shl_b64 r74, 0, r130
	shl_b64 r78, 0, r130
	shl_b64 r82, 0, r130
	shl_b64 r86, 0, r130
	shl_b64 r90, 0, r130
	shl_b64 r94, 0, r130
	shl_b64 r126, 0, r130
	shl_b64 r122, 0, r130
	shl_b64 r118, 0, r130
	shl_b64 r114, 0, r130
	shl_b64 r110, 0, r130
	shl_b64 r106, 0, r130
	shl_b64 r102, 0, r130
	shl_b64 r98, 0, r130
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc950
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 266 31                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:266:31
	sadd_co_u32 s14, 0x80, s14
	add_co_u32 r180, 0x100, r180
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r181, r181, 0
	add_co_u32 r184, 0x100, r184
	scmp_eq_u64 0x800, s14
	addc_co_u32 r185, r185, 0
	.loc	2 266 3                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:266:3
	bra_smsks LBB3_8
LBB3_2:                                 ; %for.cond128.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 268 487 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:268:487
	add_u32 r27, r182, s14
	mad_i32 r28, r27, 2, s18
.Ltmp321:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s9, r3
	smov_b32 s8, md
.Ltmp322:
	.loc	2 268 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:268:487
	add_u32 r30, 0x30000, r27
	.loc	2 272 71                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:71
	mov_b32 r183, s15
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	add_i32 r189, 0x4000, r8
.Ltmp323:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s9
	rfl_b32 s9, r4
	ldg_b128 r0, r28, 0x0 bsm
.Ltmp324:
	.loc	2 268 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:268:487
	add_u32 r28, 0x10000, r27
	mad_i32 r186, r28, 2, s18
	add_u32 r29, 0x20000, r27
.Ltmp325:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s9
	rfl_b32 s9, r5
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp326:
	.loc	2 268 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:268:487
	mad_i32 r186, r29, 2, s18
.Ltmp327:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s9
	rfl_b32 s9, r6
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp328:
	.loc	2 268 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:268:487
	mad_i32 r186, r30, 2, s18
	.loc	2 272 71                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:71
	add_co_u32 r151, r148, s14
	addc_co_u32 r205, r31, r183
	add_co_u32 r188, r150, s14
	addc_co_u32 r203, r149, r183
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	add_i32 r183, 0x4000, r7
.Ltmp329:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s9
.Ltmp330:
	.loc	2 272 248                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:248
	or_b32 r204, r151, 32
.Ltmp331:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp332:
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r192, r183, 0x0
	lds_b128 r196, r189, 0x0
	.loc	2 272 71                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:71
	shl_b64 r186, 1, r204
	add_co_u32 r186, s3, r186
	mov_b32 r151, s5
	.loc	2 272 248 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:248
	or_b32 r202, r188, 32
	.loc	2 282 58 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r168, r192, r152, r168
	.loc	2 272 71                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:71
	addc_co_u32 r187, r151, r187
	shl_b64 r190, 1, r202
	add_co_u32 r188, s3, r190
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	mma_16x16x16f16 r124, r192, r160, r124
	.loc	2 272 71                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:71
	addc_co_u32 r189, r151, r191
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	add_i32 r151, 0x4000, r9
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	mma_16x16x16f16 r168, r194, r154, r168
	mma_16x16x16f16 r124, r194, r162, r124
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r206, r151, 0x0
	add_i32 r151, 0x4000, r10
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r164, r196, r152, r164
	mma_16x16x16f16 r120, r196, r160, r120
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r190, r151, 0x0
	add_i32 r151, 0x4000, r11
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	mma_16x16x16f16 r164, r198, r154, r164
	mma_16x16x16f16 r120, r198, r162, r120
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r194, r151, 0x0
	add_i32 r151, 0x4000, r12
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r152, r156
	mma_16x16x16f16 r116, r206, r160, r116
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r198, r151, 0x0
	add_i32 r151, 0x4000, r13
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	mma_16x16x16f16 r156, r208, r154, r156
	mma_16x16x16f16 r116, r208, r162, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r152, r144
	mma_16x16x16f16 r112, r190, r160, r112
	mma_16x16x16f16 r144, r192, r154, r144
	mma_16x16x16f16 r112, r192, r162, r112
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r190, r151, 0x0
	add_i32 r151, 0x4000, r14
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r152, r140
	mma_16x16x16f16 r108, r194, r160, r108
	mma_16x16x16f16 r140, r196, r154, r140
	mma_16x16x16f16 r108, r196, r162, r108
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r194, r151, 0x0
	add_i32 r151, 0x4000, r15
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r152, r136
	mma_16x16x16f16 r104, r198, r160, r104
	mma_16x16x16f16 r136, r200, r154, r136
	mma_16x16x16f16 r104, r200, r162, r104
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r198, r151, 0x0
	add_i32 r151, 0x4000, r16
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r152, r132
	mma_16x16x16f16 r100, r190, r160, r100
	mma_16x16x16f16 r132, r192, r154, r132
	mma_16x16x16f16 r100, r192, r162, r100
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r190, r151, 0x0
	add_i32 r151, 0x4000, r17
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r152, r128
	mma_16x16x16f16 r96, r194, r160, r96
	mma_16x16x16f16 r128, r196, r154, r128
	mma_16x16x16f16 r96, r196, r162, r96
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r194, r151, 0x0
	add_i32 r151, 0x4000, r18
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r198, r172, r168
	mma_16x16x16f16 r124, r198, r176, r124
	mma_16x16x16f16 r168, r200, r174, r168
	mma_16x16x16f16 r124, r200, r178, r124
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r198, r151, 0x0
	add_i32 r151, 0x4000, r19
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r190, r172, r164
	mma_16x16x16f16 r120, r190, r176, r120
	mma_16x16x16f16 r164, r192, r174, r164
	mma_16x16x16f16 r120, r192, r178, r120
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r190, r151, 0x0
	add_i32 r151, 0x4000, r20
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r172, r156
	mma_16x16x16f16 r116, r194, r176, r116
	mma_16x16x16f16 r156, r196, r174, r156
	mma_16x16x16f16 r116, r196, r178, r116
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r194, r151, 0x0
	add_i32 r151, 0x4000, r21
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r172, r144
	mma_16x16x16f16 r112, r198, r176, r112
	mma_16x16x16f16 r144, r200, r174, r144
	mma_16x16x16f16 r112, r200, r178, r112
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r198, r151, 0x0
	add_i32 r151, 0x4000, r22
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r172, r140
	mma_16x16x16f16 r108, r190, r176, r108
	mma_16x16x16f16 r140, r192, r174, r140
	mma_16x16x16f16 r108, r192, r178, r108
	.loc	2 276 41                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:276:41
	lds_b128 r190, r151, 0x0
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r172, r136
	mma_16x16x16f16 r104, r194, r176, r104
	mma_16x16x16f16 r136, r196, r174, r136
	mma_16x16x16f16 r104, r196, r178, r104
	.loc	2 272 49                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:49
	ldg_b128 r194, r180, -0x8
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r198, r172, r132
	mma_16x16x16f16 r100, r198, r176, r100
	mma_16x16x16f16 r132, r200, r174, r132
	mma_16x16x16f16 r100, r200, r178, r100
	.loc	2 272 49                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:49
	ldg_b128 r198, r184, -0x8
	.loc	2 282 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:282:58
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r190, r172, r128
	mma_16x16x16f16 r96, r190, r176, r96
	mma_16x16x16f16 r128, r192, r174, r128
	mma_16x16x16f16 r96, r192, r178, r96
	.loc	2 272 49                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:272:49
	ldg_b128 r190, r186, 0x0
	ldg_b128 r186, r188, 0x0
.Ltmp333:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp334:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp335:
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r222, r7, 0x0
	lds_b128 r226, r8, 0x0
	lds_b128 r230, r9, 0x0
	.loc	2 295 488                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:295:488
	add_u32 r151, 0x10040, r27
	mad_i32 r210, r151, 2, s40
	add_u32 r151, 0x20040, r27
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r222, r152, r92
	.loc	2 295 488                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:295:488
	mad_i32 r214, r151, 2, s40
	add_u32 r151, 0x30040, r27
	mad_i32 r206, r27, 2, s40
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	mma_16x16x16f16 r60, r222, r160, r60
	.loc	2 295 488                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:295:488
	mad_i32 r218, r151, 2, s40
.Ltmp336:
	.loc	2 10 41                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:10:41
	ldg_b128 r206, r206, 0x80
	ldg_b128 r210, r210, 0x0
.Ltmp337:
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	mma_16x16x16f16 r92, r224, r154, r92
.Ltmp338:
	.loc	2 10 41                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:10:41
	ldg_b128 r214, r214, 0x0
	ldg_b128 r218, r218, 0x0
.Ltmp339:
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	mma_16x16x16f16 r60, r224, r162, r60
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r222, r10, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r226, r152, r88
	mma_16x16x16f16 r56, r226, r160, r56
	mma_16x16x16f16 r88, r228, r154, r88
	mma_16x16x16f16 r56, r228, r162, r56
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r226, r11, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r230, r152, r84
	mma_16x16x16f16 r52, r230, r160, r52
	mma_16x16x16f16 r84, r232, r154, r84
	mma_16x16x16f16 r52, r232, r162, r52
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r230, r12, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r222, r152, r80
	mma_16x16x16f16 r48, r222, r160, r48
	mma_16x16x16f16 r80, r224, r154, r80
	mma_16x16x16f16 r48, r224, r162, r48
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r222, r13, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r226, r152, r76
	mma_16x16x16f16 r44, r226, r160, r44
	mma_16x16x16f16 r76, r228, r154, r76
	mma_16x16x16f16 r44, r228, r162, r44
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r226, r14, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r230, r152, r72
	mma_16x16x16f16 r40, r230, r160, r40
	mma_16x16x16f16 r72, r232, r154, r72
	mma_16x16x16f16 r40, r232, r162, r40
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r230, r15, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r222, r152, r68
	mma_16x16x16f16 r36, r222, r160, r36
	mma_16x16x16f16 r68, r224, r154, r68
	mma_16x16x16f16 r36, r224, r162, r36
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r222, r16, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r226, r152, r64
	mma_16x16x16f16 r32, r226, r160, r32
	mma_16x16x16f16 r64, r228, r154, r64
	mma_16x16x16f16 r32, r228, r162, r32
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r226, r17, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r230, r172, r92
	mma_16x16x16f16 r60, r230, r176, r60
	mma_16x16x16f16 r92, r232, r174, r92
	mma_16x16x16f16 r60, r232, r178, r60
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r230, r18, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r222, r172, r88
	mma_16x16x16f16 r56, r222, r176, r56
	mma_16x16x16f16 r88, r224, r174, r88
	mma_16x16x16f16 r56, r224, r178, r56
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r222, r19, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r226, r172, r84
	mma_16x16x16f16 r52, r226, r176, r52
	mma_16x16x16f16 r84, r228, r174, r84
	mma_16x16x16f16 r52, r228, r178, r52
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r226, r20, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r230, r172, r80
	mma_16x16x16f16 r48, r230, r176, r48
	mma_16x16x16f16 r80, r232, r174, r80
	mma_16x16x16f16 r48, r232, r178, r48
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r230, r21, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r222, r172, r76
	mma_16x16x16f16 r44, r222, r176, r44
	mma_16x16x16f16 r76, r224, r174, r76
	mma_16x16x16f16 r44, r224, r178, r44
	.loc	2 299 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:299:43
	lds_b128 r222, r22, 0x0
	.loc	2 305 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:305:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r226, r172, r72
	mma_16x16x16f16 r40, r226, r176, r40
	mma_16x16x16f16 r72, r228, r174, r72
	mma_16x16x16f16 r40, r228, r178, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r230, r172, r68
	mma_16x16x16f16 r36, r230, r176, r36
	mma_16x16x16f16 r68, r232, r174, r68
	mma_16x16x16f16 r36, r232, r178, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r222, r172, r64
	mma_16x16x16f16 r32, r222, r176, r32
	mma_16x16x16f16 r64, r224, r174, r64
	mma_16x16x16f16 r32, r224, r178, r32
.Ltmp340:
	.loc	2 10 41                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:10:41
	arrive gvmcnt(3)
	sts_b128 r23, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r24, 0x0, r210
	arrive gvmcnt(1)
	sts_b128 r25, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r26, 0x0, r218
.Ltmp341:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp342:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s9, r3
.Ltmp343:
	.loc	2 315 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:315:487
	mad_i32 r206, r27, 2, s20
	.loc	2 317 16                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:317:16
	mov_b32 r208, 0x780
	mov_b32 r209, 0
	cmp_lg_u64 s24, s14, r208
.Ltmp344:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s9
	rfl_b32 s9, r4
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp345:
	.loc	2 315 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:315:487
	mad_i32 r206, r28, 2, s20
.Ltmp346:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s9
	rfl_b32 s9, r5
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp347:
	.loc	2 315 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:315:487
	mad_i32 r206, r29, 2, s20
.Ltmp348:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s9
	rfl_b32 s9, r6
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp349:
	.loc	2 315 487                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:315:487
	mad_i32 r206, r30, 2, s20
.Ltmp350:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp351:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s8
.Ltmp352:
	.loc	2 317 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:317:9
	sand_b64 cmsk, xmsk, s24
	snop 0
	bra_cmskz LBB3_4
; %bb.3:                                ; %for.cond614.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 320 71                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:320:71
	shl_b64 r172, 1, r204
	add_co_u32 r172, s6, r172
	mov_b32 r151, s7
	addc_co_u32 r173, r151, r173
	shl_b64 r174, 1, r202
	add_co_u32 r176, s6, r174
	addc_co_u32 r177, r151, r175
	.loc	2 320 49 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:320:49
	ldg_b128 r152, r180, 0x78
	ldg_b128 r160, r184, 0x78
	ldg_b128 r172, r172, 0x0
	ldg_b128 r176, r176, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 325 43 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	add_i32 r151, 0x4000, r7
	add_i32 r183, 0x4000, r8
	snop 0
	lds_b128 r202, r151, 0x0
	add_i32 r151, 0x4000, r9
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r10
	lds_b128 r210, r151, 0x0
	add_i32 r151, 0x4000, r11
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r202, r194, r168
	mma_16x16x16f16 r124, r202, r198, r124
	mma_16x16x16f16 r168, r204, r196, r168
	mma_16x16x16f16 r124, r204, r200, r124
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r202, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r206, r194, r164
	mma_16x16x16f16 r120, r206, r198, r120
	mma_16x16x16f16 r164, r208, r196, r164
	mma_16x16x16f16 r120, r208, r200, r120
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r206, r151, 0x0
	add_i32 r151, 0x4000, r13
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r210, r194, r156
	mma_16x16x16f16 r116, r210, r198, r116
	mma_16x16x16f16 r156, r212, r196, r156
	mma_16x16x16f16 r116, r212, r200, r116
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r210, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r202, r194, r144
	mma_16x16x16f16 r112, r202, r198, r112
	mma_16x16x16f16 r144, r204, r196, r144
	mma_16x16x16f16 r112, r204, r200, r112
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r202, r151, 0x0
	add_i32 r151, 0x4000, r15
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r206, r194, r140
	mma_16x16x16f16 r108, r206, r198, r108
	mma_16x16x16f16 r140, r208, r196, r140
	mma_16x16x16f16 r108, r208, r200, r108
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r210, r194, r136
	mma_16x16x16f16 r104, r210, r198, r104
	mma_16x16x16f16 r136, r212, r196, r136
	mma_16x16x16f16 r104, r212, r200, r104
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r210, r151, 0x0
	add_i32 r151, 0x4000, r16
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r202, r194, r132
	mma_16x16x16f16 r100, r202, r198, r100
	mma_16x16x16f16 r132, r204, r196, r132
	mma_16x16x16f16 r100, r204, r200, r100
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r202, r151, 0x0
	add_i32 r151, 0x4000, r17
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r206, r194, r128
	mma_16x16x16f16 r96, r206, r198, r96
	mma_16x16x16f16 r128, r208, r196, r128
	mma_16x16x16f16 r96, r208, r200, r96
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r206, r151, 0x0
	add_i32 r151, 0x4000, r19
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r210, r190, r168
	mma_16x16x16f16 r124, r210, r186, r124
	mma_16x16x16f16 r168, r212, r192, r168
	mma_16x16x16f16 r124, r212, r188, r124
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r210, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r202, r190, r164
	mma_16x16x16f16 r120, r202, r186, r120
	mma_16x16x16f16 r164, r204, r192, r164
	mma_16x16x16f16 r120, r204, r188, r120
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r202, r151, 0x0
	add_i32 r151, 0x4000, r21
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r190, r156
	mma_16x16x16f16 r116, r206, r186, r116
	mma_16x16x16f16 r156, r208, r192, r156
	mma_16x16x16f16 r116, r208, r188, r116
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r210, r190, r144
	mma_16x16x16f16 r112, r210, r186, r112
	mma_16x16x16f16 r144, r212, r192, r144
	mma_16x16x16f16 r112, r212, r188, r112
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r210, r151, 0x0
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r190, r140
	mma_16x16x16f16 r108, r202, r186, r108
	mma_16x16x16f16 r140, r204, r192, r140
	mma_16x16x16f16 r108, r204, r188, r108
	.loc	2 325 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:325:43
	lds_b128 r202, r183, 0x0
	.loc	2 331 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:331:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r206, r190, r136
	mma_16x16x16f16 r104, r206, r186, r104
	mma_16x16x16f16 r136, r208, r192, r136
	mma_16x16x16f16 r104, r208, r188, r104
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r210, r190, r132
	mma_16x16x16f16 r100, r210, r186, r100
	mma_16x16x16f16 r132, r212, r192, r132
	mma_16x16x16f16 r100, r212, r188, r100
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r202, r190, r128
	mma_16x16x16f16 r96, r202, r186, r96
	mma_16x16x16f16 r128, r204, r192, r128
	mma_16x16x16f16 r96, r204, r188, r96
.Ltmp353:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp354:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp355:
	.loc	2 343 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:343:9
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB3_6
; %bb.5:                                ; %for.cond758.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp356:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s9, r23
	mad_i32 r206, r27, 2, s22
	smov_b32 s8, md
	mad_i32 r204, r29, 2, s22
	mad_i32 r28, r28, 2, s22
	smov_b32 md, s9
	mad_i32 r202, r30, 2, s22
	ldg_b128 r0, r206, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r204, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r202, 0x0 bsm
	smov_b32 md, s8
.Ltmp357:
LBB3_6:                                 ; %if.end842
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r202, r7, 0x0
	lds_b128 r206, r8, 0x0
	lds_b128 r210, r9, 0x0
	.loc	2 364 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:364:9
	sandn_b64 cmsk, xmsk, s24
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r202, r194, r92
	mma_16x16x16f16 r60, r202, r198, r60
	mma_16x16x16f16 r92, r204, r196, r92
	mma_16x16x16f16 r60, r204, r200, r60
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r202, r10, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r206, r194, r88
	mma_16x16x16f16 r56, r206, r198, r56
	mma_16x16x16f16 r88, r208, r196, r88
	mma_16x16x16f16 r56, r208, r200, r56
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r206, r11, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r210, r194, r84
	mma_16x16x16f16 r52, r210, r198, r52
	mma_16x16x16f16 r84, r212, r196, r84
	mma_16x16x16f16 r52, r212, r200, r52
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r210, r12, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r202, r194, r80
	mma_16x16x16f16 r48, r202, r198, r48
	mma_16x16x16f16 r80, r204, r196, r80
	mma_16x16x16f16 r48, r204, r200, r48
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r202, r13, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r206, r194, r76
	mma_16x16x16f16 r44, r206, r198, r44
	mma_16x16x16f16 r76, r208, r196, r76
	mma_16x16x16f16 r44, r208, r200, r44
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r206, r14, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r210, r194, r72
	mma_16x16x16f16 r40, r210, r198, r40
	mma_16x16x16f16 r72, r212, r196, r72
	mma_16x16x16f16 r40, r212, r200, r40
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r210, r15, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r202, r194, r68
	mma_16x16x16f16 r36, r202, r198, r36
	mma_16x16x16f16 r68, r204, r196, r68
	mma_16x16x16f16 r36, r204, r200, r36
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r202, r16, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r206, r194, r64
	mma_16x16x16f16 r32, r206, r198, r32
	mma_16x16x16f16 r64, r208, r196, r64
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r194, r17, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	mma_16x16x16f16 r32, r208, r200, r32
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r198, r18, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r210, r190, r92
	mma_16x16x16f16 r60, r210, r186, r60
	mma_16x16x16f16 r92, r212, r192, r92
	mma_16x16x16f16 r60, r212, r188, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r190, r88
	mma_16x16x16f16 r56, r202, r186, r56
	mma_16x16x16f16 r88, r204, r192, r88
	mma_16x16x16f16 r56, r204, r188, r56
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r202, r19, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r52, r194, r186, r52
	mma_16x16x16f16 r84, r196, r192, r84
	mma_16x16x16f16 r52, r196, r188, r52
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r194, r20, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r48, r198, r186, r48
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r188, r48
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r198, r21, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r190, r76
	mma_16x16x16f16 r44, r202, r186, r44
	mma_16x16x16f16 r76, r204, r192, r76
	mma_16x16x16f16 r44, r204, r188, r44
	.loc	2 350 43                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:350:43
	lds_b128 r202, r22, 0x0
	.loc	2 356 58                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:356:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r194, r190, r72
	mma_16x16x16f16 r40, r194, r186, r40
	mma_16x16x16f16 r72, r196, r192, r72
	mma_16x16x16f16 r40, r196, r188, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r198, r190, r68
	mma_16x16x16f16 r36, r198, r186, r36
	mma_16x16x16f16 r68, r200, r192, r68
	mma_16x16x16f16 r36, r200, r188, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r202, r190, r64
	mma_16x16x16f16 r32, r202, r186, r32
	mma_16x16x16f16 r64, r204, r192, r64
	mma_16x16x16f16 r32, r204, r188, r32
	.loc	2 364 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:364:9
	bra_cmsks LBB3_1
; %bb.7:                                ; %for.body942.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp358:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
	barrier
	barrier
	barrier
.Ltmp359:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp360:
LBB3_8:                                 ; %for.cond953.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	sshl_b32 s3, 7, s16
	sshl_b64 s6, 7, s16
	and_b32 r4, r0, 15
	and_b32 r6, 0x1e0, r1
	or_b32 r3, r4, s3
	or_b32 r9, s6, r4
	ssub_co_i32 s2, s2, s3
	add_u32 r3, r3, r6
	or_b32 r1, r6, r4
	mov_b32 r10, s7
	add_co_u32 r6, r9, r6
	addc_co_u32 r9, r10, 0
	sadd_co_i32 s2, s2, s0
	sashr_i32 s3, 31, s1
	add_co_u32 r6, r6, s1
	mov_b32 r10, s3
	.loc	2 373 92 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:373:92
	cmp_ge_i32 s8, r1, s2
	cmp_lt_i32 s14, r1, s2
	sashr_i32 s5, 31, s0
	mov_b32 r7, s0
	addc_co_u32 r9, r9, r10
	mov_b32 r8, s5
	sub_co_u32 r6, r6, r7
	add_u32 r5, r3, s1
	mov_b32 r3, 0
	subb_co_u32 r7, r9, r8
	.loc	2 373 9 is_stmt 0               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:373:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_12
; %bb.9:                                ; %if.then971
	.loc	2 0 9                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sub_u32 r3, r5, s0
	cmp_gt_i32 s20, 0x2380, r3
	.loc	2 375 15 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:375:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r3, 0
	.loc	2 375 163 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:375:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_11
; %bb.10:                               ; %if.then1000
	.loc	2 0 163                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r3, s13
	addc_co_u32 r9, r3, r9
	.loc	2 376 19 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:376:19
	snop 1
	ldg_b32 r3, r8, 0x0
LBB3_11:                                ; %Flow524
	.loc	2 0 19 is_stmt 0                ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_12:                                ; %for.inc1024
	sor_b64 xmsk, xmsk, s6
	.loc	2 373 63 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:373:63
	or_b32 r1, r1, 16
	.loc	2 373 92 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:373:92
	cmp_ge_i32 s6, r1, s2
	cmp_lt_i32 s2, r1, s2
	.loc	2 0 0                           ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:0
	mov_b32 r1, 0
	.loc	2 373 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:373:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then971.1
	.loc	2 375 117 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:375:117
	add_u32 r1, r5, 16
	.loc	2 375 15 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:375:15
	cmp_ge_i32 s20, r1, s0
	sub_u32 r1, r1, s0
	cmp_gt_i32 s0, 0x2380, r1
	mov_b32 r1, 0
	.loc	2 375 163                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:375:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1000.1
	.loc	2 0 163                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r1, s13
	addc_co_u32 r7, r1, r7
	.loc	2 376 19 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:376:19
	snop 1
	ldg_b32 r1, r6, 0x40
LBB3_15:                                ; %Flow523
	.loc	2 0 19 is_stmt 0                ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_16:                                ; %for.inc1024.1
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
	and_or_b32 r10, r2, 12, r0
	shl_b64 r6, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then1045
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(0)
	mul_f32 r0, r168, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r169, r3
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r4, r170, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r5, r171, r3
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp362:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp365:
LBB3_18:                                ; %if.end1100
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 22 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mov_b32 r11, 0
	shl_b64 r4, 1, r10
	add_co_u32 r4, s10, r4
	mov_b32 r0, s11
	addc_co_u32 r5, r0, r5
	.loc	2 401 256 is_stmt 0             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r4, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then1045.1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	arrive gvmcnt(1)
	mul_f32 r7, r166, r3
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	mul_f32 r0, r164, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r165, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r8, r167, r3
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp367:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp368:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp370:
LBB3_20:                                ; %if.end1100.1
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, r10, 16
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r20, r0, 2, s10
	shl_b64 r8, 0, 0
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 0
	stg_b64 r20, 0x0, r6 devc
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1045.2
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(2)
	mul_f32 r0, r156, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r157, r3
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r6, r158, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r7, r159, r3
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp372:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp375:
LBB3_22:                                ; %if.end1100.2
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, r10, 32
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r6, r0, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1045.3
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	arrive gvmcnt(3)
	mul_f32 r9, r146, r3
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	mul_f32 r0, r144, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r145, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r11, r147, r3
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp377:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp378:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp380:
LBB3_24:                                ; %if.end1100.3
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, r10, 48
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r24, r0, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1045.4
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	arrive gvmcnt(4)
	mul_f32 r9, r142, r3
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	mul_f32 r0, r140, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r141, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r11, r143, r3
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp382:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp383:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp385:
LBB3_26:                                ; %if.end1100.4
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, r10, 64
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r12, r0, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1045.5
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	arrive gvmcnt(5)
	mul_f32 r9, r138, r3
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	mul_f32 r0, r136, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r137, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r11, r139, r3
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp387:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp390:
LBB3_28:                                ; %if.end1100.5
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, 0x50, r10
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r26, r0, 2, s10
	shl_b64 r14, 0, 0
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 0
	stg_b64 r26, 0x0, r8 devc
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1045.6
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(6)
	mul_f32 r0, r132, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r133, r3
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r8, r134, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r9, r135, r3
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp392:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp395:
LBB3_30:                                ; %if.end1100.6
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, 0x60, r10
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r8, r0, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r8, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1045.7
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(7)
	mul_f32 r0, r128, r3
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r129, r3
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r11, r130, r3
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r16, r131, r3
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp397:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp398:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp400:
LBB3_32:                                ; %if.end1100.7
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, 0x70, r10
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r22, r0, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r22, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1045.8
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(8)
	mul_f32 r0, r124, r1
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r2, r125, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r11, r126, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r16, r127, r1
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp402:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp405:
LBB3_34:                                ; %if.end1100.8
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 192 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:192
	add_u32 r0, 0x1c000, r10
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	add_co_u32 r10, 0x38000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r10, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1045.9
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	arrive gvmcnt(9)
	mul_f32 r15, r121, r1
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	mul_f32 r2, r120, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r16, r122, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r17, r123, r1
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp407:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp410:
LBB3_36:                                ; %if.end1100.9
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r2, r0, 16
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r28, r2, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 0
	stg_b64 r28, 0x0, r14 devc
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1045.10
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(10)
	mul_f32 r2, r116, r1
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r14, r117, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r15, r118, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r18, r119, r1
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp412:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp413:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp415:
LBB3_38:                                ; %if.end1100.10
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r2, r0, 32
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r14, r2, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1045.11
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	arrive gvmcnt(11)
	mul_f32 r17, r113, r1
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	mul_f32 r2, r112, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r18, r114, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r19, r115, r1
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp417:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp420:
LBB3_40:                                ; %if.end1100.11
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r2, r0, 48
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r30, r2, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1045.12
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(12)
	mul_f32 r2, r108, r1
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r16, r109, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r17, r110, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r108, r111, r1
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp422:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r108
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp425:
LBB3_42:                                ; %if.end1100.12
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r2, r0, 64
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r16, r2, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1045.13
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	arrive gvmcnt(13)
	mul_f32 r19, r105, r1
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	mul_f32 r2, r104, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r104, r106, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r105, r107, r1
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp427:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r104
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r105
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp430:
LBB3_44:                                ; %if.end1100.13
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r2, 0x50, r0
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r104, r2, 2, s10
	shl_b64 r106, 0, 0
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 0
	stg_b64 r104, 0x0, r18 devc
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1045.14
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(14)
	mul_f32 r2, r100, r1
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r18, r101, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r19, r102, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r100, r103, r1
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp432:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_lo, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_hi, r100
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp435:
LBB3_46:                                ; %if.end1100.14
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r2, 0x60, r0
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r18, r2, 2, s10
	shl_b64 r100, 0, 0
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 0
	stg_b64 r18, 0x0, r106 devc
	.loc	2 385 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:385:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1045.15
	.loc	2 390 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:390:22
	arrive gvmcnt(15)
	mul_f32 r2, r96, r1
	.loc	2 391 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:391:22
	mul_f32 r96, r97, r1
	.loc	2 392 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:392:22
	mul_f32 r97, r98, r1
	.loc	2 393 22                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:393:22
	mul_f32 r98, r99, r1
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp437:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_lo, r97
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_hi, r98
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
LBB3_48:                                ; %if.end1100.15
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 401 213 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:213
	or_b32 r0, 0x70, r0
	.loc	2 401 22 is_stmt 0              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:22
	mad_i32 r96, r0, 2, s10
	.loc	2 401 256                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:401:256
	snop 1
	stg_b64 r96, 0x0, r100 devc
	.loc	2 405 9 is_stmt 1               ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.end1211.1.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	shl_b64 r98, 0, 0
	snop 1
	stg_b64 r4, 0x100, r98 devc
                                        ; implicit-def: $mtreg_64bits_4
LBB3_50:                                ; %Flow522
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	shl_b64 r98, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1150
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	arrive gvmcnt(16)
	mul_f32 r0, r92, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r93, r3
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r92, r94, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r93, r95, r3
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp442:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r4, 0x100, r94 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r88, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r89, r3
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r4, r90, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r5, r91, r3
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp447:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp448:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp450:
LBB3_52:                                ; %if.end1211.1
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r20, 0x100, r98 devc
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1211.3.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r6, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow521
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1150.2
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	arrive gvmcnt(17)
	mul_f32 r4, r86, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r5, r87, r3
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r84, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r85, r3
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp452:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp453:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp455:
	.loc	2 412 24 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	snop 0
	mul_f32 r5, r82, r3
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	stg_b64 r6, 0x100, r20 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r80, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r81, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r6, r83, r3
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp457:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp458:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp460:
LBB3_56:                                ; %if.end1211.3
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r24, 0x100, r4 devc
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1211.5.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_58:                                ; %Flow520
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1150.4
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	arrive gvmcnt(18)
	mul_f32 r4, r78, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r5, r79, r3
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r76, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r77, r3
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp462:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp465:
	.loc	2 412 24 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	snop 0
	mul_f32 r5, r74, r3
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	stg_b64 r12, 0x100, r6 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r72, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r73, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r6, r75, r3
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp467:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp470:
LBB3_60:                                ; %if.end1211.5
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r26, 0x100, r4 devc
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1211.7.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	arrive gvmcnt(19)
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r8, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_3
                                        ; implicit-def: $mtreg_64bits_8
LBB3_62:                                ; %Flow519
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1150.6
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	arrive gvmcnt(19)
	mul_f32 r4, r70, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r5, r71, r3
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r68, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r69, r3
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp472:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp473:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp475:
	.loc	2 412 24 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	snop 0
	mul_f32 r5, r66, r3
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	stg_b64 r8, 0x100, r6 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r64, r3
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r65, r3
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r3, r67, r3
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp477:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
LBB3_64:                                ; %if.end1211.7
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r22, 0x100, r4 devc
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1211.9.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	arrive gvmcnt(20)
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r10, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_66:                                ; %Flow517
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1150.8
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r61, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r3, r62, r1
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r60, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r4, r63, r1
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp482:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp485:
	.loc	2 411 24 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	snop 0
	mul_f32 r3, r57, r1
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	stg_b64 r10, 0x100, r6 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r56, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r4, r58, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r5, r59, r1
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp487:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp490:
LBB3_68:                                ; %if.end1211.9
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r28, 0x100, r2 devc
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1211.11.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r14, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_70:                                ; %Flow516
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1150.10
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r53, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r3, r54, r1
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r52, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r4, r55, r1
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp492:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp494:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp495:
	.loc	2 411 24 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	snop 0
	mul_f32 r3, r49, r1
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	stg_b64 r14, 0x100, r6 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r48, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r4, r50, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r5, r51, r1
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp497:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp499:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp500:
LBB3_72:                                ; %if.end1211.11
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r30, 0x100, r2 devc
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1211.13.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r16, 0x100, r2 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow515
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1150.12
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r45, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r3, r46, r1
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r44, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r4, r47, r1
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp502:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp503:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp504:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp505:
	.loc	2 411 24 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	snop 0
	mul_f32 r3, r41, r1
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	stg_b64 r16, 0x100, r6 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r40, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r4, r42, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r5, r43, r1
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp507:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp508:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp509:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp510:
LBB3_76:                                ; %if.end1211.13
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r104, 0x100, r2 devc
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmsks LBB3_79
; %bb.77:                               ; %Flow
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB3_80
LBB3_78:                                ; %if.end1211.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r96, 0x100, r2 devc
	.loc	2 423 1                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:423:1
	snop 0
	endk
LBB3_79:                                ; %if.end1211.15.critedge
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	shl_b64 r0, 0, 0
	snop 1
	stg_b64 r18, 0x100, r0 devc
                                        ; implicit-def: $mtreg_32bit_1
                                        ; implicit-def: $mtreg_64bits_18
	.loc	2 405 9                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:405:9
	or_xmsk s0, s0
	shl_b64 r2, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_78
LBB3_80:                                ; %if.then1150.14
	.loc	2 411 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	mul_f32 r2, r37, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r3, r38, r1
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r36, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r4, r39, r1
.Ltmp511:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp512:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp513:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp514:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp515:
	.loc	2 411 24 is_stmt 1              ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:411:24
	snop 0
	mul_f32 r3, r33, r1
	.loc	2 421 264                       ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	stg_b64 r18, 0x100, r6 devc
	.loc	2 410 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:410:24
	mul_f32 r0, r32, r1
	.loc	2 412 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:412:24
	mul_f32 r4, r34, r1
	.loc	2 413 24                        ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:413:24
	mul_f32 r1, r35, r1
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp517:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp518:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp519:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_hi, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp520:
	.loc	2 421 264 is_stmt 1             ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:421:264
	snop 0
	stg_b64 r96, 0x100, r2 devc
	.loc	2 423 1                         ; /tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp:423:1
	snop 0
	endk
.Ltmp521:
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
; codeLenInByte = 16984
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
	.byte	1                               ; Abbrev [1] 0xb:0x457 DW_TAG_compile_unit
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
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x5f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	89                              ; DW_AT_call_line
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
	.byte	124                             ; DW_AT_call_line
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
	.byte	133                             ; DW_AT_call_line
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
	.byte	171                             ; DW_AT_call_line
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
	.byte	202                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	201                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	200                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	199                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x133:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	225                             ; DW_AT_call_line
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
	.byte	226                             ; DW_AT_call_line
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
	.byte	2                               ; Abbrev [2] 0x19e:0x6 DW_TAG_subprogram
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1a4:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1aa:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1b0:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1b6:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x1bc:0x2a5 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x1cd:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	265                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1e2:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x1f7:0x1a DW_TAG_inlined_subroutine
	.long	420                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	268                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x204:0xc DW_TAG_inlined_subroutine
	.long	414                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	34                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x211:0x2a DW_TAG_inlined_subroutine
	.long	432                             ; DW_AT_abstract_origin
	.quad	.Ltmp333                        ; DW_AT_low_pc
	.long	.Ltmp334-.Ltmp333               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x226:0x14 DW_TAG_inlined_subroutine
	.long	426                             ; DW_AT_abstract_origin
	.quad	.Ltmp333                        ; DW_AT_low_pc
	.long	.Ltmp334-.Ltmp333               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	42                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x23b:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp334                        ; DW_AT_low_pc
	.long	.Ltmp335-.Ltmp334               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x250:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp334                        ; DW_AT_low_pc
	.long	.Ltmp335-.Ltmp334               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x265:0xd DW_TAG_inlined_subroutine
	.long	438                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	295                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x272:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp341                        ; DW_AT_low_pc
	.long	.Ltmp342-.Ltmp341               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	313                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x287:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp341                        ; DW_AT_low_pc
	.long	.Ltmp342-.Ltmp341               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x29c:0x1a DW_TAG_inlined_subroutine
	.long	420                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	315                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x2a9:0xc DW_TAG_inlined_subroutine
	.long	414                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	34                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2b6:0x2a DW_TAG_inlined_subroutine
	.long	432                             ; DW_AT_abstract_origin
	.quad	.Ltmp353                        ; DW_AT_low_pc
	.long	.Ltmp354-.Ltmp353               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	340                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2cb:0x14 DW_TAG_inlined_subroutine
	.long	426                             ; DW_AT_abstract_origin
	.quad	.Ltmp353                        ; DW_AT_low_pc
	.long	.Ltmp354-.Ltmp353               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	42                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2e0:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp354                        ; DW_AT_low_pc
	.long	.Ltmp355-.Ltmp354               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	342                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2f5:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp354                        ; DW_AT_low_pc
	.long	.Ltmp355-.Ltmp354               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x30a:0x2a DW_TAG_inlined_subroutine
	.long	420                             ; DW_AT_abstract_origin
	.quad	.Ltmp356                        ; DW_AT_low_pc
	.long	.Ltmp357-.Ltmp356               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	345                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x31f:0x14 DW_TAG_inlined_subroutine
	.long	414                             ; DW_AT_abstract_origin
	.quad	.Ltmp356                        ; DW_AT_low_pc
	.long	.Ltmp357-.Ltmp356               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	34                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x334:0x2a DW_TAG_inlined_subroutine
	.long	432                             ; DW_AT_abstract_origin
	.quad	.Ltmp358                        ; DW_AT_low_pc
	.long	.Ltmp359-.Ltmp358               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	366                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x349:0x14 DW_TAG_inlined_subroutine
	.long	426                             ; DW_AT_abstract_origin
	.quad	.Ltmp358                        ; DW_AT_low_pc
	.long	.Ltmp359-.Ltmp358               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	42                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x35e:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp359                        ; DW_AT_low_pc
	.long	.Ltmp360-.Ltmp359               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	368                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x373:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp359                        ; DW_AT_low_pc
	.long	.Ltmp360-.Ltmp359               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x388:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	394                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x395:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3a2:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3af:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3be:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	395                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3cb:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3d8:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3e5:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3f4:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	414                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x401:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x40e:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x41b:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x42a:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	415                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x437:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x444:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x451:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
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
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
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
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
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
	.quad	0
	.quad	0
.Ldebug_ranges24:
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
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
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
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
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
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
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
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
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
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
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
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
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
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v037_case1only_codegen/v037_final_case3_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=104
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=125
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=135
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=149
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=155
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=171
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=189
.Linfo_string9:
	.asciz	"memcpy_async<16, false>"       ; string offset=207
.Linfo_string10:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=231
.Linfo_string11:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=258
.Linfo_string12:
	.asciz	"moe_select_wait_async_16"      ; string offset=353
.Linfo_string13:
	.asciz	"moe_memcpy_sync_16"            ; string offset=378
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=397
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=411
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
    .streg_count:    26
  - .args:
      - .arg_name:       down.coerce
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
