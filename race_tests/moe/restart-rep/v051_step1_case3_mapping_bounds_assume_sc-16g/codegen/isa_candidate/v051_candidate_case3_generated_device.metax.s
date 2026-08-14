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
	.file	2 "/tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3" "v051_candidate_case3_generated_device.cpp"
	.loc	2 98 0                          ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:98:0
; %bb.0:                                ; %entry
	ldu_b64 s6, s0, 0x30
	ldu_b128 s8, s0, 0x20
	ldu_b256 s16, s0, 0x0
.Ltmp4:
	.loc	2 106 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:106:25
	scmp_gt_u32 s5, 31
	.loc	2 106 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:106:7
	snop 0
	bra_smskz LBB2_2
; %bb.1:                                ; %if.else
	.loc	2 110 49 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:110:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 110 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:110:75
	sand_b32 s1, s4, 1
	.loc	2 110 54                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:110:54
	sor_b32 s12, s0, s1
	.loc	2 111 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:111:48
	sshl_b32 s0, 3, s5
	sand_b32 s0, s0, 8
	.loc	2 111 74 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:111:74
	sshr_b32 s1, 1, s4
	.loc	2 111 53                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:111:53
	sadd_co_i32 s0, s0, s1
	.loc	2 106 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:106:7
	bra_xmskz LBB2_3
	bra LBB2_4
LBB2_2:
                                        ; implicit-def: $streg_32bit_0
                                        ; implicit-def: $streg_32bit_12
LBB2_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:7
	smov_b32 s12, s5
	smov_b32 s0, s4
LBB2_4:                                 ; %if.end
	and_b32 r0, 0x3ff, r0
	.loc	2 115 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:115:19
	smov_b32 s13, 0
	sshl_b64 s2, 2, s12
	shr_b32 r1, 6, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	mul_u24 r2, 0x38000, r1
	and_b32 r1, r0, 15
	smov_b32 s13, 0x1c00
	saddc_co_u32 s3, s19, s3
	mad_u24 r3, r1, s13, r2
	shr_b32 r2, 1, r0
	ldu_b32 s4, s2, 0x0
	smul_i32 s3, 0xe0000, s12
	and_or_b32 r3, r2, 24, r3
	add_u32 r154, r3, s3
	.loc	2 130 182                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:182
	add_u32 r3, 0x1c000, r154
	.loc	2 130 59 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:59
	mad_i32 r6, r3, 2, s8
	mad_i32 r4, r154, 2, s8
	.loc	2 130 203                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:203
	or_b32 r3, r154, 32
	.loc	2 130 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:41
	ldg_b128 r168, r6, 0x0
	ldg_b128 r164, r4, 0x0
	.loc	2 130 59                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:59
	mad_i32 r4, r3, 2, s8
	.loc	2 130 203                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:203
	add_u32 r3, 0x1c020, r154
	.loc	2 130 59                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:59
	mad_i32 r6, r3, 2, s8
	.loc	2 130 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:130:41
	ldg_b128 r172, r4, 0x0
	shl_b32 r29, 3, r0
	ldg_b128 r176, r6, 0x0
	and_b32 r20, r29, 32
	.loc	2 115 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:115:19
	arrive slcnt(0)
	sashr_i32 s5, 31, s4
	add_u32 r3, r20, r0
	.loc	2 116 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:116:20
	sshl_b64 s14, 2, s4
	and_b32 r6, r3, 32
	and_b32 r3, r29, 16
	sadd_co_u32 s18, s22, s14
	shr_b32 r4, 5, r0
	add_u32 r3, r3, r0
	saddc_co_u32 s19, s23, s15
	and_b32 r7, r3, 16
	mul_u24 r3, r0, 9
	add_shl_u32 r4, r4, r2, 4
	.loc	2 117 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:117:22
	sadd_co_u32 s14, s20, s14
	and_b32 r8, r3, 8
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r0
	add_shl_u32 r13, r4, r0, 3
	saddc_co_u32 s15, s21, s15
	and_b32 r5, 0x1fc0, r29
	or_b32 r4, r6, r8
	or3_b32 r4, r4, r5, r7
	or_b32 r5, r5, r6
	smul_i32 s3, 0xe00000, s4
	sadd_co_u32 s4, 0x80, s8
	saddc_co_u32 s5, s9, 0
	or3_b32 r5, r5, r7, r8
	ldu_b32 s2, s14, 0x0
	shl_b32 r3, 6, r0
	.loc	2 116 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:116:20
	ldu_b32 s1, s18, 0x0
	and_b32 r19, 0x3c0, r3
	shl_b32 r7, 1, r5
	sadd_co_u32 s8, 0x100, s8
	and_or_b32 r27, r13, 8, r12
	smul_i32 s14, 0xe0000, s0
	shl_b32 r9, 1, r4
	saddc_co_u32 s9, s9, 0
	add_u32 r10, 0x1000, r7
	add_u32 r11, 0x2000, r7
	sadd_co_i32 s15, 0x4000, 0
	add_u32 r14, 0x3000, r7
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r25, 0xc00, r19
	or_b32 r26, 0x1000, r19
	or_b32 r30, 0x1400, r19
	or_b32 r31, 0x1800, r19
	or_b32 r32, 0x1c00, r19
	xor_b32 r33, r20, 32
	sadd_co_i32 s3, s3, s14
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
	add_u32 r8, s15, r9
	add_u32 r9, s15, r10
	add_u32 r10, s15, r11
	add_u32 r11, s15, r14
	or_b32 r14, r23, r24
	or3_b32 r23, r27, r25, r33
	or3_b32 r25, r27, r30, r33
	.loc	2 132 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:132:3
	mov_b32 r30, s3
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:0
	shl_b64 r98, 0, 0
	or_b32 r12, r21, r20
	or_b32 r20, r21, r33
	or3_b32 r21, r27, r22, r33
	or3_b32 r22, r27, r24, r33
	or3_b32 r24, r27, r26, r33
	or3_b32 r26, r27, r31, r33
	or3_b32 r27, r27, r32, r33
	.loc	2 132 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:132:3
	mad_u24 r28, r28, s13, r30
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:0
	shl_b64 r100, 0, 0
	shl_b64 r106, 0, r98
	shl_b64 r114, 0, r98
	shl_b64 r122, 0, r98
	shl_b64 r130, 0, r98
	shl_b64 r138, 0, r98
	shl_b64 r146, 0, r98
	shl_b64 r156, 0, r98
	shl_b64 r34, 0, r98
	shl_b64 r42, 0, r98
	shl_b64 r50, 0, r98
	shl_b64 r58, 0, r98
	shl_b64 r66, 0, r98
	shl_b64 r74, 0, r98
	shl_b64 r82, 0, r98
	shl_b64 r90, 0, r98
	shl_b64 r102, 0, r98
	shl_b64 r110, 0, r98
	shl_b64 r118, 0, r98
	shl_b64 r126, 0, r98
	shl_b64 r134, 0, r98
	shl_b64 r142, 0, r98
	shl_b64 r150, 0, r98
	shl_b64 r160, 0, r98
	shl_b64 r94, 0, r98
	shl_b64 r86, 0, r98
	shl_b64 r78, 0, r98
	shl_b64 r70, 0, r98
	shl_b64 r62, 0, r98
	shl_b64 r54, 0, r98
	shl_b64 r46, 0, r98
	shl_b64 r38, 0, r98
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
	.loc	2 132 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:132:3
	and_or_b32 r180, r29, 56, r28
	smov_b64 s14, 0
	shl_b64 r108, 0, r100
	shl_b64 r116, 0, r100
	shl_b64 r124, 0, r100
	shl_b64 r132, 0, r100
	shl_b64 r140, 0, r100
	shl_b64 r148, 0, r100
	shl_b64 r158, 0, r100
	shl_b64 r36, 0, r100
	shl_b64 r44, 0, r100
	shl_b64 r52, 0, r100
	shl_b64 r60, 0, r100
	shl_b64 r68, 0, r100
	shl_b64 r76, 0, r100
	shl_b64 r84, 0, r100
	shl_b64 r92, 0, r100
	shl_b64 r104, 0, r100
	shl_b64 r112, 0, r100
	shl_b64 r120, 0, r100
	shl_b64 r128, 0, r100
	shl_b64 r136, 0, r100
	shl_b64 r144, 0, r100
	shl_b64 r152, 0, r100
	shl_b64 r162, 0, r100
	shl_b64 r96, 0, r100
	shl_b64 r88, 0, r100
	shl_b64 r80, 0, r100
	shl_b64 r72, 0, r100
	shl_b64 r64, 0, r100
	shl_b64 r56, 0, r100
	shl_b64 r48, 0, r100
	shl_b64 r40, 0, r100
	bra LBB2_6
	.p2align	5
LBB2_5:                                 ; %for.inc770
                                        ;   in Loop: Header=BB2_6 Depth=1
	.loc	2 132 31                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:132:31
	sadd_co_u32 s14, 0x80, s14
	saddc_co_u32 s15, s15, 0
	scmp_eq_u64 0x1c00, s14
	.loc	2 132 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:132:3
	snop 0
	bra_smsks LBB2_10
LBB2_6:                                 ; %for.cond84.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 135 362 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:362
	add_u32 r28, r180, s14
	mad_i32 r30, r28, 2, s16
	add_u32 r29, 0x38000, r28
	mad_i32 r32, r29, 2, s16
	.loc	2 135 345 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:345
	ldg_b128 r182, r30, 0x0
	.loc	2 135 362                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:362
	add_u32 r30, 0x70000, r28
	add_u32 r31, 0xa8000, r28
	.loc	2 135 345                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:345
	ldg_b128 r186, r32, 0x0
	.loc	2 135 362                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:362
	mad_i32 r32, r30, 2, s16
	mad_i32 r190, r31, 2, s16
	.loc	2 135 345                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:345
	snop 0
	ldg_b128 r192, r32, 0x0
	.loc	2 139 369 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:139:369
	mad_i32 r32, r28, 2, s10
	.loc	2 135 345                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:345
	ldg_b128 r196, r190, 0x0
	.loc	2 139 369                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:139:369
	mad_i32 r190, r29, 2, s10
	.loc	2 139 354 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:139:354
	ldg_b128 r200, r32, 0x0
	.loc	2 139 369                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:139:369
	mad_i32 r32, r30, 2, s10
	mad_i32 r30, r31, 2, s10
	.loc	2 139 354                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:139:354
	ldg_b128 r204, r190, 0x0
	ldg_b128 r208, r32, 0x0
	ldg_b128 r30, r30, 0x0
	.loc	2 135 345 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:135:345
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r182
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r186
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r192
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r196
	.loc	2 139 354                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:139:354
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r200
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r204
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r208
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r30
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r30, r12, 0x0
	lds_b128 r182, r13, 0x0
	lds_b128 r186, r14, 0x0
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	add_i32 r29, 0x4000, r12
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r30, r164, r156
	mma_16x16x16f16 r94, r30, r168, r94
	mma_16x16x16f16 r156, r32, r166, r156
	mma_16x16x16f16 r94, r32, r170, r94
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r30, r15, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r182, r164, r146
	mma_16x16x16f16 r86, r182, r168, r86
	mma_16x16x16f16 r146, r184, r166, r146
	mma_16x16x16f16 r86, r184, r170, r86
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r182, r16, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r164, r138
	mma_16x16x16f16 r78, r186, r168, r78
	mma_16x16x16f16 r138, r188, r166, r138
	mma_16x16x16f16 r78, r188, r170, r78
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r186, r17, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r30, r164, r130
	mma_16x16x16f16 r70, r30, r168, r70
	mma_16x16x16f16 r130, r32, r166, r130
	mma_16x16x16f16 r70, r32, r170, r70
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r30, r18, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r182, r164, r122
	mma_16x16x16f16 r62, r182, r168, r62
	mma_16x16x16f16 r122, r184, r166, r122
	mma_16x16x16f16 r62, r184, r170, r62
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r182, r19, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r186, r164, r114
	mma_16x16x16f16 r54, r186, r168, r54
	mma_16x16x16f16 r114, r188, r166, r114
	mma_16x16x16f16 r54, r188, r170, r54
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r186, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r30, r164, r106
	mma_16x16x16f16 r46, r30, r168, r46
	mma_16x16x16f16 r106, r32, r166, r106
	mma_16x16x16f16 r46, r32, r170, r46
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r14
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r182, r164, r98
	mma_16x16x16f16 r38, r182, r168, r38
	mma_16x16x16f16 r98, r184, r166, r98
	mma_16x16x16f16 r38, r184, r170, r38
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r182, r29, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r186, r164, r160
	mma_16x16x16f16 r90, r186, r168, r90
	mma_16x16x16f16 r160, r188, r166, r160
	mma_16x16x16f16 r90, r188, r170, r90
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r186, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r30, r164, r150
	mma_16x16x16f16 r82, r30, r168, r82
	mma_16x16x16f16 r150, r32, r166, r150
	mma_16x16x16f16 r82, r32, r170, r82
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r182, r164, r142
	mma_16x16x16f16 r74, r182, r168, r74
	mma_16x16x16f16 r142, r184, r166, r142
	mma_16x16x16f16 r74, r184, r170, r74
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r182, r29, 0x0
	add_i32 r29, 0x4000, r18
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r186, r164, r134
	mma_16x16x16f16 r66, r186, r168, r66
	mma_16x16x16f16 r134, r188, r166, r134
	mma_16x16x16f16 r66, r188, r170, r66
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r186, r29, 0x0
	add_i32 r29, 0x4000, r19
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r30, r164, r126
	mma_16x16x16f16 r58, r30, r168, r58
	mma_16x16x16f16 r126, r32, r166, r126
	mma_16x16x16f16 r58, r32, r170, r58
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r20
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r182, r164, r118
	mma_16x16x16f16 r50, r182, r168, r50
	mma_16x16x16f16 r118, r184, r166, r118
	mma_16x16x16f16 r50, r184, r170, r50
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r182, r20, 0x0
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r186, r164, r110
	mma_16x16x16f16 r42, r186, r168, r42
	mma_16x16x16f16 r110, r188, r166, r110
	mma_16x16x16f16 r42, r188, r170, r42
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r186, r21, 0x0
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r30, r164, r102
	mma_16x16x16f16 r34, r30, r168, r34
	mma_16x16x16f16 r102, r32, r166, r102
	mma_16x16x16f16 r34, r32, r170, r34
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r30, r22, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r182, r172, r156
	mma_16x16x16f16 r94, r182, r176, r94
	mma_16x16x16f16 r156, r184, r174, r156
	mma_16x16x16f16 r94, r184, r178, r94
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r182, r23, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r186, r172, r146
	mma_16x16x16f16 r86, r186, r176, r86
	mma_16x16x16f16 r146, r188, r174, r146
	mma_16x16x16f16 r86, r188, r178, r86
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r186, r24, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r30, r172, r138
	mma_16x16x16f16 r78, r30, r176, r78
	mma_16x16x16f16 r138, r32, r174, r138
	mma_16x16x16f16 r78, r32, r178, r78
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r30, r25, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r182, r172, r130
	mma_16x16x16f16 r70, r182, r176, r70
	mma_16x16x16f16 r130, r184, r174, r130
	mma_16x16x16f16 r70, r184, r178, r70
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r182, r26, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r186, r172, r122
	mma_16x16x16f16 r62, r186, r176, r62
	mma_16x16x16f16 r122, r188, r174, r122
	mma_16x16x16f16 r62, r188, r178, r62
	.loc	2 148 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:148:43
	lds_b128 r186, r27, 0x0
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r30, r172, r114
	mma_16x16x16f16 r54, r30, r176, r54
	mma_16x16x16f16 r114, r32, r174, r114
	mma_16x16x16f16 r54, r32, r178, r54
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r182, r172, r106
	mma_16x16x16f16 r46, r182, r176, r46
	mma_16x16x16f16 r106, r184, r174, r106
	mma_16x16x16f16 r46, r184, r178, r46
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r182, r29, 0x0
	add_i32 r29, 0x4000, r22
	.loc	2 154 57                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:154:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r186, r172, r98
	mma_16x16x16f16 r38, r186, r176, r38
	mma_16x16x16f16 r98, r188, r174, r98
	mma_16x16x16f16 r38, r188, r178, r38
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r186, r29, 0x0
	add_i32 r29, 0x4000, r23
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r30, r172, r160
	mma_16x16x16f16 r90, r30, r176, r90
	mma_16x16x16f16 r160, r32, r174, r160
	mma_16x16x16f16 r90, r32, r178, r90
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r24
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r182, r172, r150
	mma_16x16x16f16 r82, r182, r176, r82
	mma_16x16x16f16 r150, r184, r174, r150
	mma_16x16x16f16 r82, r184, r178, r82
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r182, r29, 0x0
	add_i32 r29, 0x4000, r25
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r186, r172, r142
	mma_16x16x16f16 r74, r186, r176, r74
	mma_16x16x16f16 r142, r188, r174, r142
	mma_16x16x16f16 r74, r188, r178, r74
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r186, r29, 0x0
	add_i32 r29, 0x4000, r26
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r30, r172, r134
	mma_16x16x16f16 r66, r30, r176, r66
	mma_16x16x16f16 r134, r32, r174, r134
	mma_16x16x16f16 r66, r32, r178, r66
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r27
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r182, r172, r126
	mma_16x16x16f16 r58, r182, r176, r58
	mma_16x16x16f16 r126, r184, r174, r126
	mma_16x16x16f16 r58, r184, r178, r58
	.loc	2 162 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:162:45
	lds_b128 r182, r29, 0x0
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r186, r172, r118
	mma_16x16x16f16 r50, r186, r176, r50
	mma_16x16x16f16 r118, r188, r174, r118
	mma_16x16x16f16 r50, r188, r178, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r30, r172, r110
	mma_16x16x16f16 r42, r30, r176, r42
	mma_16x16x16f16 r110, r32, r174, r110
	mma_16x16x16f16 r42, r32, r178, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r102, r182, r172, r102
	.loc	2 144 63                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:144:63
	add_u32 r32, r154, s14
	add_u32 r31, 0x1c000, r32
	add_u32 r30, r32, 32
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	mma_16x16x16f16 r34, r182, r176, r34
	.loc	2 144 63                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:144:63
	add_u32 r29, 0x1c020, r32
	mad_i32 r182, r32, 2, s4
	.loc	2 168 55                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:168:55
	mma_16x16x16f16 r102, r184, r174, r102
	mma_16x16x16f16 r34, r184, r178, r34
	.loc	2 144 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:144:45
	ldg_b128 r190, r182, 0x0
	.loc	2 144 63 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:144:63
	mad_i32 r184, r31, 2, s4
	mad_i32 r182, r30, 2, s4
	.loc	2 144 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:144:45
	snop 0
	ldg_b128 r194, r184, 0x0
	.loc	2 144 63                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:144:63
	mad_i32 r184, r29, 2, s4
	.loc	2 144 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:144:45
	ldg_b128 r186, r182, 0x0
	snop 0
	ldg_b128 r182, r184, 0x0
.Ltmp7:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 179 362                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:179:362
	add_u32 r33, r28, 64
	add_u32 r155, 0x38040, r28
	add_u32 r181, 0x70040, r28
	add_u32 r28, 0xa8040, r28
	mad_i32 r198, r33, 2, s16
	mad_i32 r200, r155, 2, s16
	mad_i32 r206, r181, 2, s16
	mad_i32 r208, r28, 2, s16
	.loc	2 183 369                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:183:369
	mad_i32 r214, r33, 2, s10
	mad_i32 r216, r155, 2, s10
	mad_i32 r222, r181, 2, s10
	mad_i32 r224, r28, 2, s10
	.loc	2 179 345                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:179:345
	ldg_b128 r202, r198, 0x0
	ldg_b128 r198, r200, 0x0
	ldg_b128 r210, r206, 0x0
	ldg_b128 r206, r208, 0x0
	.loc	2 183 354                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:183:354
	ldg_b128 r218, r214, 0x0
	ldg_b128 r214, r216, 0x0
	ldg_b128 r226, r222, 0x0
	ldg_b128 r222, r224, 0x0
	.loc	2 179 345                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:179:345
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r202
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r198
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r210
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r206
	.loc	2 183 354                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:183:354
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r218
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r214
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r226
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r222
.Ltmp9:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 186 16                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:186:16
	mov_b32 r198, 0x1b80
	mov_b32 r199, 0
	cmp_lg_u64 s18, s14, r198
	.loc	2 186 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:186:9
	snop 3
	sand_b64 cmsk, xmsk, s18
	snop 0
	bra_cmskz LBB2_8
; %bb.7:                                ; %for.cond548.preheader
                                        ;   in Loop: Header=BB2_6 Depth=1
	.loc	2 189 64 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:189:64
	mad_i32 r168, r31, 2, s8
	mad_i32 r32, r32, 2, s8
	mad_i32 r30, r30, 2, s8
	mad_i32 r28, r29, 2, s8
	.loc	2 189 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:189:46
	ldg_b128 r164, r32, 0x0
	ldg_b128 r168, r168, 0x0
	ldg_b128 r172, r30, 0x0
	ldg_b128 r176, r28, 0x0
LBB2_8:                                 ; %if.end584
                                        ;   in Loop: Header=BB2_6 Depth=1
	.loc	2 194 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r28, r12, 0x0
	lds_b128 r198, r13, 0x0
	lds_b128 r202, r14, 0x0
	.loc	2 222 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:222:9
	sandn_b64 cmsk, xmsk, s18
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r28, r190, r156
	mma_16x16x16f16 r94, r28, r194, r94
	mma_16x16x16f16 r156, r30, r192, r156
	mma_16x16x16f16 r94, r30, r196, r94
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r28, r15, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r198, r190, r146
	mma_16x16x16f16 r86, r198, r194, r86
	mma_16x16x16f16 r146, r200, r192, r146
	mma_16x16x16f16 r86, r200, r196, r86
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r198, r16, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r202, r190, r138
	mma_16x16x16f16 r78, r202, r194, r78
	mma_16x16x16f16 r138, r204, r192, r138
	mma_16x16x16f16 r78, r204, r196, r78
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r202, r17, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r28, r190, r130
	mma_16x16x16f16 r70, r28, r194, r70
	mma_16x16x16f16 r130, r30, r192, r130
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	add_i32 r28, 0x4000, r12
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	mma_16x16x16f16 r70, r30, r196, r70
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r30, r18, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r198, r190, r122
	mma_16x16x16f16 r62, r198, r194, r62
	mma_16x16x16f16 r122, r200, r192, r122
	mma_16x16x16f16 r62, r200, r196, r62
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r198, r19, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r202, r190, r114
	mma_16x16x16f16 r54, r202, r194, r54
	mma_16x16x16f16 r114, r204, r192, r114
	mma_16x16x16f16 r54, r204, r196, r54
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r13
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r30, r190, r106
	mma_16x16x16f16 r46, r30, r194, r46
	mma_16x16x16f16 r106, r32, r192, r106
	mma_16x16x16f16 r46, r32, r196, r46
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r14
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r198, r190, r98
	mma_16x16x16f16 r38, r198, r194, r38
	mma_16x16x16f16 r98, r200, r192, r98
	mma_16x16x16f16 r38, r200, r196, r38
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r198, r28, 0x0
	add_i32 r28, 0x4000, r15
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r202, r190, r160
	mma_16x16x16f16 r90, r202, r194, r90
	mma_16x16x16f16 r160, r204, r192, r160
	mma_16x16x16f16 r90, r204, r196, r90
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r16
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r30, r190, r150
	mma_16x16x16f16 r82, r30, r194, r82
	mma_16x16x16f16 r150, r32, r192, r150
	mma_16x16x16f16 r82, r32, r196, r82
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r17
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r198, r190, r142
	mma_16x16x16f16 r74, r198, r194, r74
	mma_16x16x16f16 r142, r200, r192, r142
	mma_16x16x16f16 r74, r200, r196, r74
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r198, r28, 0x0
	add_i32 r28, 0x4000, r18
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r202, r190, r134
	mma_16x16x16f16 r66, r202, r194, r66
	mma_16x16x16f16 r134, r204, r192, r134
	mma_16x16x16f16 r66, r204, r196, r66
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r19
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r30, r190, r126
	mma_16x16x16f16 r58, r30, r194, r58
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r28, r28, 0x0
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	mma_16x16x16f16 r126, r32, r192, r126
	mma_16x16x16f16 r58, r32, r196, r58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r198, r190, r118
	mma_16x16x16f16 r50, r198, r194, r50
	mma_16x16x16f16 r118, r200, r192, r118
	mma_16x16x16f16 r50, r200, r196, r50
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r198, r20, 0x0
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r202, r190, r110
	mma_16x16x16f16 r42, r202, r194, r42
	mma_16x16x16f16 r110, r204, r192, r110
	mma_16x16x16f16 r42, r204, r196, r42
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r202, r21, 0x0
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r28, r190, r102
	mma_16x16x16f16 r34, r28, r194, r34
	mma_16x16x16f16 r102, r30, r192, r102
	mma_16x16x16f16 r34, r30, r196, r34
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r28, r22, 0x0
	lds_b128 r190, r23, 0x0
	lds_b128 r194, r24, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(4)
	mma_16x16x16f16 r156, r198, r186, r156
	mma_16x16x16f16 r94, r198, r182, r94
	mma_16x16x16f16 r156, r200, r188, r156
	mma_16x16x16f16 r94, r200, r184, r94
	arrive bsmcnt(3)
	mma_16x16x16f16 r146, r202, r186, r146
	mma_16x16x16f16 r86, r202, r182, r86
	mma_16x16x16f16 r146, r204, r188, r146
	mma_16x16x16f16 r86, r204, r184, r86
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r28, r186, r138
	mma_16x16x16f16 r78, r28, r182, r78
	mma_16x16x16f16 r138, r30, r188, r138
	mma_16x16x16f16 r78, r30, r184, r78
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r28, r25, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r190, r186, r130
	mma_16x16x16f16 r70, r190, r182, r70
	mma_16x16x16f16 r130, r192, r188, r130
	mma_16x16x16f16 r70, r192, r184, r70
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r190, r26, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r194, r186, r122
	mma_16x16x16f16 r62, r194, r182, r62
	mma_16x16x16f16 r122, r196, r188, r122
	mma_16x16x16f16 r62, r196, r184, r62
	.loc	2 194 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:194:45
	lds_b128 r194, r27, 0x0
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r28, r186, r114
	mma_16x16x16f16 r54, r28, r182, r54
	mma_16x16x16f16 r114, r30, r188, r114
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	add_i32 r28, 0x4000, r20
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	mma_16x16x16f16 r54, r30, r184, r54
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r190, r186, r106
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r21
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	mma_16x16x16f16 r46, r190, r182, r46
	mma_16x16x16f16 r106, r192, r188, r106
	mma_16x16x16f16 r46, r192, r184, r46
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r190, r28, 0x0
	add_i32 r28, 0x4000, r22
	.loc	2 200 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:200:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r194, r186, r98
	mma_16x16x16f16 r38, r194, r182, r38
	mma_16x16x16f16 r98, r196, r188, r98
	mma_16x16x16f16 r38, r196, r184, r38
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r194, r28, 0x0
	add_i32 r28, 0x4000, r23
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r30, r186, r160
	mma_16x16x16f16 r90, r30, r182, r90
	mma_16x16x16f16 r160, r32, r188, r160
	mma_16x16x16f16 r90, r32, r184, r90
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r24
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r190, r186, r150
	mma_16x16x16f16 r82, r190, r182, r82
	mma_16x16x16f16 r150, r192, r188, r150
	mma_16x16x16f16 r82, r192, r184, r82
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r190, r28, 0x0
	add_i32 r28, 0x4000, r25
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r194, r186, r142
	mma_16x16x16f16 r74, r194, r182, r74
	mma_16x16x16f16 r142, r196, r188, r142
	mma_16x16x16f16 r74, r196, r184, r74
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r194, r28, 0x0
	add_i32 r28, 0x4000, r26
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r30, r186, r134
	mma_16x16x16f16 r66, r30, r182, r66
	mma_16x16x16f16 r134, r32, r188, r134
	mma_16x16x16f16 r66, r32, r184, r66
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r27
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r190, r186, r126
	mma_16x16x16f16 r58, r190, r182, r58
	mma_16x16x16f16 r126, r192, r188, r126
	mma_16x16x16f16 r58, r192, r184, r58
	.loc	2 208 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:208:45
	lds_b128 r190, r28, 0x0
	.loc	2 214 56                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:214:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r194, r186, r118
	mma_16x16x16f16 r50, r194, r182, r50
	mma_16x16x16f16 r118, r196, r188, r118
	mma_16x16x16f16 r50, r196, r184, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r30, r186, r110
	mma_16x16x16f16 r42, r30, r182, r42
	mma_16x16x16f16 r110, r32, r188, r110
	mma_16x16x16f16 r42, r32, r184, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r102, r190, r186, r102
	mma_16x16x16f16 r34, r190, r182, r34
	mma_16x16x16f16 r102, r192, r188, r102
	mma_16x16x16f16 r34, r192, r184, r34
	.loc	2 222 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:222:9
	bra_cmsks LBB2_5
; %bb.9:                                ; %if.then768
                                        ;   in Loop: Header=BB2_6 Depth=1
.Ltmp11:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB2_5
.Ltmp12:
LBB2_10:                                ; %for.cond773.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	sshl_b32 s3, 7, s12
	ssub_co_i32 s1, s1, s3
	sadd_co_i32 s1, s1, s2
	smov_b32 s2, 0x1e0
	.loc	2 268 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:66
	and_or_b32 r1, r2, s2, r1
	shl_b32 r4, 10, r0
	shl_b32 r0, 11, r0
	.loc	2 268 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:95
	cmp_lt_i32 s2, r1, s1
	sshl_b32 s4, 18, s12
	and_b32 r4, 0xf0000, r4
	and_b32 r0, 0x7800, r0
	sshl_b32 s0, 7, s0
	and_b32 r3, r3, 12
	or3_b32 r0, r0, r4, r3
	sadd_co_i32 s0, s0, s4
	add_u32 r0, s0, r0
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_28
; %bb.11:                               ; %if.end946
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_29
LBB2_12:                                ; %if.end946.1
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_30
LBB2_13:                                ; %if.end946.2
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_31
LBB2_14:                                ; %if.end946.3
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_32
LBB2_15:                                ; %if.end946.4
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_33
LBB2_16:                                ; %if.end946.5
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_34
LBB2_17:                                ; %if.end946.6
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_19
LBB2_18:                                ; %if.then888.7
	.loc	2 250 27 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r101
.Ltmp13:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s2
	fmka_f32 r6, r101, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s2
	exp_f32 r6, r6
.Ltmp14:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r100
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp16:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r101, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r105
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s2
	fmka_f32 r7, r100, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s2
	exp_f32 r7, r7
.Ltmp18:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r99
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp20:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r100, r6
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s2
	fmka_f32 r8, r99, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s2
	exp_f32 r8, r8
.Ltmp22:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r98
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp24:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r99, r7
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s2
	fmka_f32 r5, r98, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s2
	exp_f32 r5, r5
.Ltmp26:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r98, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r102
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r103
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r104
.Ltmp27:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp28:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp29:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp30:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp31:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	or_b32 r4, 0x70, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r4, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
LBB2_19:                                ; %if.end946.7
	.loc	2 0 229                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:229
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:66
	or_b32 r1, r1, 16
	.loc	2 268 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:95
	cmp_lt_i32 s0, r1, s1
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	snop 3
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_35
; %bb.20:                               ; %if.end946.8
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_36
LBB2_21:                                ; %if.end946.9
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_37
LBB2_22:                                ; %if.end946.10
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_38
LBB2_23:                                ; %if.end946.11
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_39
LBB2_24:                                ; %if.end946.12
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_40
LBB2_25:                                ; %if.end946.13
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_41
LBB2_26:                                ; %if.end946.14
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_42
LBB2_27:                                ; %if.end946.15
	.loc	2 282 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:282:1
	snop 1
	endk
LBB2_28:                                ; %if.then888
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r159
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r159, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp33:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r158
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp35:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r159, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r163
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r158, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp37:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r157
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp39:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r158, r6
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r157, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp41:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r156
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp43:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r157, r7
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r156, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp45:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r156, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r160
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r161
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r162
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp47:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp48:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp49:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp50:
	.loc	2 279 229 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r0, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_12
LBB2_29:                                ; %if.then888.1
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r149
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r149, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp52:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r148
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp54:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r149, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r153
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r148, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp56:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r147
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp58:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r148, r6
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r147, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp60:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r146
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp62:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r147, r7
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r146, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp64:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r146, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r150
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r151
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r152
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp66:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp68:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp69:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	or_b32 r4, r0, 16
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r4, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_13
LBB2_30:                                ; %if.then888.2
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r141
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r141, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp71:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r140
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp73:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r141, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r145
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r140, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp75:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r139
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp77:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r140, r6
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r139, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp79:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r138
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp81:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r139, r7
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r138, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp83:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r138, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r142
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r143
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r144
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp85:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp87:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp88:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	or_b32 r4, r0, 32
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r4, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_14
LBB2_31:                                ; %if.then888.3
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r133
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r133, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp90:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r132
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp92:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r133, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r137
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r132, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp94:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r131
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp96:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r132, r6
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r131, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp98:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r130
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp100:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r131, r7
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r130, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp102:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r130, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r134
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r135
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r136
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp104:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp106:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp107:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	or_b32 r4, r0, 48
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r4, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_15
LBB2_32:                                ; %if.then888.4
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r125
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r125, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp109:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r124
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp111:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r125, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r129
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r124, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp113:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r123
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp115:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r124, r6
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r123, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp117:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r122
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp119:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r123, r7
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r122, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp121:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r122, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r126
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r127
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r128
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp123:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp125:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp126:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	or_b32 r4, r0, 64
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r4, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_16
LBB2_33:                                ; %if.then888.5
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r117
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r117, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp128:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r116
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp130:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r117, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r121
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r116, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp132:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r115
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp134:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r116, r6
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r115, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp136:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r114
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp138:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r115, r7
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r114, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp140:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r114, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r118
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r119
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r120
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp142:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp144:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp145:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	or_b32 r4, 0x50, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r4, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_17
LBB2_34:                                ; %if.then888.6
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r2, 0xbfb8aa3b, r109
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r109, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp147:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r6, 0xbfb8aa3b, r108
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp149:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r4, r109, r4
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r4, r4, r113
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r108, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp151:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r7, 0xbfb8aa3b, r107
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp153:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r6, r108, r6
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r107, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp155:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r8, 0xbfb8aa3b, r106
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp157:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r7, r107, r7
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r106, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp159:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
	div_scale_f32 r5, r2, r2, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r2, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r2, r3, r2, s0
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r2, r106, r2
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r2, r2, r110
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r3, r7, r111
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r5, r6, r112
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp161:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp163:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp164:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	or_b32 r4, 0x60, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r8, r4, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_18
	bra LBB2_19
LBB2_35:                                ; %if.then888.8
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r97
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r97, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp166:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r96
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp168:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r97, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r93
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r96, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp170:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r95
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp172:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r96, r5
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r95, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp174:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r94
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp176:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r95, r6
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r94, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp178:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r94, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r90
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r91
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r4, r5, r92
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp182:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp183:
	.loc	2 279 165 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:165
	snop 0
	add_u32 r3, 0x8000, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r3, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_21
LBB2_36:                                ; %if.then888.9
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r89
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r89, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp185:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r88
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp187:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r89, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r85
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r88, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp189:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r87
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp191:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r88, r5
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r87, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp193:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r86
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp195:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r87, r6
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r86, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp197:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r86, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r82
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r83
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r4, r5, r84
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp199:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp201:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp202:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	add_u32 r3, 0x8010, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r3, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_22
LBB2_37:                                ; %if.then888.10
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r81
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r81, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp204:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r80
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp206:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r81, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r77
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r80, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp208:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r79
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp210:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r80, r5
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r79, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp212:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r78
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp214:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r79, r6
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r78, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp216:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r78, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r74
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r75
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r4, r5, r76
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp218:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp220:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp221:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	add_u32 r3, 0x8020, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r3, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_23
LBB2_38:                                ; %if.then888.11
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r73
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r73, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp223:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r72
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp225:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r73, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r69
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r72, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp227:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r71
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp229:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r72, r5
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r71, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp231:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r70
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp233:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r71, r6
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r70, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp235:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r70, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r66
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r67
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r4, r5, r68
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp237:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp239:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp240:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	add_u32 r3, 0x8030, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r3, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_24
LBB2_39:                                ; %if.then888.12
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r65
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r65, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp242:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r64
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp244:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r65, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r61
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r64, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp246:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r63
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp248:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r64, r5
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r63, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp250:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r62
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp252:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r63, r6
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r62, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp254:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r62, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r58
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r59
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r4, r5, r60
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp256:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp258:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp259:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	add_u32 r3, 0x8040, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r3, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_25
LBB2_40:                                ; %if.then888.13
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r57
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r57, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp261:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r56
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp263:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r57, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r53
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r56, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp265:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r55
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp267:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r56, r5
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r55, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp269:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r54
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp271:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r55, r6
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r54, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp273:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r54, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r50
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r51
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r4, r5, r52
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp275:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp277:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp278:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	add_u32 r3, 0x8050, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r3, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_26
LBB2_41:                                ; %if.then888.14
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r49
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r49, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp280:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r48
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp282:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r49, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r45
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r48, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp284:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r47
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp286:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r48, r5
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r47, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp288:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r46
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp290:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r47, r6
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r46, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp292:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r46, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r42
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r43
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
	mul_f32 r4, r5, r44
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp294:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp296:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp297:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	add_u32 r3, 0x8060, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r3, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 268 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:268:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_27
LBB2_42:                                ; %if.then888.15
	.loc	2 250 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:250:27
	mul_f32 r1, 0xbfb8aa3b, r41
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r41, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp299:
	.loc	2 258 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:258:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
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
	.loc	2 249 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:249:27
	mul_f32 r5, 0xbfb8aa3b, r40
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp301:
	.loc	2 262 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:262:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 266 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:266:20
	mul_f32 r3, r41, r3
	.loc	2 276 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:276:24
	mul_f32 r3, r3, r37
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r40, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp303:
	.loc	2 257 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:257:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
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
	.loc	2 248 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:248:27
	mul_f32 r6, 0xbfb8aa3b, r39
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp305:
	.loc	2 261 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:261:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 265 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:265:20
	mul_f32 r5, r40, r5
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r39, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp307:
	.loc	2 256 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:256:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
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
	.loc	2 247 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:247:27
	mul_f32 r7, 0xbfb8aa3b, r38
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp309:
	.loc	2 260 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:260:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 264 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:264:20
	mul_f32 r6, r39, r6
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r38, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp311:
	.loc	2 255 26                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:255:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 259 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:259:24
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
	.loc	2 263 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:263:20
	mul_f32 r1, r38, r1
	.loc	2 273 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:273:24
	mul_f32 r1, r1, r34
	.loc	2 274 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:274:24
	mul_f32 r2, r6, r35
	.loc	2 275 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:275:24
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
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp316:
	.loc	2 279 186 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:186
	snop 0
	add_u32 r0, 0x8070, r0
	.loc	2 279 27 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:27
	mad_i32 r6, r0, 2, s6
	.loc	2 279 229                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:279:229
	shl_b32 r0, 16, r3
	add_u16 r2_hi, 0, 0
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 282 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:282:1
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
; codeLenInByte = 23496
; NumMTRegsForWarps/PEU: 230
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 284 0                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:284:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp318:
	.loc	2 296 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:296:25
	scmp_gt_u32 s5, 31
	.loc	2 296 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:296:7
	snop 0
	bra_smskz LBB3_2
; %bb.1:                                ; %if.else
	.loc	2 301 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:301:48
	sand_b32 s0, 1, s5
	cmp_eq_u32 s2, s0, 1
	.loc	2 300 49                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:300:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 300 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:300:75
	sand_b32 s1, s4, 1
	.loc	2 300 54                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:300:54
	sor_b32 s16, s0, s1
	.loc	2 301 75 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:301:75
	sshr_b32 s0, 1, s4
	.loc	2 301 48 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:301:48
	csel_b32 r1, 14, 0, s2
	.loc	2 301 54                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:301:54
	add_u32 r1, r1, s0
	.loc	2 296 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:296:7
	bra_xmskz LBB3_3
	bra LBB3_4
LBB3_2:
                                        ; implicit-def: $mtreg_32bit_1
                                        ; implicit-def: $streg_32bit_16
LBB3_3:                                 ; %if.then
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:0
	mov_b32 r1, s4
	smov_b32 s16, s5
LBB3_4:                                 ; %if.end
	.loc	2 305 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:305:19
	smov_b32 s17, 0
	sshl_b64 s0, 2, s16
	and_b32 r0, 0x3ff, r0
	arrive slcnt(0)
	sadd_co_u32 s0, s42, s0
	shl_b32 r2, 10, r0
	saddc_co_u32 s1, s43, s1
	and_b32 r2, 0xf0000, r2
	mov_b32 r3, s16
	ldu_b32 s0, s0, 0x0
	shl_add_u32 r3, 18, r3, r2
	shl_b32 r4, 11, r0
	smov_b32 s1, 0x7800
	.loc	2 321 150                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:150
	and_or_b32 r36, r4, s1, r3
	shr_b32 r2, 1, r0
	and_b32 r30, r2, 24
	or_b32 r28, 0x8000, r36
	.loc	2 321 209 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:209
	or_b32 r4, r28, r30
	or_b32 r3, r36, r30
	.loc	2 321 67                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:67
	mad_i32 r4, r4, 2, s14
	mad_i32 r6, r3, 2, s14
	shl_b32 r31, 19, r1
	.loc	2 321 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:45
	ldg_b128 r152, r4, 0x0
	.loc	2 321 209                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:209
	or_b32 r4, r3, 32
	or_b32 r3, 0x8020, r3
	.loc	2 321 67                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:67
	mad_i32 r8, r3, 2, s14
	shl_b32 r3, 8, r0
	and_b32 r32, 0x3f800, r3
	shl_b32 r3, 3, r0
	.loc	2 321 45                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:45
	ldg_b128 r148, r6, 0x0
	.loc	2 321 67                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:67
	mad_i32 r6, r4, 2, s14
	and_b32 r4, r3, 56
	arrive slcnt(0)
	smul_i32 s7, 0xe00000, s0
	or3_b32 r4, r4, r32, r31
	add_u32 r4, r4, s7
	.loc	2 325 356 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:356
	mad_i32 r4, r4, 2, s40
	add_co_u32 r10, 0x20000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 325 339 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:339
	ldg_b128 r18, r4, 0x0
	.loc	2 321 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:45
	ldg_b128 r164, r6, 0x0
	.loc	2 325 339                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:339
	ldg_b128 r22, r10, 0x0
	.loc	2 325 356 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:356
	add_co_u32 r10, 0x40000, r4
	addc_co_u32 r11, r5, 0
	add_co_u32 r4, 0x60000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 325 339                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:339
	ldg_b128 r38, r10, 0x0
	.loc	2 321 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:321:45
	ldg_b128 r168, r8, 0x0
	.loc	2 325 339                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:339
	ldg_b128 r42, r4, 0x0
	.loc	2 305 19                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:305:19
	sashr_i32 s1, 31, s0
	.loc	2 306 20                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:306:20
	sshl_b64 s4, 2, s0
	sadd_co_u32 s0, s8, s4
	saddc_co_u32 s1, s9, s5
	ldu_b32 s2, s0, 0x0
	.loc	2 307 19                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:307:19
	sadd_co_u32 s0, s44, s4
	saddc_co_u32 s1, s45, s5
	.loc	2 308 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:308:22
	sadd_co_u32 s4, s46, s4
	saddc_co_u32 s5, s47, s5
	and_b32 r6, r3, 16
	and_b32 r16, r3, 32
	.loc	2 307 19                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:307:19
	ldu_b32 s1, s0, 0x0
	.loc	2 308 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:308:22
	ldu_b32 s0, s4, 0x0
	mul_u24 r4, r0, 9
	add_u32 r7, r16, r0
	add_u32 r6, r6, r0
	and_b32 r5, 0x1fc0, r3
	and_b32 r4, r4, 8
	and_b32 r7, r7, 32
	and_b32 r6, r6, 16
	.loc	2 325 47                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:47
	add_u32 r8, 0x800, r5
	add_u32 r9, 0x1000, r5
	add_u32 r10, 0x1800, r5
	.loc	2 325 83 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:83
	or_b32 r11, r7, r4
	.loc	2 325 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:27
	or_b32 r4, r6, r4
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 325 253                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:253
	or3_b32 r12, r11, r5, r6
	.loc	2 325 27                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:27
	or3_b32 r13, r11, r8, r6
	or3_b32 r6, r11, r9, r6
	mov_b32 r11, s3
	or3_b32 r4, r4, r10, r7
	shl_add_u32 r12, 1, r12, r11
	shl_add_u32 r13, 1, r13, r11
	shl_add_u32 r6, 1, r6, r11
	shl_add_u32 r4, 1, r4, r11
	.loc	2 325 339                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:325:339
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r18
	arrive gvmcnt(3)
	sts_b128 r13, 0x0, r22
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r38
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r42
.Ltmp319:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	xor_b32 r4, r3, r0
	and_b32 r6, r4, 32
	ashr_i32 r37, 31, r36
	sadd_co_u32 s8, 0x80000, s40
	add_u32 r6, r6, r0
.Ltmp320:
	.loc	2 328 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:328:3
	or_b32 r176, r30, r36
	mov_b32 r177, r37
	and_b32 r34, r0, 48
	shl_b64 r36, 1, r36
	or_b32 r35, r34, r36
	saddc_co_u32 s9, s41, 0
	and_b32 r7, r6, 32
	and_b32 r6, r4, 16
	sadd_co_u32 s3, 0x80, s14
	add_u32 r6, r6, r0
	and_b32 r33, r4, 56
	shr_b32 r4, 5, r0
	add_co_u32 r35, r35, s14
	mov_b32 r36, s15
	saddc_co_u32 s4, s15, 0
	addc_co_u32 r37, r37, r36
	and_b32 r11, r6, 16
	and_b32 r6, r0, 8
	add_shl_u32 r4, r4, r2, 4
	ashr_i32 r29, 31, r28
	sadd_co_u32 s18, 0x80080, s40
	add_co_u32 r178, 0x88, r35
	xadd_u32 r3, r6, r3, r0
	and_b32 r13, r4, 16
	shr_b32 r4, 4, r0
	or_b32 r182, r30, r28
	mov_b32 r181, r29
	shl_b64 r28, 1, r28
	and_b32 r12, r3, 8
	saddc_co_u32 s19, s41, 0
	shl_b32 r3, 6, r0
	add_shl_u32 r14, r4, r0, 3
	addc_co_u32 r179, r37, 0
	or_b32 r28, r34, r28
	and_b32 r15, 0x3c0, r3
	sadd_co_u32 s5, 0x100, s14
	add_co_u32 r28, r28, s14
	and_or_b32 r23, r14, 8, r13
	or_b32 r6, r7, r12
	or3_b32 r4, r6, r5, r11
	or3_b32 r5, r6, r8, r11
	saddc_co_u32 s6, s15, 0
	addc_co_u32 r29, r29, r36
	or_b32 r8, r11, r12
	or_b32 r17, r23, r15
	or_b32 r18, 0x400, r15
	or_b32 r19, r23, r16
	or_b32 r20, 0x800, r15
	or_b32 r21, 0xc00, r15
	or_b32 r22, 0x1000, r15
	or_b32 r24, 0x1400, r15
	or_b32 r25, 0x1800, r15
	or_b32 r26, 0x1c00, r15
	xor_b32 r27, r16, 32
	add_u32 r31, s7, r31
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:0
	shl_b64 r128, 0, 0
	sadd_co_u32 s20, 0x100, s40
	or3_b32 r6, r6, r9, r11
	or3_b32 r7, r8, r10, r7
	or_b32 r8, r17, r16
	or_b32 r16, r17, r27
	or_b32 r9, r19, r18
	or_b32 r10, r19, r20
	or_b32 r11, r19, r21
	or_b32 r12, r19, r22
	or_b32 r13, r19, r24
	or_b32 r14, r19, r25
	or_b32 r15, r19, r26
	or3_b32 r19, r23, r21, r27
	or3_b32 r17, r23, r18, r27
	or3_b32 r18, r23, r20, r27
	or3_b32 r20, r23, r22, r27
	or3_b32 r21, r23, r24, r27
	or3_b32 r22, r23, r25, r27
	or3_b32 r23, r23, r26, r27
	.loc	2 328 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:328:3
	add_co_u32 r184, 0x88, r28
	shl_add_u32 r4, 1, r4, 0
	or3_b32 r180, r31, r32, r33
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:0
	shl_b64 r130, 0, 0
	shl_b64 r132, 0, r128
	shl_b64 r136, 0, r128
	shl_b64 r140, 0, r128
	shl_b64 r144, 0, r128
	shl_b64 r156, 0, r128
	shl_b64 r160, 0, r128
	shl_b64 r172, 0, r128
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
	shr_b32 r3, 2, r0
	saddc_co_u32 s21, s41, 0
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
	shl_add_u32 r23, 1, r23, 0
	add_u32 r24, 0x4000, r4
	add_u32 r25, 0x5000, r4
	add_u32 r26, 0x6000, r4
	add_u32 r27, 0x7000, r4
	.loc	2 328 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:328:3
	addc_co_u32 r185, r29, 0
	smov_b64 s14, 0
	shl_b64 r134, 0, r130
	shl_b64 r138, 0, r130
	shl_b64 r142, 0, r130
	shl_b64 r146, 0, r130
	shl_b64 r158, 0, r130
	shl_b64 r162, 0, r130
	shl_b64 r174, 0, r130
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
	bra LBB3_6
	.p2align	5
LBB3_5:                                 ; %for.inc965
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 328 31                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:328:31
	sadd_co_u32 s14, 0x80, s14
	add_co_u32 r178, 0x100, r178
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r179, r179, 0
	add_co_u32 r184, 0x100, r184
	scmp_eq_u64 0x800, s14
	addc_co_u32 r185, r185, 0
	.loc	2 328 3                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:328:3
	bra_smsks LBB3_12
LBB3_6:                                 ; %for.cond147.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 330 487 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:330:487
	add_u32 r28, r180, s14
	mad_i32 r30, r28, 2, s8
.Ltmp321:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp322:
	.loc	2 330 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:330:487
	add_u32 r29, 0x10000, r28
.Ltmp323:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s7, md
.Ltmp324:
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	add_i32 r190, 0x4000, r9
.Ltmp325:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp326:
	.loc	2 330 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:330:487
	mad_i32 r30, r29, 2, s8
.Ltmp327:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp328:
	.loc	2 330 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:330:487
	add_u32 r30, 0x20000, r28
	mad_i32 r186, r30, 2, s8
	add_u32 r31, 0x30000, r28
.Ltmp329:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp330:
	.loc	2 330 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:330:487
	mad_i32 r186, r31, 2, s8
	.loc	2 334 71                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:71
	add_co_u32 r183, r176, s14
.Ltmp331:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp332:
	.loc	2 334 71                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:71
	mov_b32 r186, s15
	addc_co_u32 r187, r177, r186
	add_co_u32 r188, r182, s14
	addc_co_u32 r189, r181, r186
	.loc	2 334 233 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:233
	or_b32 r188, r188, 32
	.loc	2 334 71                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:71
	shl_b64 r204, 1, r188
	.loc	2 338 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	add_i32 r189, 0x4000, r8
	.loc	2 334 233                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:233
	or_b32 r186, r183, 32
	.loc	2 334 71 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:71
	shl_b64 r202, 1, r186
	.loc	2 338 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r192, r189, 0x0
	lds_b128 r196, r190, 0x0
	.loc	2 334 71                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:71
	add_co_u32 r186, s3, r202
	mov_b32 r183, s4
	addc_co_u32 r187, r183, r203
	add_co_u32 r188, s3, r204
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r172, r192, r148, r172
	.loc	2 334 71                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:71
	addc_co_u32 r189, r183, r205
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	add_i32 r183, 0x4000, r10
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	mma_16x16x16f16 r124, r192, r152, r124
	mma_16x16x16f16 r172, r194, r150, r172
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r11
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	mma_16x16x16f16 r124, r194, r154, r124
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r196, r148, r160
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	mma_16x16x16f16 r120, r196, r152, r120
	mma_16x16x16f16 r160, r198, r150, r160
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r13
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	mma_16x16x16f16 r120, r198, r154, r120
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r148, r156
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	mma_16x16x16f16 r116, r206, r152, r116
	mma_16x16x16f16 r156, r208, r150, r156
	mma_16x16x16f16 r116, r208, r154, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r148, r144
	mma_16x16x16f16 r112, r190, r152, r112
	mma_16x16x16f16 r144, r192, r150, r144
	mma_16x16x16f16 r112, r192, r154, r112
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r15
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r148, r140
	mma_16x16x16f16 r108, r194, r152, r108
	mma_16x16x16f16 r140, r196, r150, r140
	mma_16x16x16f16 r108, r196, r154, r108
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r148, r136
	mma_16x16x16f16 r104, r198, r152, r104
	mma_16x16x16f16 r136, r200, r150, r136
	mma_16x16x16f16 r104, r200, r154, r104
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r148, r132
	mma_16x16x16f16 r100, r190, r152, r100
	mma_16x16x16f16 r132, r192, r150, r132
	mma_16x16x16f16 r100, r192, r154, r100
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r148, r128
	mma_16x16x16f16 r96, r194, r152, r96
	mma_16x16x16f16 r128, r196, r150, r128
	mma_16x16x16f16 r96, r196, r154, r96
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r19
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r198, r164, r172
	mma_16x16x16f16 r124, r198, r168, r124
	mma_16x16x16f16 r172, r200, r166, r172
	mma_16x16x16f16 r124, r200, r170, r124
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r190, r164, r160
	mma_16x16x16f16 r120, r190, r168, r120
	mma_16x16x16f16 r160, r192, r166, r160
	mma_16x16x16f16 r120, r192, r170, r120
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r21
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r164, r156
	mma_16x16x16f16 r116, r194, r168, r116
	mma_16x16x16f16 r156, r196, r166, r156
	mma_16x16x16f16 r116, r196, r170, r116
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r164, r144
	mma_16x16x16f16 r112, r198, r168, r112
	mma_16x16x16f16 r144, r200, r166, r144
	mma_16x16x16f16 r112, r200, r170, r112
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r23
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r164, r140
	mma_16x16x16f16 r108, r190, r168, r108
	mma_16x16x16f16 r140, r192, r166, r140
	mma_16x16x16f16 r108, r192, r170, r108
	.loc	2 338 41                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:338:41
	lds_b128 r190, r183, 0x0
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r164, r136
	mma_16x16x16f16 r104, r194, r168, r104
	mma_16x16x16f16 r136, r196, r166, r136
	mma_16x16x16f16 r104, r196, r170, r104
	.loc	2 334 49                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:49
	ldg_b128 r194, r178, -0x8
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r198, r164, r132
	mma_16x16x16f16 r100, r198, r168, r100
	mma_16x16x16f16 r132, r200, r166, r132
	mma_16x16x16f16 r100, r200, r170, r100
	.loc	2 334 49                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:49
	ldg_b128 r198, r184, -0x8
	.loc	2 344 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:344:58
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r190, r164, r128
	mma_16x16x16f16 r96, r190, r168, r96
	mma_16x16x16f16 r128, r192, r166, r128
	mma_16x16x16f16 r96, r192, r170, r96
	.loc	2 334 49                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:334:49
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
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r222, r8, 0x0
	lds_b128 r226, r9, 0x0
	lds_b128 r230, r10, 0x0
	.loc	2 357 488                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:357:488
	add_u32 r183, 0x10040, r28
	mad_i32 r210, r183, 2, s40
	add_u32 r183, 0x20040, r28
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r222, r148, r92
	.loc	2 357 488                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:357:488
	mad_i32 r214, r183, 2, s40
	add_u32 r183, 0x30040, r28
	mad_i32 r206, r28, 2, s40
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	mma_16x16x16f16 r60, r222, r152, r60
	.loc	2 357 488                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:357:488
	mad_i32 r218, r183, 2, s40
.Ltmp336:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r206, r206, 0x80
	ldg_b128 r210, r210, 0x0
.Ltmp337:
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	mma_16x16x16f16 r92, r224, r150, r92
.Ltmp338:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r214, r214, 0x0
	ldg_b128 r218, r218, 0x0
.Ltmp339:
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	mma_16x16x16f16 r60, r224, r154, r60
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r222, r11, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r226, r148, r88
	mma_16x16x16f16 r56, r226, r152, r56
	mma_16x16x16f16 r88, r228, r150, r88
	mma_16x16x16f16 r56, r228, r154, r56
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r226, r12, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r230, r148, r84
	mma_16x16x16f16 r52, r230, r152, r52
	mma_16x16x16f16 r84, r232, r150, r84
	mma_16x16x16f16 r52, r232, r154, r52
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r230, r13, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r222, r148, r80
	mma_16x16x16f16 r48, r222, r152, r48
	mma_16x16x16f16 r80, r224, r150, r80
	mma_16x16x16f16 r48, r224, r154, r48
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r222, r14, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r226, r148, r76
	mma_16x16x16f16 r44, r226, r152, r44
	mma_16x16x16f16 r76, r228, r150, r76
	mma_16x16x16f16 r44, r228, r154, r44
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r226, r15, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r230, r148, r72
	mma_16x16x16f16 r40, r230, r152, r40
	mma_16x16x16f16 r72, r232, r150, r72
	mma_16x16x16f16 r40, r232, r154, r40
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r230, r16, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r222, r148, r68
	mma_16x16x16f16 r36, r222, r152, r36
	mma_16x16x16f16 r68, r224, r150, r68
	mma_16x16x16f16 r36, r224, r154, r36
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r222, r17, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r226, r148, r64
	mma_16x16x16f16 r32, r226, r152, r32
	mma_16x16x16f16 r64, r228, r150, r64
	mma_16x16x16f16 r32, r228, r154, r32
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r226, r18, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r230, r164, r92
	mma_16x16x16f16 r60, r230, r168, r60
	mma_16x16x16f16 r92, r232, r166, r92
	mma_16x16x16f16 r60, r232, r170, r60
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r230, r19, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r222, r164, r88
	mma_16x16x16f16 r56, r222, r168, r56
	mma_16x16x16f16 r88, r224, r166, r88
	mma_16x16x16f16 r56, r224, r170, r56
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r222, r20, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r226, r164, r84
	mma_16x16x16f16 r52, r226, r168, r52
	mma_16x16x16f16 r84, r228, r166, r84
	mma_16x16x16f16 r52, r228, r170, r52
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r226, r21, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r230, r164, r80
	mma_16x16x16f16 r48, r230, r168, r48
	mma_16x16x16f16 r80, r232, r166, r80
	mma_16x16x16f16 r48, r232, r170, r48
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r230, r22, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r222, r164, r76
	mma_16x16x16f16 r44, r222, r168, r44
	mma_16x16x16f16 r76, r224, r166, r76
	mma_16x16x16f16 r44, r224, r170, r44
	.loc	2 361 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:361:43
	lds_b128 r222, r23, 0x0
	.loc	2 367 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:367:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r226, r164, r72
	mma_16x16x16f16 r40, r226, r168, r40
	mma_16x16x16f16 r72, r228, r166, r72
	mma_16x16x16f16 r40, r228, r170, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r230, r164, r68
	mma_16x16x16f16 r36, r230, r168, r36
	mma_16x16x16f16 r68, r232, r166, r68
	mma_16x16x16f16 r36, r232, r170, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r222, r164, r64
	mma_16x16x16f16 r32, r222, r168, r32
	mma_16x16x16f16 r64, r224, r166, r64
	mma_16x16x16f16 r32, r224, r170, r32
.Ltmp340:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:21:41
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r210
	arrive gvmcnt(1)
	sts_b128 r26, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r27, 0x0, r218
.Ltmp341:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp342:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp343:
	.loc	2 377 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:377:487
	mad_i32 r206, r28, 2, s18
	.loc	2 379 16                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:379:16
	mov_b32 r208, 0x780
	mov_b32 r209, 0
	cmp_lg_u64 s22, s14, r208
.Ltmp344:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp345:
	.loc	2 377 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:377:487
	mad_i32 r206, r29, 2, s18
.Ltmp346:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp347:
	.loc	2 377 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:377:487
	mad_i32 r206, r30, 2, s18
.Ltmp348:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp349:
	.loc	2 377 487                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:377:487
	mad_i32 r206, r31, 2, s18
.Ltmp350:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp351:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp352:
	.loc	2 379 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:379:9
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmskz LBB3_8
; %bb.7:                                ; %for.cond630.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 382 71                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:382:71
	add_co_u32 r166, s5, r202
	mov_b32 r164, s6
	addc_co_u32 r167, r164, r203
	add_co_u32 r168, s5, r204
	addc_co_u32 r169, r164, r205
	.loc	2 382 49 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:382:49
	ldg_b128 r148, r178, 0x78
	ldg_b128 r152, r184, 0x78
	ldg_b128 r164, r166, 0x0
	ldg_b128 r168, r168, 0x0
LBB3_8:                                 ; %if.end666
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 387 43 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	add_i32 r183, 0x4000, r8
	add_i32 r202, 0x4000, r9
	snop 0
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r10
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r11
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r204, r194, r172
	mma_16x16x16f16 r124, r204, r198, r124
	mma_16x16x16f16 r172, r206, r196, r172
	mma_16x16x16f16 r124, r206, r200, r124
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r204, r202, 0x0
	add_i32 r202, 0x4000, r13
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r208, r194, r160
	mma_16x16x16f16 r120, r208, r198, r120
	mma_16x16x16f16 r160, r210, r196, r160
	mma_16x16x16f16 r120, r210, r200, r120
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r212, r194, r156
	mma_16x16x16f16 r116, r212, r198, r116
	mma_16x16x16f16 r156, r214, r196, r156
	mma_16x16x16f16 r116, r214, r200, r116
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r15
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r194, r144
	mma_16x16x16f16 r112, r204, r198, r112
	mma_16x16x16f16 r144, r206, r196, r144
	mma_16x16x16f16 r112, r206, r200, r112
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r194, r140
	mma_16x16x16f16 r108, r208, r198, r108
	mma_16x16x16f16 r140, r210, r196, r140
	mma_16x16x16f16 r108, r210, r200, r108
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r19
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r194, r136
	mma_16x16x16f16 r104, r212, r198, r104
	mma_16x16x16f16 r136, r214, r196, r136
	mma_16x16x16f16 r104, r214, r200, r104
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r194, r132
	mma_16x16x16f16 r100, r204, r198, r100
	mma_16x16x16f16 r132, r206, r196, r132
	mma_16x16x16f16 r100, r206, r200, r100
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r208, r194, r128
	mma_16x16x16f16 r96, r208, r198, r96
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r96, r210, r200, r96
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r190, r172
	mma_16x16x16f16 r124, r212, r186, r124
	mma_16x16x16f16 r172, r214, r192, r172
	mma_16x16x16f16 r124, r214, r188, r124
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r21
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r204, r190, r160
	mma_16x16x16f16 r120, r204, r186, r120
	mma_16x16x16f16 r160, r206, r192, r160
	mma_16x16x16f16 r120, r206, r188, r120
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r208, r190, r156
	mma_16x16x16f16 r116, r208, r186, r116
	mma_16x16x16f16 r156, r210, r192, r156
	mma_16x16x16f16 r116, r210, r188, r116
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r23
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r212, r190, r144
	mma_16x16x16f16 r112, r212, r186, r112
	mma_16x16x16f16 r144, r214, r192, r144
	mma_16x16x16f16 r112, r214, r188, r112
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r212, r183, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r190, r140
	mma_16x16x16f16 r108, r204, r186, r108
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:387:43
	lds_b128 r202, r202, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:393:58
	mma_16x16x16f16 r140, r206, r192, r140
	mma_16x16x16f16 r108, r206, r188, r108
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r208, r190, r136
	mma_16x16x16f16 r104, r208, r186, r104
	mma_16x16x16f16 r136, r210, r192, r136
	mma_16x16x16f16 r104, r210, r188, r104
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r212, r190, r132
	mma_16x16x16f16 r100, r212, r186, r100
	mma_16x16x16f16 r132, r214, r192, r132
	mma_16x16x16f16 r100, r214, r188, r100
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
	.loc	2 405 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:405:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond774.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp356:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r24
	mad_i32 r204, r29, 2, s20
	mad_i32 r28, r28, 2, s20
	smov_b32 s7, md
	mad_i32 r202, r31, 2, s20
	smov_b32 md, s17
	mad_i32 r30, r30, 2, s20
	ldg_b128 r0, r28, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r204, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r30, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r202, 0x0 bsm
	smov_b32 md, s7
.Ltmp357:
LBB3_10:                                ; %if.end857
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r28, r8, 0x0
	lds_b128 r202, r9, 0x0
	lds_b128 r206, r10, 0x0
	.loc	2 426 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:426:9
	sandn_b64 cmsk, xmsk, s22
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r28, r194, r92
	mma_16x16x16f16 r60, r28, r198, r60
	mma_16x16x16f16 r92, r30, r196, r92
	mma_16x16x16f16 r60, r30, r200, r60
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r28, r11, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r194, r88
	mma_16x16x16f16 r56, r202, r198, r56
	mma_16x16x16f16 r88, r204, r196, r88
	mma_16x16x16f16 r56, r204, r200, r56
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r202, r12, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r194, r84
	mma_16x16x16f16 r52, r206, r198, r52
	mma_16x16x16f16 r84, r208, r196, r84
	mma_16x16x16f16 r52, r208, r200, r52
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r206, r13, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r28, r194, r80
	mma_16x16x16f16 r48, r28, r198, r48
	mma_16x16x16f16 r80, r30, r196, r80
	mma_16x16x16f16 r48, r30, r200, r48
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r28, r14, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r194, r76
	mma_16x16x16f16 r44, r202, r198, r44
	mma_16x16x16f16 r76, r204, r196, r76
	mma_16x16x16f16 r44, r204, r200, r44
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r202, r15, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r194, r72
	mma_16x16x16f16 r40, r206, r198, r40
	mma_16x16x16f16 r72, r208, r196, r72
	mma_16x16x16f16 r40, r208, r200, r40
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r206, r16, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r28, r194, r68
	mma_16x16x16f16 r36, r28, r198, r36
	mma_16x16x16f16 r68, r30, r196, r68
	mma_16x16x16f16 r36, r30, r200, r36
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r28, r17, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r202, r194, r64
	mma_16x16x16f16 r32, r202, r198, r32
	mma_16x16x16f16 r64, r204, r196, r64
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r194, r18, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	mma_16x16x16f16 r32, r204, r200, r32
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r198, r19, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r206, r190, r92
	mma_16x16x16f16 r60, r206, r186, r60
	mma_16x16x16f16 r92, r208, r192, r92
	mma_16x16x16f16 r60, r208, r188, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r28, r190, r88
	mma_16x16x16f16 r56, r28, r186, r56
	mma_16x16x16f16 r88, r30, r192, r88
	mma_16x16x16f16 r56, r30, r188, r56
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r28, r20, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r52, r194, r186, r52
	mma_16x16x16f16 r84, r196, r192, r84
	mma_16x16x16f16 r52, r196, r188, r52
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r194, r21, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r48, r198, r186, r48
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r188, r48
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r198, r22, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r28, r190, r76
	mma_16x16x16f16 r44, r28, r186, r44
	mma_16x16x16f16 r76, r30, r192, r76
	mma_16x16x16f16 r44, r30, r188, r44
	.loc	2 412 43                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:412:43
	lds_b128 r28, r23, 0x0
	.loc	2 418 58                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:418:58
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
	mma_16x16x16f16 r64, r28, r190, r64
	mma_16x16x16f16 r32, r28, r186, r32
	mma_16x16x16f16 r64, r30, r192, r64
	mma_16x16x16f16 r32, r30, r188, r32
	.loc	2 426 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:426:9
	bra_cmsks LBB3_5
; %bb.11:                               ; %for.body957.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
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
	bra LBB3_5
.Ltmp360:
LBB3_12:                                ; %for.cond968.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	and_b32 r5, r0, 15
	smov_b32 s3, 0x1e0
	and_or_b32 r14, r2, s3, r5
	sshl_b32 s3, 7, s16
	ssub_co_i32 s2, s2, s3
	sadd_co_i32 s4, s2, s0
	sadd_co_i32 s2, s1, s3
	add_u32 r6, s2, r14
	sashr_i32 s2, 31, s1
	mov_b32 r11, s2
	mov_b32 r10, s1
	mov_b32 r8, 0x80
	mad_u32 r8, s16, r8, r10
	add_co_u32 r8, r8, r14
	.loc	2 435 92 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:435:92
	cmp_ge_i32 s2, r14, s4
	cmp_lt_i32 s6, r14, s4
	sashr_i32 s1, 31, s0
	mov_b32 r2, s0
	addc_co_u32 r9, r9, 0
	mov_b32 r4, s1
	sub_co_u32 r8, r8, r2
	subb_co_u32 r9, r9, r4
	mov_b32 r7, 0
	sashr_i32 s5, 31, s4
	mov_b32 r4, 0
	.loc	2 435 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:435:9
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then985
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sub_u32 r2, r6, s0
	.loc	2 437 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:437:15
	cmp_ge_i32 s14, r6, s0
	cmp_gt_i32 s18, 0x2380, r2
	mov_b32 r4, 0
	.loc	2 437 148 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:437:148
	snop 2
	sand_b64 s18, s14, s18
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1012
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:148
	shl_b64 r10, 2, r8
	add_co_u32 r10, s12, r10
	mov_b32 r2, s13
	addc_co_u32 r11, r2, r11
	.loc	2 438 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:438:19
	snop 1
	ldg_b32 r4, r10, 0x0
LBB3_15:                                ; %Flow523
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_16:                                ; %for.inc1036
	sor_b64 xmsk, xmsk, s8
	.loc	2 435 63 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:435:63
	or_b32 r10, r14, 16
	mov_b32 r11, r7
	.loc	2 435 92 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:435:92
	cmp_lt_i64 s14, r10, s4
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 435 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:435:9
	snop 2
	and_xmsk s8, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then985.1
	.loc	2 437 102 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:437:102
	add_u32 r2, r6, 16
	.loc	2 437 15 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:437:15
	cmp_ge_i32 s14, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x2380, r2
	mov_b32 r2, 0
	.loc	2 437 148                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:437:148
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1012.1
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:148
	shl_b64 r6, 2, r8
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 438 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:438:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow522
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_20:                                ; %for.inc1036.1
	sor_b64 xmsk, xmsk, s8
	shr_b32 r0, 6, r0
	mul_u24 r0, 0x38000, r0
	smov_b32 s1, 0x1c00
	mad_u24 r0, r5, s1, r0
	smul_i32 s0, 0xe0000, s16
	shl_b32 r1, 8, r1
	and_or_b32 r0, r3, 12, r0
	add_u32 r1, r1, s0
	add_u32 r0, r1, r0
	shl_b64 r8, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1056
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(0)
	mul_f32 r1, r172, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r173, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r174, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r6, r175, r4
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp362:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp365:
LBB3_22:                                ; %if.end1111
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 22 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r6, r0, 2, s10
	.loc	2 463 226 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1056.1
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(1)
	mul_f32 r1, r160, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r161, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r162, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r10, r163, r4
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp367:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp368:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp370:
LBB3_24:                                ; %if.end1111.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 16
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r18, r1, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r18, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1056.2
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(2)
	mul_f32 r1, r156, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r157, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r158, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r10, r159, r4
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp372:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp375:
LBB3_26:                                ; %if.end1111.2
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 32
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r10, r1, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1056.3
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(3)
	mul_f32 r1, r144, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r145, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r146, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r12, r147, r4
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp377:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp378:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp380:
LBB3_28:                                ; %if.end1111.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 48
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r24, r1, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1056.4
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(4)
	mul_f32 r1, r140, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r141, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r142, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r12, r143, r4
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp382:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp383:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp385:
LBB3_30:                                ; %if.end1111.4
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 64
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r12, r1, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1056.5
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(5)
	mul_f32 r1, r136, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r137, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r138, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r15, r139, r4
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp387:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp390:
LBB3_32:                                ; %if.end1111.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, 0x50, r0
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 0
	stg_b64 r28, 0x0, r8 devc
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1056.6
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(6)
	mul_f32 r1, r132, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r133, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r134, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r8, r135, r4
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp392:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp395:
LBB3_34:                                ; %if.end1111.6
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, 0x60, r0
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r8, r1, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r8, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1056.7
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(7)
	mul_f32 r1, r128, r4
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r129, r4
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r130, r4
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r15, r131, r4
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp397:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp398:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp400:
LBB3_36:                                ; %if.end1111.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, 0x70, r0
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r26, r1, 2, s10
	.loc	2 447 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:66
	or_b32 r1, r14, 16
	.loc	2 447 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:95
	cmp_ge_i32 s0, r1, s4
	cmp_lt_i32 s4, r1, s4
	.loc	2 463 226 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	stg_b64 r26, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 447 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	snop 1
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1056.8
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(8)
	mul_f32 r1, r124, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r125, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r126, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r14, r127, r2
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp402:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp405:
LBB3_38:                                ; %if.end1111.8
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 162 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:162
	add_u32 r0, 0x1c000, r0
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r14, r0, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1056.9
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(9)
	mul_f32 r1, r120, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r121, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r122, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r20, r123, r2
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp407:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp410:
LBB3_40:                                ; %if.end1111.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 16
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1056.10
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(10)
	mul_f32 r1, r116, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r117, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r118, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r16, r119, r2
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp412:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp413:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp415:
LBB3_42:                                ; %if.end1111.10
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 32
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r16, r1, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r16, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1056.11
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(11)
	mul_f32 r1, r112, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r113, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r114, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r22, r115, r2
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp417:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp420:
LBB3_44:                                ; %if.end1111.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 48
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r112, r1, 2, s10
	shl_b64 r22, 0, 0
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 0
	stg_b64 r112, 0x0, r20 devc
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1056.12
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(12)
	mul_f32 r1, r108, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r109, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r110, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r20, r111, r2
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp422:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp425:
LBB3_46:                                ; %if.end1111.12
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, r0, 64
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r20, r1, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r20, 0x0, r22 devc
	shl_b64 r22, 0, 0
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1056.13
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(13)
	mul_f32 r1, r104, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r105, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r106, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r104, r107, r2
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp427:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r104
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp430:
LBB3_48:                                ; %if.end1111.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, 0x50, r0
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r104, r1, 2, s10
	shl_b64 r106, 0, 0
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 0
	stg_b64 r104, 0x0, r22 devc
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1056.14
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(14)
	mul_f32 r1, r100, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r101, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r102, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r22, r103, r2
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp432:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp435:
LBB3_50:                                ; %if.end1111.14
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r1, 0x60, r0
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r100, 0, 0
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 0
	stg_b64 r22, 0x0, r106 devc
	.loc	2 447 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:447:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1056.15
	.loc	2 452 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:452:22
	arrive gvmcnt(15)
	mul_f32 r1, r96, r2
	.loc	2 453 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:453:22
	mul_f32 r3, r97, r2
	.loc	2 454 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:454:22
	mul_f32 r5, r98, r2
	.loc	2 455 22                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:455:22
	mul_f32 r96, r99, r2
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp437:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp438:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp440:
LBB3_52:                                ; %if.end1111.15
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 463 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:183
	or_b32 r0, 0x70, r0
	.loc	2 463 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:22
	mad_i32 r0, r0, 2, s10
	.loc	2 463 226                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:463:226
	snop 1
	stg_b64 r0, 0x0, r100 devc
	.loc	2 467 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1219.1.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	shl_b64 r96, 0, 0
	snop 1
	stg_b64 r6, 0x100, r96 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow521
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s4, s4
	shl_b64 r96, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1158
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	arrive gvmcnt(16)
	mul_f32 r3, r92, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r93, r4
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r92, r94, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r93, r95, r4
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp442:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp445:
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r6, 0x100, r94 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r88, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r89, r4
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r6, r90, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r7, r91, r4
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp447:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp448:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp450:
LBB3_56:                                ; %if.end1219.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r18, 0x100, r96 devc
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1219.3.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r10, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_58:                                ; %Flow520
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1158.2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	arrive gvmcnt(17)
	mul_f32 r6, r86, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r7, r87, r4
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r84, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r85, r4
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp452:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp453:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp455:
	.loc	2 474 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	stg_b64 r10, 0x100, r18 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r80, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r81, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r10, r83, r4
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp457:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp458:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp460:
LBB3_60:                                ; %if.end1219.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1219.5.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r12, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_62:                                ; %Flow519
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1158.4
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	arrive gvmcnt(18)
	mul_f32 r6, r78, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r7, r79, r4
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r76, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r77, r4
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp462:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp465:
	.loc	2 474 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	stg_b64 r12, 0x100, r10 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r72, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r73, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r10, r75, r4
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp467:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp470:
LBB3_64:                                ; %if.end1219.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s4, s2
	sxor_b64 s2, xmsk, s4
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1219.7.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r8, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_8
LBB3_66:                                ; %Flow518
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s2, s2
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1158.6
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	arrive gvmcnt(19)
	mul_f32 r6, r70, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r7, r71, r4
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r68, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r69, r4
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp472:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp473:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp475:
	.loc	2 474 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	snop 0
	mul_f32 r7, r66, r4
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	stg_b64 r8, 0x100, r10 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r64, r4
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r5, r65, r4
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r4, r67, r4
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp477:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp480:
LBB3_68:                                ; %if.end1219.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1219.9.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r14, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_70:                                ; %Flow517
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s2, s2
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1158.8
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r4, r61, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r5, r62, r2
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r60, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r6, r63, r2
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp482:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp485:
	.loc	2 473 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	stg_b64 r14, 0x100, r8 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r56, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r6, r58, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r7, r59, r2
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp487:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp490:
LBB3_72:                                ; %if.end1219.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1219.11.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow516
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1158.10
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r4, r53, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r5, r54, r2
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r52, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r6, r55, r2
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp492:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp494:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp495:
	.loc	2 473 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	stg_b64 r16, 0x100, r8 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r48, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r6, r50, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r7, r51, r2
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp497:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp499:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp500:
LBB3_76:                                ; %if.end1219.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r112, 0x100, r4 devc
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1219.13.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r20, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_20
LBB3_78:                                ; %Flow515
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1158.12
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r4, r45, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r5, r46, r2
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r44, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r6, r47, r2
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp502:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp503:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp504:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp505:
	.loc	2 473 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	stg_b64 r20, 0x100, r8 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r40, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r6, r42, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r7, r43, r2
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp507:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp508:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp509:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp510:
LBB3_80:                                ; %if.end1219.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r104, 0x100, r4 devc
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	and_xmsk s2, s0
	sxor_b64 s0, xmsk, s2
	bra_xmsks LBB3_83
; %bb.81:                               ; %Flow
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB3_84
LBB3_82:                                ; %if.end1219.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 485 1                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:485:1
	snop 0
	endk
LBB3_83:                                ; %if.end1219.15.critedge
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r22, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_22
	.loc	2 467 9                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:467:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1158.14
	.loc	2 473 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	mul_f32 r4, r37, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r5, r38, r2
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r36, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r6, r39, r2
.Ltmp511:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp512:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp513:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp514:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp515:
	.loc	2 473 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:473:24
	snop 0
	mul_f32 r5, r33, r2
	.loc	2 483 234                       ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	stg_b64 r22, 0x100, r8 devc
	.loc	2 472 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:472:24
	mul_f32 r3, r32, r2
	.loc	2 474 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:474:24
	mul_f32 r6, r34, r2
	.loc	2 475 24                        ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:475:24
	mul_f32 r2, r35, r2
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp517:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp518:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp519:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp520:
	.loc	2 483 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:483:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 485 1                         ; /tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp:485:1
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
; codeLenInByte = 17136
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
	.byte	1                               ; Abbrev [1] 0xb:0x459 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x4e:0x152 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x5f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	141                             ; DW_AT_call_line
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
	.byte	176                             ; DW_AT_call_line
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
	.byte	185                             ; DW_AT_call_line
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
	.byte	223                             ; DW_AT_call_line
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
	.byte	254                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	253                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	252                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	251                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x133:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	277                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x140:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x14d:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x15a:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x169:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	278                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x176:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x183:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x190:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1a0:0x6 DW_TAG_subprogram
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1a6:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1ac:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1b2:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1b8:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x1be:0x2a5 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	9                               ; Abbrev [9] 0x1cf:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	327                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1e4:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x1f9:0x1a DW_TAG_inlined_subroutine
	.long	422                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	330                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x206:0xc DW_TAG_inlined_subroutine
	.long	416                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x213:0x2a DW_TAG_inlined_subroutine
	.long	434                             ; DW_AT_abstract_origin
	.quad	.Ltmp333                        ; DW_AT_low_pc
	.long	.Ltmp334-.Ltmp333               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	353                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x228:0x14 DW_TAG_inlined_subroutine
	.long	428                             ; DW_AT_abstract_origin
	.quad	.Ltmp333                        ; DW_AT_low_pc
	.long	.Ltmp334-.Ltmp333               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x23d:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp334                        ; DW_AT_low_pc
	.long	.Ltmp335-.Ltmp334               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	355                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x252:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp334                        ; DW_AT_low_pc
	.long	.Ltmp335-.Ltmp334               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x267:0xd DW_TAG_inlined_subroutine
	.long	440                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	357                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x274:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp341                        ; DW_AT_low_pc
	.long	.Ltmp342-.Ltmp341               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	375                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x289:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp341                        ; DW_AT_low_pc
	.long	.Ltmp342-.Ltmp341               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x29e:0x1a DW_TAG_inlined_subroutine
	.long	422                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	377                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x2ab:0xc DW_TAG_inlined_subroutine
	.long	416                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x2b8:0x2a DW_TAG_inlined_subroutine
	.long	434                             ; DW_AT_abstract_origin
	.quad	.Ltmp353                        ; DW_AT_low_pc
	.long	.Ltmp354-.Ltmp353               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	402                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2cd:0x14 DW_TAG_inlined_subroutine
	.long	428                             ; DW_AT_abstract_origin
	.quad	.Ltmp353                        ; DW_AT_low_pc
	.long	.Ltmp354-.Ltmp353               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x2e2:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp354                        ; DW_AT_low_pc
	.long	.Ltmp355-.Ltmp354               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	404                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2f7:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp354                        ; DW_AT_low_pc
	.long	.Ltmp355-.Ltmp354               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x30c:0x2a DW_TAG_inlined_subroutine
	.long	422                             ; DW_AT_abstract_origin
	.quad	.Ltmp356                        ; DW_AT_low_pc
	.long	.Ltmp357-.Ltmp356               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	407                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x321:0x14 DW_TAG_inlined_subroutine
	.long	416                             ; DW_AT_abstract_origin
	.quad	.Ltmp356                        ; DW_AT_low_pc
	.long	.Ltmp357-.Ltmp356               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x336:0x2a DW_TAG_inlined_subroutine
	.long	434                             ; DW_AT_abstract_origin
	.quad	.Ltmp358                        ; DW_AT_low_pc
	.long	.Ltmp359-.Ltmp358               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	428                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x34b:0x14 DW_TAG_inlined_subroutine
	.long	428                             ; DW_AT_abstract_origin
	.quad	.Ltmp358                        ; DW_AT_low_pc
	.long	.Ltmp359-.Ltmp358               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x360:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp359                        ; DW_AT_low_pc
	.long	.Ltmp360-.Ltmp359               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	430                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x375:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp359                        ; DW_AT_low_pc
	.long	.Ltmp360-.Ltmp359               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x38a:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	456                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x397:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3a4:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3b1:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x3c0:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	457                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3cd:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3da:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3e7:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x3f6:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	476                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x403:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x410:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x41d:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x42c:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	477                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x439:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x446:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x453:0xd DW_TAG_inlined_subroutine
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
	.asciz	"/tmp/tile-moe-scratch-20260814/v051-work/codegen_candidate_case3/v051_candidate_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=139
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=160
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=170
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=184
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=190
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=206
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=224
.Linfo_string9:
	.asciz	"memcpy_async<16, false>"       ; string offset=242
.Linfo_string10:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=266
.Linfo_string11:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=293
.Linfo_string12:
	.asciz	"moe_select_wait_async_16"      ; string offset=388
.Linfo_string13:
	.asciz	"moe_memcpy_sync_16"            ; string offset=413
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=432
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=446
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
    .streg_count:    28
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
