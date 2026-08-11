	.text
	.weak	__cxa_pure_virtual              ; -- Begin function __cxa_pure_virtual
	.p2align	3
	.type	__cxa_pure_virtual,@function
__cxa_pure_virtual:                     ; @__cxa_pure_virtual
; %bb.0:                                ; %entry
	arrive 0
	trap 2
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
; %bb.0:                                ; %entry
	arrive 0
	trap 2
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
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s6, s5
	smov_b32 s7, 0
	sshl_b64 s2, 2, s6
	and_b32 r1, 0x3ff, r0
	ldu_b256 s8, s0, 0x20
	shl_b32 r2, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s2, s16, s2
	saddc_co_u32 s3, s17, s3
	ldu_b32 s16, s2, 0x0
	smul_i32 s2, 0xe0000, s4
	shr_b32 r31, 3, r1
	smov_b32 s5, 0x1c00
	mov_b32 r0, s2
	mad_u24 r0, r31, s5, r0
	and_b32 r32, r2, 56
	arrive slcnt(0)
	smul_i32 s3, 0xe00000, s16
	or_b32 r0, r0, r32
	add_u32 r0, r0, s3
	add_u32 r8, 0x38000, r0
	mad_i32 r10, r0, 2, s10
	mad_i32 r12, r8, 2, s10
	add_u32 r9, 0x70000, r0
	ldg_b128 r38, r10, 0x0
	ldg_b128 r42, r12, 0x0
	add_u32 r12, 0xa8000, r0
	mad_i32 r14, r9, 2, s10
	mad_i32 r16, r12, 2, s10
	mad_i32 r24, r8, 2, s12
	ldg_b128 r46, r14, 0x0
	ldg_b128 r50, r16, 0x0
	mad_i32 r16, r0, 2, s12
	mad_i32 r26, r9, 2, s12
	mad_i32 r28, r12, 2, s12
	ldg_b128 r54, r16, 0x0
	ldg_b128 r58, r24, 0x0
	ldg_b128 r62, r26, 0x0
	ldg_b128 r66, r28, 0x0
	and_b32 r4, r2, 32
	add_u32 r5, r4, r1
	mul_u24 r6, r1, 9
	and_b32 r3, 0x1fc0, r2
	and_b32 r2, r2, 16
	add_u32 r2, r2, r1
	and_b32 r5, r5, 32
	and_b32 r6, r6, 8
	and_b32 r2, r2, 16
	or_b32 r7, r5, r6
	or3_b32 r7, r7, r3, r2
	or_b32 r3, r3, r5
	or3_b32 r2, r3, r2, r6
	sashr_i32 s17, 31, s16
	shl_b32 r3, 1, r2
	sshl_b64 s0, 2, s16
	add_u32 r2, 0, r3
	sadd_co_u32 s16, s22, s0
	saddc_co_u32 s17, s23, s1
	add_i32 r6, 0x1000, r2
	add_i32 r11, 0x2000, r2
	add_i32 r14, 0x3000, r2
	shr_b32 r8, 1, r1
	and_b32 r2, r1, 15
	smov_b32 s7, 0x1e0
	sshl_b32 s6, 7, s6
	and_or_b32 r0, r8, s7, r2
	ldu_b32 s7, s16, 0x0
	sadd_co_u32 s16, s18, s0
	saddc_co_u32 s17, s19, s1
	shr_b32 r9, 6, r1
	sadd_co_u32 s18, s20, s0
	shr_b32 r15, 5, r1
	saddc_co_u32 s19, s21, s1
	mul_u24 r9, 0x38000, r9
	and_b32 r24, r8, 24
	add_shl_u32 r8, r15, r8, 4
	shr_b32 r15, 4, r1
	ldu_b32 s16, s16, 0x0
	sadd_co_i32 s1, 0x4000, 0
	shl_b32 r7, 1, r7
	add_u32 r5, 0x1000, r3
	add_u32 r10, 0x2000, r3
	add_u32 r13, 0x3000, r3
	mad_u24 r23, r2, s5, r9
	shl_b32 r2, 6, r1
	and_b32 r8, r8, 16
	add_shl_u32 r15, r15, r1, 3
	ldu_b32 s0, s18, 0x0
	add_u32 r3, s1, r3
	and_b32 r9, 0x3c0, r2
	add_u32 r19, 0, r7
	and_or_b32 r33, r15, 8, r8
	add_u32 r20, 0, r5
	add_u32 r25, s1, r7
	add_u32 r26, s1, r5
	add_i32 r5, 0x1000, r3
	add_i32 r7, 0x2000, r3
	add_i32 r3, 0x3000, r3
	or_b32 r35, r33, r4
	or_b32 r8, r33, r9
	or_b32 r15, r8, r4
	or_b32 r34, 0x400, r9
	shl_add_u32 r18, 1, r15, 0
	or_b32 r15, r35, r34
	or_b32 r36, 0x800, r9
	add_u32 r27, s1, r10
	add_u32 r28, s1, r13
	arrive slcnt(0)
	ssub_co_i32 s1, s7, s6
	sadd_co_i32 s6, s16, s6
	ssub_co_i32 s16, s6, s0
	add_u32 r22, 0, r13
	mov_b32 r12, 0x1c00
	shl_add_u32 r17, 1, r15, 0
	or_b32 r15, r35, r36
	or_b32 r37, 0xc00, r9
	sadd_co_u32 s18, 0x80, s10
	add_u32 r21, 0, r10
	shl_add_u32 r16, 1, r15, 0
	or_b32 r15, r35, r37
	add_u32 r10, s16, r0
	mul_hi_i32 r29, s16, r12
	saddc_co_u32 s19, s11, 0
	smul_i32 s6, 0x1c00, s16
	cmp_gt_u32 s10, 0x2380, r10
	add_u32 r10, r10, 16
	mov_b32 r30, s6
	cmp_gt_u32 s6, 0x2380, r10
	sadd_co_u32 s12, 0x80, s12
	saddc_co_u32 s13, s13, 0
	sadd_co_i32 s2, s3, s2
	shr_b32 r2, 2, r1
	shl_add_u32 r15, 1, r15, 0
	arrive gvmcnt(7)
	sts_b128 r19, 0x0, r38
	or_b32 r38, 0x1800, r9
	or_b32 r39, 0x1c00, r9
	arrive gvmcnt(6)
	sts_b128 r6, 0x0, r42
	arrive gvmcnt(5)
	sts_b128 r11, 0x0, r46
	arrive gvmcnt(4)
	sts_b128 r14, 0x0, r50
	arrive gvmcnt(3)
	sts_b128 r25, 0x0, r54
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r58
	arrive gvmcnt(1)
	sts_b128 r7, 0x0, r62
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r66
	or_b32 r3, 0x1000, r9
	or_b32 r5, r35, r3
	shl_add_u32 r14, 1, r5, 0
	or_b32 r5, 0x1400, r9
	or_b32 r6, r35, r5
	shl_add_u32 r13, 1, r6, 0
	or_b32 r6, r35, r38
	shl_add_u32 r12, 1, r6, 0
	or_b32 r6, r35, r39
	xor_b32 r35, r4, 32
	or_b32 r4, r8, r35
	shl_add_u32 r10, 1, r4, 0
	or3_b32 r4, r33, r34, r35
	or3_b32 r3, r33, r3, r35
	shl_add_u32 r9, 1, r4, 0
	or3_b32 r4, r33, r36, r35
	shl_add_u32 r11, 1, r6, 0
	shl_add_u32 r6, 1, r3, 0
	or3_b32 r3, r33, r5, r35
	shl_add_u32 r8, 1, r4, 0
	or3_b32 r4, r33, r37, r35
	shl_add_u32 r5, 1, r3, 0
	or3_b32 r3, r33, r38, r35
	shl_add_u32 r7, 1, r4, 0
	shl_add_u32 r4, 1, r3, 0
	or3_b32 r3, r33, r39, r35
	mov_b32 r33, s2
	mad_u24 r31, r31, s5, r33
	or_b32 r31, r31, r32
	mov_b32 r32, 0x3800
	smul_i32 s2, 0x3800, s16
	mul_hi_i32 r33, s16, r32
	mov_b32 r32, s2
	and_or_b32 r32, r1, 48, r32
	mad_u32 r34, r23, 2, r32
	add_co_u32 r32, s8, r34
	mov_b32 r33, s9
	addc_co_u32 r33, r33, r35
	shl_b64 r34, 0, 0
	shl_b64 r36, 0, 0
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
	shl_b64 r154, 0, r34
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
	shl_b64 r158, 0, r34
	shl_add_u32 r3, 1, r3, 0
	smov_b64 s2, 0
	shl_b64 r44, 0, r36
	shl_b64 r52, 0, r36
	shl_b64 r60, 0, r36
	shl_b64 r68, 0, r36
	shl_b64 r76, 0, r36
	shl_b64 r84, 0, r36
	shl_b64 r92, 0, r36
	shl_b64 r100, 0, r36
	shl_b64 r108, 0, r36
	shl_b64 r116, 0, r36
	shl_b64 r124, 0, r36
	shl_b64 r132, 0, r36
	shl_b64 r140, 0, r36
	shl_b64 r148, 0, r36
	shl_b64 r156, 0, r36
	shl_b64 r40, 0, r36
	shl_b64 r48, 0, r36
	shl_b64 r56, 0, r36
	shl_b64 r64, 0, r36
	shl_b64 r72, 0, r36
	shl_b64 r80, 0, r36
	shl_b64 r88, 0, r36
	shl_b64 r96, 0, r36
	shl_b64 r104, 0, r36
	shl_b64 r112, 0, r36
	shl_b64 r120, 0, r36
	shl_b64 r128, 0, r36
	shl_b64 r136, 0, r36
	shl_b64 r144, 0, r36
	shl_b64 r152, 0, r36
	shl_b64 r160, 0, r36
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s20
	arrive gvmcnt(0) & bsmcnt(0)
	barrier
	arrive bsmcnt(0)
	lds_b128 r178, r18, 0x0
	lds_b128 r182, r17, 0x0
	lds_b128 r186, r16, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r178, r170, r154
	mma_16x16x16f16 r90, r178, r174, r90
	mma_16x16x16f16 r154, r180, r172, r154
	mma_16x16x16f16 r90, r180, r176, r90
	lds_b128 r178, r15, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r182, r170, r146
	mma_16x16x16f16 r82, r182, r174, r82
	mma_16x16x16f16 r146, r184, r172, r146
	mma_16x16x16f16 r82, r184, r176, r82
	lds_b128 r182, r14, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r74, r186, r174, r74
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r74, r188, r176, r74
	lds_b128 r186, r13, 0x0
	lds_b128 r190, r12, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r130, r178, r170, r130
	mma_16x16x16f16 r66, r178, r174, r66
	mma_16x16x16f16 r130, r180, r172, r130
	add_i32 r178, 0x4000, r18
	mma_16x16x16f16 r66, r180, r176, r66
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r182, r170, r122
	mma_16x16x16f16 r58, r182, r174, r58
	lds_b128 r180, r11, 0x0
	mma_16x16x16f16 r122, r184, r172, r122
	mma_16x16x16f16 r58, r184, r176, r58
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r186, r170, r114
	mma_16x16x16f16 r50, r186, r174, r50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r17
	mma_16x16x16f16 r114, r188, r172, r114
	mma_16x16x16f16 r50, r188, r176, r50
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r190, r170, r106
	mma_16x16x16f16 r42, r190, r174, r42
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r16
	mma_16x16x16f16 r106, r192, r172, r106
	mma_16x16x16f16 r42, r192, r176, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r180, r170, r98
	mma_16x16x16f16 r34, r180, r174, r34
	mma_16x16x16f16 r98, r182, r172, r98
	mma_16x16x16f16 r34, r182, r176, r34
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r15
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r184, r170, r158
	mma_16x16x16f16 r94, r184, r174, r94
	mma_16x16x16f16 r158, r186, r172, r158
	mma_16x16x16f16 r94, r186, r176, r94
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r14
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r188, r170, r150
	mma_16x16x16f16 r86, r188, r174, r86
	mma_16x16x16f16 r150, r190, r172, r150
	mma_16x16x16f16 r86, r190, r176, r86
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r13
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r180, r170, r142
	mma_16x16x16f16 r78, r180, r174, r78
	mma_16x16x16f16 r142, r182, r172, r142
	mma_16x16x16f16 r78, r182, r176, r78
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r12
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r184, r170, r134
	mma_16x16x16f16 r70, r184, r174, r70
	mma_16x16x16f16 r134, r186, r172, r134
	mma_16x16x16f16 r70, r186, r176, r70
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r11
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r170, r126
	mma_16x16x16f16 r62, r188, r174, r62
	mma_16x16x16f16 r126, r190, r172, r126
	mma_16x16x16f16 r62, r190, r176, r62
	lds_b128 r188, r178, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r180, r170, r118
	mma_16x16x16f16 r54, r180, r174, r54
	lds_b128 r178, r10, 0x0
	mma_16x16x16f16 r118, r182, r172, r118
	mma_16x16x16f16 r54, r182, r176, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r184, r170, r110
	mma_16x16x16f16 r46, r184, r174, r46
	lds_b128 r182, r9, 0x0
	mma_16x16x16f16 r110, r186, r172, r110
	mma_16x16x16f16 r46, r186, r176, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r188, r170, r102
	mma_16x16x16f16 r38, r188, r174, r38
	mma_16x16x16f16 r102, r190, r172, r102
	lds_b128 r170, r8, 0x0
	mma_16x16x16f16 r38, r190, r176, r38
	lds_b128 r174, r7, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r154, r178, r162, r154
	mma_16x16x16f16 r90, r178, r166, r90
	mma_16x16x16f16 r154, r180, r164, r154
	mma_16x16x16f16 r90, r180, r168, r90
	lds_b128 r178, r6, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r146, r182, r162, r146
	mma_16x16x16f16 r82, r182, r166, r82
	mma_16x16x16f16 r146, r184, r164, r146
	mma_16x16x16f16 r82, r184, r168, r82
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r170, r162, r138
	mma_16x16x16f16 r74, r170, r166, r74
	mma_16x16x16f16 r138, r172, r164, r138
	mma_16x16x16f16 r74, r172, r168, r74
	lds_b128 r170, r5, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r174, r162, r130
	mma_16x16x16f16 r66, r174, r166, r66
	mma_16x16x16f16 r130, r176, r164, r130
	mma_16x16x16f16 r66, r176, r168, r66
	lds_b128 r174, r4, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r178, r162, r122
	mma_16x16x16f16 r58, r178, r166, r58
	mma_16x16x16f16 r122, r180, r164, r122
	mma_16x16x16f16 r58, r180, r168, r58
	lds_b128 r178, r3, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r170, r162, r114
	mma_16x16x16f16 r50, r170, r166, r50
	mma_16x16x16f16 r114, r172, r164, r114
	add_i32 r170, 0x4000, r10
	mma_16x16x16f16 r50, r172, r168, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r174, r162, r106
	lds_b128 r182, r170, 0x0
	add_i32 r170, 0x4000, r9
	mma_16x16x16f16 r42, r174, r166, r42
	mma_16x16x16f16 r106, r176, r164, r106
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r8
	mma_16x16x16f16 r42, r176, r168, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r178, r162, r98
	mma_16x16x16f16 r34, r178, r166, r34
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r7
	mma_16x16x16f16 r98, r180, r164, r98
	mma_16x16x16f16 r34, r180, r168, r34
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r182, r162, r158
	mma_16x16x16f16 r94, r182, r166, r94
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r6
	mma_16x16x16f16 r158, r184, r164, r158
	mma_16x16x16f16 r94, r184, r168, r94
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r172, r162, r150
	mma_16x16x16f16 r86, r172, r166, r86
	mma_16x16x16f16 r150, r174, r164, r150
	mma_16x16x16f16 r86, r174, r168, r86
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r5
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r176, r162, r142
	mma_16x16x16f16 r78, r176, r166, r78
	mma_16x16x16f16 r142, r178, r164, r142
	mma_16x16x16f16 r78, r178, r168, r78
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r4
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r180, r162, r134
	mma_16x16x16f16 r70, r180, r166, r70
	mma_16x16x16f16 r134, r182, r164, r134
	mma_16x16x16f16 r70, r182, r168, r70
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r3
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r172, r162, r126
	mma_16x16x16f16 r62, r172, r166, r62
	lds_b128 r170, r170, 0x0
	mma_16x16x16f16 r126, r174, r164, r126
	mma_16x16x16f16 r62, r174, r168, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r176, r162, r118
	mma_16x16x16f16 r54, r176, r166, r54
	mma_16x16x16f16 r118, r178, r164, r118
	mma_16x16x16f16 r54, r178, r168, r54
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r180, r162, r110
	mma_16x16x16f16 r46, r180, r166, r46
	mma_16x16x16f16 r110, r182, r164, r110
	mma_16x16x16f16 r46, r182, r168, r46
	arrive bsmcnt(0)
	mma_16x16x16f16 r102, r170, r162, r102
	mma_16x16x16f16 r38, r170, r166, r38
	mma_16x16x16f16 r102, r172, r164, r102
	mma_16x16x16f16 r38, r172, r168, r38
	arrive bsmcnt(0)
	barrier
	arrive bsmcnt(0)
	mad_i32 r164, r31, 2, s18
	add_u32 r162, 0x38000, r31
	mad_i32 r166, r162, 2, s18
	ldg_b128 r168, r164, 0x0
	add_u32 r164, 0xa8000, r31
	add_u32 r163, 0x70000, r31
	mad_i32 r176, r164, 2, s18
	ldg_b128 r172, r166, 0x0
	mad_i32 r166, r163, 2, s18
	mad_i32 r164, r164, 2, s12
	sadd_co_u32 s2, 0x80, s2
	ldg_b128 r178, r166, 0x0
	ldg_b128 r182, r176, 0x0
	mad_i32 r166, r31, 2, s12
	mad_i32 r176, r162, 2, s12
	mad_i32 r162, r163, 2, s12
	ldg_b128 r186, r166, 0x0
	ldg_b128 r190, r176, 0x0
	ldg_b128 r194, r162, 0x0
	ldg_b128 r162, r164, 0x0
	saddc_co_u32 s3, s3, 0
	scmp_eq_u64 0x3780, s2
	add_u32 r31, r31, 64
	arrive gvmcnt(7)
	sts_b128 r19, 0x0, r168
	arrive gvmcnt(6)
	sts_b128 r20, 0x0, r172
	arrive gvmcnt(5)
	sts_b128 r21, 0x0, r178
	arrive gvmcnt(4)
	sts_b128 r22, 0x0, r182
	arrive gvmcnt(3)
	sts_b128 r25, 0x0, r186
	arrive gvmcnt(2)
	sts_b128 r26, 0x0, r190
	arrive gvmcnt(1)
	sts_b128 r27, 0x0, r194
	arrive gvmcnt(0)
	sts_b128 r28, 0x0, r162
	bra_smsks LBB2_10
LBB2_2:                                 ; %for.cond164.preheader
                                        ; =>This Inner Loop Header: Depth=1
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	and_xmsk s20, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	snop 1
	ldg_b128 r170, r164, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s20
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	add_co_u32 r162, r32, s2
	mov_b32 r163, s3
	addc_co_u32 r163, r33, r163
	add_co_u32 r162, 0x38000, r162
	addc_co_u32 r163, r163, 0
	snop 1
	ldg_b128 r174, r162, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s20
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	and_xmsk s20, s10
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	snop 1
	ldg_b128 r162, r164, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	sor_b64 xmsk, xmsk, s20
	shl_b64 r166, 0, 0
	shl_b64 r168, 0, 0
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	add_co_u32 r166, r32, s2
	mov_b32 r167, s3
	addc_co_u32 r167, r33, r167
	add_co_u32 r166, 0x38040, r166
	addc_co_u32 r167, r167, 0
	snop 1
	ldg_b128 r166, r166, 0x0
	bra LBB2_1
LBB2_10:                                ; %for.cond556.preheader
	or_b32 r19, r23, r24
	add_co_u32 r32, r30, r19
	addc_co_u32 r33, r29, 0
	shl_b64 r28, 0, 0
	shl_b64 r30, 0, 0
	and_xmsk s2, s10
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %if.then583
	shl_b64 r20, 1, r32
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x3780, r19
	addc_co_u32 r23, r20, 0
	snop 1
	ldg_b128 r28, r22, 0x0
LBB2_12:                                ; %if.end635
	sor_b64 xmsk, xmsk, s2
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then583.1
	shl_b64 r20, 1, r32
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x3b780, r19
	addc_co_u32 r23, r20, 0
	snop 1
	ldg_b128 r162, r22, 0x0
LBB2_14:                                ; %if.end635.1
	sor_b64 xmsk, xmsk, s2
	shl_b64 r20, 0, 0
	shl_b64 r22, 0, 0
	and_xmsk s2, s10
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then583.2
	shl_b64 r20, 1, r32
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x37c0, r19
	addc_co_u32 r23, r20, 0
	snop 1
	ldg_b128 r20, r22, 0x0
LBB2_16:                                ; %if.end635.2
	sor_b64 xmsk, xmsk, s2
	sadd_co_i32 s0, s1, s0
	shl_b64 r24, 0, 0
	shl_b64 r26, 0, 0
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then583.3
	shl_b64 r24, 1, r32
	add_co_u32 r19, s8, r24
	mov_b32 r24, s9
	addc_co_u32 r24, r24, r25
	add_co_u32 r26, 0x3b7c0, r19
	addc_co_u32 r27, r24, 0
	snop 1
	ldg_b128 r24, r26, 0x0
LBB2_18:                                ; %if.end635.3
	sor_b64 xmsk, xmsk, s2
	arrive gvmcnt(0) & bsmcnt(0)
	barrier
	arrive bsmcnt(0)
	lds_b128 r166, r18, 0x0
	lds_b128 r170, r17, 0x0
	lds_b128 r174, r16, 0x0
	add_i32 r18, 0x4000, r18
	add_i32 r17, 0x4000, r17
	add_i32 r16, 0x4000, r16
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r166, r28, r154
	smin_i32 s0, 0x80, s0
	cmp_gt_i32 s2, s0, r0
	mma_16x16x16f16 r90, r166, r162, r90
	mma_16x16x16f16 r154, r168, r30, r154
	mma_16x16x16f16 r90, r168, r164, r90
	lds_b128 r166, r15, 0x0
	add_i32 r15, 0x4000, r15
	sand_b64 s2, s2, s10
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r170, r28, r146
	mma_16x16x16f16 r82, r170, r162, r82
	mma_16x16x16f16 r146, r172, r30, r146
	mma_16x16x16f16 r82, r172, r164, r82
	lds_b128 r170, r14, 0x0
	add_i32 r14, 0x4000, r14
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r174, r28, r138
	mma_16x16x16f16 r74, r174, r162, r74
	mma_16x16x16f16 r138, r176, r30, r138
	mma_16x16x16f16 r74, r176, r164, r74
	lds_b128 r174, r13, 0x0
	add_i32 r13, 0x4000, r13
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r166, r28, r130
	mma_16x16x16f16 r66, r166, r162, r66
	mma_16x16x16f16 r130, r168, r30, r130
	mma_16x16x16f16 r66, r168, r164, r66
	lds_b128 r166, r12, 0x0
	add_i32 r12, 0x4000, r12
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r170, r28, r122
	mma_16x16x16f16 r58, r170, r162, r58
	mma_16x16x16f16 r122, r172, r30, r122
	mma_16x16x16f16 r58, r172, r164, r58
	lds_b128 r170, r11, 0x0
	add_i32 r11, 0x4000, r11
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r174, r28, r114
	mma_16x16x16f16 r50, r174, r162, r50
	mma_16x16x16f16 r114, r176, r30, r114
	mma_16x16x16f16 r50, r176, r164, r50
	lds_b128 r174, r18, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r166, r28, r106
	mma_16x16x16f16 r42, r166, r162, r42
	mma_16x16x16f16 r106, r168, r30, r106
	mma_16x16x16f16 r42, r168, r164, r42
	lds_b128 r166, r17, 0x0
	lds_b128 r16, r16, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r98, r170, r28, r98
	mma_16x16x16f16 r34, r170, r162, r34
	mma_16x16x16f16 r98, r172, r30, r98
	mma_16x16x16f16 r34, r172, r164, r34
	lds_b128 r170, r15, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r158, r174, r28, r158
	mma_16x16x16f16 r94, r174, r162, r94
	mma_16x16x16f16 r158, r176, r30, r158
	mma_16x16x16f16 r94, r176, r164, r94
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r166, r28, r150
	mma_16x16x16f16 r86, r166, r162, r86
	mma_16x16x16f16 r150, r168, r30, r150
	mma_16x16x16f16 r86, r168, r164, r86
	lds_b128 r166, r14, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r16, r28, r142
	mma_16x16x16f16 r78, r16, r162, r78
	lds_b128 r14, r13, 0x0
	mma_16x16x16f16 r142, r18, r30, r142
	mma_16x16x16f16 r78, r18, r164, r78
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r170, r28, r134
	mma_16x16x16f16 r70, r170, r162, r70
	mma_16x16x16f16 r134, r172, r30, r134
	mma_16x16x16f16 r70, r172, r164, r70
	lds_b128 r170, r12, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r166, r28, r126
	mma_16x16x16f16 r62, r166, r162, r62
	mma_16x16x16f16 r126, r168, r30, r126
	mma_16x16x16f16 r62, r168, r164, r62
	lds_b128 r166, r11, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r14, r28, r118
	mma_16x16x16f16 r54, r14, r162, r54
	lds_b128 r12, r10, 0x0
	add_i32 r10, 0x4000, r10
	mma_16x16x16f16 r118, r16, r30, r118
	mma_16x16x16f16 r54, r16, r164, r54
	lds_b128 r16, r9, 0x0
	add_i32 r9, 0x4000, r9
	arrive bsmcnt(3)
	mma_16x16x16f16 r110, r170, r28, r110
	mma_16x16x16f16 r46, r170, r162, r46
	mma_16x16x16f16 r110, r172, r30, r110
	mma_16x16x16f16 r46, r172, r164, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r166, r28, r102
	mma_16x16x16f16 r38, r166, r162, r38
	mma_16x16x16f16 r102, r168, r30, r102
	lds_b128 r28, r8, 0x0
	add_i32 r8, 0x4000, r8
	mma_16x16x16f16 r38, r168, r164, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r12, r20, r154
	mma_16x16x16f16 r90, r12, r24, r90
	mma_16x16x16f16 r154, r14, r22, r154
	mma_16x16x16f16 r90, r14, r26, r90
	lds_b128 r12, r7, 0x0
	add_i32 r7, 0x4000, r7
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r16, r20, r146
	mma_16x16x16f16 r82, r16, r24, r82
	mma_16x16x16f16 r146, r18, r22, r146
	mma_16x16x16f16 r82, r18, r26, r82
	lds_b128 r16, r6, 0x0
	add_i32 r6, 0x4000, r6
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r28, r20, r138
	mma_16x16x16f16 r74, r28, r24, r74
	mma_16x16x16f16 r138, r30, r22, r138
	mma_16x16x16f16 r74, r30, r26, r74
	lds_b128 r28, r5, 0x0
	add_i32 r5, 0x4000, r5
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r12, r20, r130
	mma_16x16x16f16 r66, r12, r24, r66
	mma_16x16x16f16 r130, r14, r22, r130
	mma_16x16x16f16 r66, r14, r26, r66
	lds_b128 r12, r4, 0x0
	add_i32 r4, 0x4000, r4
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r16, r20, r122
	mma_16x16x16f16 r58, r16, r24, r58
	mma_16x16x16f16 r122, r18, r22, r122
	mma_16x16x16f16 r58, r18, r26, r58
	lds_b128 r16, r3, 0x0
	add_i32 r3, 0x4000, r3
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r28, r20, r114
	mma_16x16x16f16 r50, r28, r24, r50
	mma_16x16x16f16 r114, r30, r22, r114
	mma_16x16x16f16 r50, r30, r26, r50
	lds_b128 r28, r10, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r12, r20, r106
	mma_16x16x16f16 r42, r12, r24, r42
	lds_b128 r10, r9, 0x0
	mma_16x16x16f16 r106, r14, r22, r106
	mma_16x16x16f16 r42, r14, r26, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r16, r20, r98
	mma_16x16x16f16 r34, r16, r24, r34
	lds_b128 r14, r8, 0x0
	mma_16x16x16f16 r98, r18, r22, r98
	mma_16x16x16f16 r34, r18, r26, r34
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r28, r20, r158
	mma_16x16x16f16 r94, r28, r24, r94
	mma_16x16x16f16 r158, r30, r22, r158
	mma_16x16x16f16 r94, r30, r26, r94
	lds_b128 r28, r7, 0x0
	lds_b128 r6, r6, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r150, r10, r20, r150
	mma_16x16x16f16 r86, r10, r24, r86
	mma_16x16x16f16 r150, r12, r22, r150
	mma_16x16x16f16 r86, r12, r26, r86
	lds_b128 r10, r5, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r142, r14, r20, r142
	mma_16x16x16f16 r78, r14, r24, r78
	mma_16x16x16f16 r142, r16, r22, r142
	mma_16x16x16f16 r78, r16, r26, r78
	lds_b128 r14, r4, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r134, r28, r20, r134
	mma_16x16x16f16 r70, r28, r24, r70
	mma_16x16x16f16 r134, r30, r22, r134
	mma_16x16x16f16 r70, r30, r26, r70
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r6, r20, r126
	mma_16x16x16f16 r62, r6, r24, r62
	lds_b128 r4, r3, 0x0
	shl_b32 r3, 10, r1
	shl_b32 r1, 11, r1
	mma_16x16x16f16 r126, r8, r22, r126
	and_b32 r1, 0x7800, r1
	mma_16x16x16f16 r62, r8, r26, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r10, r20, r118
	mma_16x16x16f16 r54, r10, r24, r54
	mma_16x16x16f16 r118, r12, r22, r118
	mma_16x16x16f16 r54, r12, r26, r54
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r14, r20, r110
	mma_16x16x16f16 r46, r14, r24, r46
	mma_16x16x16f16 r110, r16, r22, r110
	mma_16x16x16f16 r46, r16, r26, r46
	arrive bsmcnt(0)
	mma_16x16x16f16 r102, r4, r20, r102
	mma_16x16x16f16 r38, r4, r24, r38
	snop 0
	and_b32 r4, 0xf0000, r3
	mov_b32 r5, 0
	mov_b32 r3, 0x80
	mad_u32 r4, s4, r3, r4
	add_co_u32 r4, r4, r1
	addc_co_u32 r5, r5, 0
	mov_b32 r1, 0x800
	mma_16x16x16f16 r102, r6, r22, r102
	mad_i32 r4, s16, r1, r4
	and_b32 r1, r2, 12
	shl_b32 r1, 1, r1
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	mma_16x16x16f16 r38, r6, r26, r38
	addc_co_u32 r2, r2, 0
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_36
; %bb.19:                               ; %if.end1030
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_37
LBB2_20:                                ; %if.end1030.1
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_38
LBB2_21:                                ; %if.end1030.2
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_39
LBB2_22:                                ; %if.end1030.3
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_40
LBB2_23:                                ; %if.end1030.4
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_41
LBB2_24:                                ; %if.end1030.5
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_42
LBB2_25:                                ; %if.end1030.6
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_27
LBB2_26:                                ; %if.then962.7
	mul_f32 r3, 0xbfb8aa3b, r101
	cmp_gt_f32 s2, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s2
	fmka_f32 r9, r101, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s2
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r100
	cmp_gt_f32 s2, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r101, r7
	mul_f32 r7, r7, r105
	csel_b32 r10, r8, 0, s2
	fmka_f32 r10, r100, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s2
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r99
	cmp_gt_f32 s2, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r100, r9
	snop 0
	csel_b32 r11, r8, 0, s2
	fmka_f32 r11, r99, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s2
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r98
	cmp_gt_f32 s2, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r99, r10
	snop 0
	csel_b32 r8, r8, 0, s2
	fmka_f32 r8, r98, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s2
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r98, r3
	mul_f32 r3, r3, r102
	mul_f32 r6, r10, r103
	mul_f32 r8, r9, r104
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xe0, r6 devc
LBB2_27:                                ; %if.end1030.7
	sor_b64 xmsk, xmsk, s4
	or_b32 r0, r0, 16
	cmp_gt_i32 s0, s0, r0
	snop 3
	sand_b64 s0, s0, s6
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_43
; %bb.28:                               ; %if.end1030.8
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_44
LBB2_29:                                ; %if.end1030.9
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_45
LBB2_30:                                ; %if.end1030.10
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_46
LBB2_31:                                ; %if.end1030.11
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_47
LBB2_32:                                ; %if.end1030.12
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_48
LBB2_33:                                ; %if.end1030.13
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_49
LBB2_34:                                ; %if.end1030.14
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_50
LBB2_35:                                ; %if.end1030.15
	snop 1
	endk
LBB2_36:                                ; %if.then962
	mul_f32 r3, 0xbfb8aa3b, r157
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r157, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r156
	cmp_gt_f32 s8, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r157, r7
	mul_f32 r7, r7, r161
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r156, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r155
	cmp_gt_f32 s8, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r156, r9
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r155, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r154
	cmp_gt_f32 s8, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r155, r10
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r154, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r154, r3
	mul_f32 r3, r3, r158
	mul_f32 r6, r10, r159
	mul_f32 r8, r9, r160
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_20
LBB2_37:                                ; %if.then962.1
	mul_f32 r3, 0xbfb8aa3b, r149
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r149, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r148
	cmp_gt_f32 s8, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r149, r7
	mul_f32 r7, r7, r153
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r148, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r147
	cmp_gt_f32 s8, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r148, r9
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r147, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r146
	cmp_gt_f32 s8, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r147, r10
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r146, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r146, r3
	mul_f32 r3, r3, r150
	mul_f32 r6, r10, r151
	mul_f32 r8, r9, r152
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x20, r6 devc
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_21
LBB2_38:                                ; %if.then962.2
	mul_f32 r3, 0xbfb8aa3b, r141
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r141, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r140
	cmp_gt_f32 s8, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r141, r7
	mul_f32 r7, r7, r145
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r140, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r139
	cmp_gt_f32 s8, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r140, r9
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r139, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r138
	cmp_gt_f32 s8, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r139, r10
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r138, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r138, r3
	mul_f32 r3, r3, r142
	mul_f32 r6, r10, r143
	mul_f32 r8, r9, r144
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x40, r6 devc
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_22
LBB2_39:                                ; %if.then962.3
	mul_f32 r3, 0xbfb8aa3b, r133
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r133, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r132
	cmp_gt_f32 s8, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r133, r7
	mul_f32 r7, r7, r137
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r132, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r131
	cmp_gt_f32 s8, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r132, r9
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r131, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r130
	cmp_gt_f32 s8, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r131, r10
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r130, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r130, r3
	mul_f32 r3, r3, r134
	mul_f32 r6, r10, r135
	mul_f32 r8, r9, r136
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x60, r6 devc
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_23
LBB2_40:                                ; %if.then962.4
	mul_f32 r3, 0xbfb8aa3b, r125
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r125, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r124
	cmp_gt_f32 s8, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r125, r7
	mul_f32 r7, r7, r129
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r124, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r123
	cmp_gt_f32 s8, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r124, r9
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r123, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r122
	cmp_gt_f32 s8, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r123, r10
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r122, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r122, r3
	mul_f32 r3, r3, r126
	mul_f32 r6, r10, r127
	mul_f32 r8, r9, r128
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x80, r6 devc
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_24
LBB2_41:                                ; %if.then962.5
	mul_f32 r3, 0xbfb8aa3b, r117
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r117, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r116
	cmp_gt_f32 s8, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r117, r7
	mul_f32 r7, r7, r121
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r116, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r115
	cmp_gt_f32 s8, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r116, r9
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r115, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r114
	cmp_gt_f32 s8, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r115, r10
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r114, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r114, r3
	mul_f32 r3, r3, r118
	mul_f32 r6, r10, r119
	mul_f32 r8, r9, r120
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xa0, r6 devc
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_25
LBB2_42:                                ; %if.then962.6
	mul_f32 r3, 0xbfb8aa3b, r109
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r109, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r108
	cmp_gt_f32 s8, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	mul_f32 r7, r109, r7
	mul_f32 r7, r7, r113
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r108, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r107
	cmp_gt_f32 s8, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	mul_f32 r9, r108, r9
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r107, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
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
	mul_f32 r11, 0xbfb8aa3b, r106
	cmp_gt_f32 s8, 0xc2fc0000, r11
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	mul_f32 r10, r107, r10
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r106, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
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
	mul_f32 r3, r106, r3
	mul_f32 r3, r3, r110
	mul_f32 r6, r10, r111
	mul_f32 r8, r9, r112
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	shl_b64 r10, 1, r4
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	add_co_u32 r10, r1, r10
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	addc_co_u32 r11, r2, r11
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xc0, r6 devc
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_26
	bra LBB2_27
LBB2_43:                                ; %if.then962.8
	mul_f32 r0, 0xbfb8aa3b, r93
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r93, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r92
	cmp_gt_f32 s4, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	mul_f32 r6, r93, r6
	mul_f32 r6, r6, r97
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r92, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r91
	cmp_gt_f32 s4, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	mul_f32 r8, r92, r8
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r91, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r90
	cmp_gt_f32 s4, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	mul_f32 r9, r91, r9
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r90, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r90, r0
	mul_f32 r0, r0, r94
	mul_f32 r3, r9, r95
	mul_f32 r7, r8, r96
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10000, r6
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	addc_co_u32 r11, r7, 0
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_29
LBB2_44:                                ; %if.then962.9
	mul_f32 r0, 0xbfb8aa3b, r85
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r85, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r84
	cmp_gt_f32 s4, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	mul_f32 r6, r85, r6
	mul_f32 r6, r6, r89
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r84, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r83
	cmp_gt_f32 s4, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	mul_f32 r8, r84, r8
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r83, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r82
	cmp_gt_f32 s4, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	mul_f32 r9, r83, r9
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r82, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r82, r0
	mul_f32 r0, r0, r86
	mul_f32 r3, r9, r87
	mul_f32 r7, r8, r88
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10020, r6
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	addc_co_u32 r11, r7, 0
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_30
LBB2_45:                                ; %if.then962.10
	mul_f32 r0, 0xbfb8aa3b, r77
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r77, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r76
	cmp_gt_f32 s4, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	mul_f32 r6, r77, r6
	mul_f32 r6, r6, r81
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r76, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r75
	cmp_gt_f32 s4, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	mul_f32 r8, r76, r8
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r75, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r74
	cmp_gt_f32 s4, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	mul_f32 r9, r75, r9
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r74, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r74, r0
	mul_f32 r0, r0, r78
	mul_f32 r3, r9, r79
	mul_f32 r7, r8, r80
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10040, r6
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	addc_co_u32 r11, r7, 0
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_31
LBB2_46:                                ; %if.then962.11
	mul_f32 r0, 0xbfb8aa3b, r69
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r69, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r68
	cmp_gt_f32 s4, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	mul_f32 r6, r69, r6
	mul_f32 r6, r6, r73
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r68, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r67
	cmp_gt_f32 s4, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	mul_f32 r8, r68, r8
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r67, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r66
	cmp_gt_f32 s4, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	mul_f32 r9, r67, r9
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r66, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r66, r0
	mul_f32 r0, r0, r70
	mul_f32 r3, r9, r71
	mul_f32 r7, r8, r72
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10060, r6
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	addc_co_u32 r11, r7, 0
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_32
LBB2_47:                                ; %if.then962.12
	mul_f32 r0, 0xbfb8aa3b, r61
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r61, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r60
	cmp_gt_f32 s4, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	mul_f32 r6, r61, r6
	mul_f32 r6, r6, r65
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r60, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r59
	cmp_gt_f32 s4, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	mul_f32 r8, r60, r8
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r59, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r58
	cmp_gt_f32 s4, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	mul_f32 r9, r59, r9
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r58, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r58, r0
	mul_f32 r0, r0, r62
	mul_f32 r3, r9, r63
	mul_f32 r7, r8, r64
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10080, r6
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	addc_co_u32 r11, r7, 0
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_33
LBB2_48:                                ; %if.then962.13
	mul_f32 r0, 0xbfb8aa3b, r53
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r53, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r52
	cmp_gt_f32 s4, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	mul_f32 r6, r53, r6
	mul_f32 r6, r6, r57
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r52, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r51
	cmp_gt_f32 s4, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	mul_f32 r8, r52, r8
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r51, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r50
	cmp_gt_f32 s4, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	mul_f32 r9, r51, r9
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r50, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r50, r0
	mul_f32 r0, r0, r54
	mul_f32 r3, r9, r55
	mul_f32 r7, r8, r56
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100a0, r6
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	addc_co_u32 r11, r7, 0
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_34
LBB2_49:                                ; %if.then962.14
	mul_f32 r0, 0xbfb8aa3b, r45
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r45, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r44
	cmp_gt_f32 s4, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	mul_f32 r6, r45, r6
	mul_f32 r6, r6, r49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r44, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r43
	cmp_gt_f32 s4, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	mul_f32 r8, r44, r8
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r43, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r42
	cmp_gt_f32 s4, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	mul_f32 r9, r43, r9
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r42, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r42, r0
	mul_f32 r0, r0, r46
	mul_f32 r3, r9, r47
	mul_f32 r7, r8, r48
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100c0, r6
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	addc_co_u32 r11, r7, 0
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_35
LBB2_50:                                ; %if.then962.15
	mul_f32 r0, 0xbfb8aa3b, r37
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r7, 0, s0
	fmka_f32 r8, r37, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s0
	exp_f32 r8, r8
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
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
	mul_f32 r8, 0xbfb8aa3b, r36
	cmp_gt_f32 s0, 0xc2fc0000, r8
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s2
	mul_f32 r6, r37, r6
	mul_f32 r6, r6, r41
	csel_b32 r9, r7, 0, s0
	fmka_f32 r9, r36, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
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
	mul_f32 r9, 0xbfb8aa3b, r35
	cmp_gt_f32 s0, 0xc2fc0000, r9
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	mul_f32 r8, r36, r8
	snop 0
	csel_b32 r10, r7, 0, s0
	fmka_f32 r10, r35, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
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
	mul_f32 r10, 0xbfb8aa3b, r34
	cmp_gt_f32 s0, 0xc2fc0000, r10
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	mul_f32 r9, r35, r9
	snop 0
	csel_b32 r7, r7, 0, s0
	fmka_f32 r7, r34, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s0
	exp_f32 r7, r7
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
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
	mul_f32 r0, r34, r0
	mul_f32 r0, r0, r38
	mul_f32 r3, r9, r39
	mul_f32 r7, r8, r40
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 0
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
	addc_co_u32 r2, r2, r5
	add_co_u32 r4, 0x100e0, r1
	shl_b32 r1, 16, r6
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	addc_co_u32 r5, r2, 0
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r4, 0x0, r2 devc
	snop 2
	endk
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
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
.Lfunc_end2:
	.size	kernel_kernel, .Lfunc_end2-kernel_kernel
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 24472
; NumMTRegsForWarps/PEU: 198
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x0
	sshl_b32 s6, 8, s6
	sadd_co_u32 prvt_lo, s2, s6
	saddc_co_u32 prvt_hi, s3, 0
	smov_b32 s6, s5
	smov_b32 s7, 0
	sshl_b64 s2, 2, s6
	arrive slcnt(0)
	sadd_co_u32 s2, s8, s2
	saddc_co_u32 s3, s9, s3
	ldu_b32 s8, s2, 0x0
	ldu_b256 s16, s0, 0x20
	and_b32 r255, 0x3ff, r0
	shl_b32 r1, 3, r255
	shl_b32 r0, 8, r255
	and_b32 r5, r1, 32
	add_u32 r6, r5, r255
	arrive slcnt(0)
	sashr_i32 s9, 31, s8
	smul_i32 s2, 0xe00000, s8
	sshl_b64 s8, 2, s8
	sadd_co_u32 s0, s14, s8
	saddc_co_u32 s1, s15, s9
	sshl_b32 s5, 7, s5
	sadd_co_u32 s6, s10, s8
	saddc_co_u32 s7, s11, s9
	sadd_co_u32 s8, s12, s8
	mul_u24 r7, r255, 9
	saddc_co_u32 s9, s13, s9
	sshl_b32 s3, 19, s4
	and_b32 r0, 0x3f800, r0
	and_b32 r2, r1, 56
	and_b32 r4, 0x1fc0, r1
	and_b32 r1, r1, 16
	or3_b32 r3, r0, s3, r2
	add_u32 r1, r1, r255
	and_b32 r6, r6, 32
	and_b32 r7, r7, 8
	add_u32 r3, r3, s2
	and_b32 r1, r1, 16
	or_b32 r8, r6, r7
	or3_b32 r8, r8, r4, r1
	mad_i32 r10, r3, 2, s18
	shl_add_u32 r37, 1, r8, 0
	add_co_u32 r8, 0x20000, r10
	addc_co_u32 r9, r11, 0
	ldg_b128 r54, r10, 0x0
	or_b32 r4, r4, r6
	ldg_b128 r58, r8, 0x0
	add_co_u32 r8, 0x40000, r10
	addc_co_u32 r9, r11, 0
	add_co_u32 r10, 0x60000, r10
	or3_b32 r1, r4, r1, r7
	addc_co_u32 r11, r11, 0
	or_b32 r4, 0x40000, r3
	ldg_b128 r62, r8, 0x0
	ldg_b128 r66, r10, 0x0
	mad_i32 r10, r4, 2, s18
	add_u32 r4, 0x50000, r3
	mad_i32 r12, r4, 2, s18
	add_u32 r4, 0x60000, r3
	add_u32 r3, 0x70000, r3
	mad_i32 r80, r3, 2, s18
	mad_i32 r78, r4, 2, s18
	ldg_b128 r70, r10, 0x0
	ldg_b128 r74, r12, 0x0
	ldg_b128 r82, r78, 0x0
	ldg_b128 r78, r80, 0x0
	shr_b32 r3, 1, r255
	smov_b32 s33, 0
	and_b32 r4, 0x1e0, r3
	and_b32 r12, r255, 15
	or_b32 r254, r4, r12
	ldu_b32 s6, s6, 0x0
	arrive slcnt(0)
	stp_b32 s33, 0x4, r12                   ; 4-byte Folded Spill
	shl_b32 r12, 10, r255
	and_b32 r12, 0xf0000, r12
	shl_b32 r13, 11, r255
	smov_b32 s7, 0x7800
	and_or_b32 r45, r13, s7, r12
	shr_b32 r13, 2, r255
	and_b32 r46, r3, 24
	shl_b32 r12, 6, r255
	stp_b32 s33, 0x8, r13                   ; 4-byte Folded Spill
	shr_b32 r13, 5, r255
	add_shl_u32 r3, r13, r3, 4
	shr_b32 r13, 4, r255
	and_b32 r3, r3, 16
	add_shl_u32 r13, r13, r255, 3
	and_b32 r12, 0x3c0, r12
	and_or_b32 r3, r13, 8, r3
	or_b32 r13, r3, r12
	or_b32 r14, r13, r5
	shl_add_u32 r1, 1, r1, 0
	shl_add_u32 r36, 1, r14, 0
	or_b32 r14, 0x400, r12
	or_b32 r15, r3, r5
	or_b32 r16, r15, r14
	add_u32 r38, 0x1000, r1
	add_i32 r6, 0x1000, r1
	add_u32 r39, 0x2000, r1
	add_i32 r7, 0x2000, r1
	add_u32 r40, 0x3000, r1
	add_i32 r8, 0x3000, r1
	add_i32 r9, 0x4000, r37
	add_u32 r42, 0x5000, r1
	add_i32 r10, 0x5000, r1
	add_u32 r43, 0x6000, r1
	add_i32 r11, 0x6000, r1
	add_u32 r44, 0x7000, r1
	add_i32 r1, 0x7000, r1
	shl_add_u32 r35, 1, r16, 0
	or_b32 r16, 0x800, r12
	or_b32 r17, r15, r16
	shl_add_u32 r34, 1, r17, 0
	or_b32 r17, 0xc00, r12
	ldu_b32 s1, s0, 0x0
	or_b32 r18, r15, r17
	ldu_b32 s0, s8, 0x0
	or_b32 r47, 0x1000, r12
	shl_add_u32 r32, 1, r18, 0
	or_b32 r18, r15, r47
	or_b32 r48, 0x1400, r12
	shl_add_u32 r30, 1, r18, 0
	or_b32 r18, r15, r48
	or_b32 r49, 0x1800, r12
	or_b32 r53, 0x3400, r12
	shl_add_u32 r28, 1, r18, 0
	or_b32 r18, r15, r49
	or_b32 r50, 0x1c00, r12
	shl_add_u32 r26, 1, r18, 0
	or_b32 r18, r15, r50
	or_b32 r51, 0x2000, r12
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s5
	sadd_co_i32 s5, s6, s5
	shl_add_u32 r24, 1, r18, 0
	or_b32 r18, r15, r51
	or_b32 r52, 0x2400, r12
	xor_b32 r5, r5, 32
	ssub_co_i32 s10, s5, s0
	shl_add_u32 r22, 1, r18, 0
	or_b32 r18, r15, r52
	shl_add_u32 r21, 1, r18, 0
	add_u32 r18, s10, r254
	cmp_gt_u32 s8, 0x2380, r18
	add_u32 r18, r18, 16
	cmp_gt_u32 s6, 0x2380, r18
	sashr_i32 s11, 31, s10
	sshl_b64 s12, 11, s10
	sadd_co_u32 s14, 0x80, s18
	saddc_co_u32 s15, s19, 0
	sadd_co_i32 s2, s2, s3
	add_u32 r41, 0x4000, r37
	arrive gvmcnt(9)
	sts_b128 r37, 0x0, r54
	or_b32 r54, 0x3800, r12
	or_b32 r55, 0x3c00, r12
	arrive gvmcnt(8)
	sts_b128 r6, 0x0, r58
	arrive gvmcnt(7)
	sts_b128 r7, 0x0, r62
	arrive gvmcnt(6)
	sts_b128 r8, 0x0, r66
	arrive gvmcnt(5)
	sts_b128 r9, 0x0, r70
	arrive gvmcnt(4)
	sts_b128 r10, 0x0, r74
	arrive gvmcnt(3)
	sts_b128 r11, 0x0, r82
	arrive gvmcnt(2)
	sts_b128 r1, 0x0, r78
	or_b32 r1, 0x2800, r12
	or_b32 r6, r15, r1
	shl_add_u32 r33, 1, r6, 0
	or_b32 r6, 0x2c00, r12
	or_b32 r7, r15, r6
	shl_add_u32 r31, 1, r7, 0
	or_b32 r7, 0x3000, r12
	or_b32 r8, r15, r7
	shl_add_u32 r29, 1, r8, 0
	or_b32 r8, r15, r53
	shl_add_u32 r27, 1, r8, 0
	or_b32 r8, r15, r54
	shl_add_u32 r25, 1, r8, 0
	or_b32 r8, r15, r55
	shl_add_u32 r23, 1, r8, 0
	or_b32 r8, r13, r5
	shl_add_u32 r20, 1, r8, 0
	or3_b32 r8, r3, r14, r5
	shl_add_u32 r19, 1, r8, 0
	or3_b32 r8, r3, r16, r5
	shl_add_u32 r18, 1, r8, 0
	or3_b32 r8, r3, r17, r5
	shl_add_u32 r17, 1, r8, 0
	or3_b32 r8, r3, r47, r5
	shl_add_u32 r16, 1, r8, 0
	or3_b32 r8, r3, r48, r5
	shl_add_u32 r15, 1, r8, 0
	or3_b32 r8, r3, r49, r5
	shl_add_u32 r14, 1, r8, 0
	or3_b32 r8, r3, r50, r5
	or3_b32 r1, r3, r1, r5
	shl_add_u32 r13, 1, r8, 0
	or3_b32 r8, r3, r51, r5
	shl_add_u32 r10, 1, r1, 0
	or3_b32 r1, r3, r6, r5
	shl_add_u32 r12, 1, r8, 0
	or3_b32 r8, r3, r52, r5
	shl_add_u32 r9, 1, r1, 0
	or3_b32 r1, r3, r7, r5
	or3_b32 r47, s2, r0, r2
	sshl_b64 s2, 12, s10
	shl_add_u32 r11, 1, r8, 0
	shl_add_u32 r8, 1, r1, 0
	or3_b32 r1, r3, r53, r5
	mov_b32 r0, s2
	shl_add_u32 r7, 1, r1, 0
	or3_b32 r1, r3, r54, r5
	shl_add_u32 r6, 1, r1, 0
	or3_b32 r1, r3, r55, r5
	and_or_b32 r0, r255, 48, r0
	shl_b32 r2, 1, r45
	shl_add_u32 r5, 1, r1, 0
	mov_b32 r1, s3
	mov_b32 r3, 0
	add_co_u32 r0, r0, r2
	addc_co_u32 r1, r1, r3
	shl_b64 r50, 0, 0
	add_co_u32 r48, s22, r0
	mov_b32 r0, s23
	shl_b64 r52, 0, 0
	shl_b64 r54, 0, r50
	shl_b64 r58, 0, r50
	shl_b64 r62, 0, r50
	shl_b64 r66, 0, r50
	shl_b64 r70, 0, r50
	shl_b64 r74, 0, r50
	shl_b64 r78, 0, r50
	shl_b64 r82, 0, r50
	shl_b64 r86, 0, r50
	shl_b64 r90, 0, r50
	shl_b64 r94, 0, r50
	shl_b64 r98, 0, r50
	shl_b64 r102, 0, r50
	shl_b64 r106, 0, r50
	shl_b64 r110, 0, r50
	shl_b64 r114, 0, r50
	shl_b64 r118, 0, r50
	shl_b64 r122, 0, r50
	shl_b64 r126, 0, r50
	shl_b64 r130, 0, r50
	shl_b64 r134, 0, r50
	shl_b64 r138, 0, r50
	shl_b64 r142, 0, r50
	shl_b64 r146, 0, r50
	shl_b64 r150, 0, r50
	shl_b64 r154, 0, r50
	shl_b64 r158, 0, r50
	shl_b64 r162, 0, r50
	shl_b64 r166, 0, r50
	shl_b64 r170, 0, r50
	shl_b64 r174, 0, r50
	addc_co_u32 r49, r0, r1
	smov_b64 s2, 0
	shl_b64 r56, 0, r52
	shl_b64 r60, 0, r52
	shl_b64 r64, 0, r52
	shl_b64 r68, 0, r52
	shl_b64 r72, 0, r52
	shl_b64 r76, 0, r52
	shl_b64 r80, 0, r52
	shl_b64 r84, 0, r52
	shl_b64 r88, 0, r52
	shl_b64 r92, 0, r52
	shl_b64 r96, 0, r52
	shl_b64 r100, 0, r52
	shl_b64 r104, 0, r52
	shl_b64 r108, 0, r52
	shl_b64 r112, 0, r52
	shl_b64 r116, 0, r52
	shl_b64 r120, 0, r52
	shl_b64 r124, 0, r52
	shl_b64 r128, 0, r52
	shl_b64 r132, 0, r52
	shl_b64 r136, 0, r52
	shl_b64 r140, 0, r52
	shl_b64 r144, 0, r52
	shl_b64 r148, 0, r52
	shl_b64 r152, 0, r52
	shl_b64 r156, 0, r52
	shl_b64 r160, 0, r52
	shl_b64 r164, 0, r52
	shl_b64 r168, 0, r52
	shl_b64 r172, 0, r52
	shl_b64 r176, 0, r52
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s18
	arrive gvmcnt(0) & bsmcnt(0)
	barrier
	arrive bsmcnt(0)
	lds_b128 r0, r36, 0x0
	lds_b128 r250, r35, 0x0
	lds_b128 r246, r34, 0x0
	lds_b128 r242, r32, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r174, r0, r190, r174
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r250, r190, r170
	arrive bsmcnt(1)
	mma_16x16x16f16 r166, r246, r190, r166
	arrive bsmcnt(0)
	mma_16x16x16f16 r162, r242, r190, r162
	lds_b128 r238, r30, 0x0
	arrive bsmcnt(0)
	mma_16x16x16f16 r158, r238, r190, r158
	lds_b128 r234, r28, 0x0
	lds_b128 r230, r26, 0x0
	lds_b128 r226, r24, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r234, r190, r154
	arrive bsmcnt(1)
	mma_16x16x16f16 r150, r230, r190, r150
	arrive bsmcnt(0)
	mma_16x16x16f16 r146, r226, r190, r146
	lds_b128 r222, r22, 0x0
	arrive bsmcnt(0)
	mma_16x16x16f16 r142, r222, r190, r142
	lds_b128 r218, r21, 0x0
	arrive bsmcnt(0)
	mma_16x16x16f16 r138, r218, r190, r138
	lds_b128 r214, r33, 0x0
	lds_b128 r210, r31, 0x0
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r214, r190, r134
	arrive bsmcnt(0)
	mma_16x16x16f16 r130, r210, r190, r130
	lds_b128 r206, r29, 0x0
	arrive bsmcnt(0)
	mma_16x16x16f16 r126, r206, r190, r126
	lds_b128 r202, r27, 0x0
	arrive bsmcnt(0)
	mma_16x16x16f16 r122, r202, r190, r122
	lds_b128 r198, r25, 0x0
	arrive bsmcnt(0)
	mma_16x16x16f16 r118, r198, r190, r118
	lds_b128 r194, r23, 0x0
	arrive bsmcnt(0)
	mma_16x16x16f16 r114, r194, r190, r114
	mma_16x16x16f16 r110, r0, r186, r110
	mma_16x16x16f16 r106, r250, r186, r106
	mma_16x16x16f16 r102, r246, r186, r102
	mma_16x16x16f16 r98, r242, r186, r98
	mma_16x16x16f16 r94, r238, r186, r94
	mma_16x16x16f16 r90, r234, r186, r90
	mma_16x16x16f16 r86, r230, r186, r86
	mma_16x16x16f16 r82, r226, r186, r82
	mma_16x16x16f16 r78, r222, r186, r78
	mma_16x16x16f16 r74, r218, r186, r74
	mma_16x16x16f16 r70, r214, r186, r70
	mma_16x16x16f16 r66, r210, r186, r66
	mma_16x16x16f16 r62, r206, r186, r62
	mma_16x16x16f16 r58, r202, r186, r58
	mma_16x16x16f16 r54, r198, r186, r54
	mma_16x16x16f16 r50, r194, r186, r50
	mma_16x16x16f16 r174, r2, r192, r174
	mma_16x16x16f16 r170, r252, r192, r170
	mma_16x16x16f16 r166, r248, r192, r166
	mma_16x16x16f16 r162, r244, r192, r162
	mma_16x16x16f16 r158, r240, r192, r158
	mma_16x16x16f16 r154, r236, r192, r154
	mma_16x16x16f16 r150, r232, r192, r150
	mma_16x16x16f16 r146, r228, r192, r146
	mma_16x16x16f16 r142, r224, r192, r142
	mma_16x16x16f16 r138, r220, r192, r138
	mma_16x16x16f16 r134, r216, r192, r134
	mma_16x16x16f16 r130, r212, r192, r130
	mma_16x16x16f16 r126, r208, r192, r126
	mma_16x16x16f16 r122, r204, r192, r122
	mma_16x16x16f16 r118, r200, r192, r118
	mma_16x16x16f16 r114, r196, r192, r114
	mma_16x16x16f16 r110, r2, r188, r110
	lds_b128 r0, r20, 0x0
	mma_16x16x16f16 r106, r252, r188, r106
	mma_16x16x16f16 r102, r248, r188, r102
	mma_16x16x16f16 r98, r244, r188, r98
	lds_b128 r242, r19, 0x0
	mma_16x16x16f16 r94, r240, r188, r94
	lds_b128 r238, r18, 0x0
	mma_16x16x16f16 r90, r236, r188, r90
	lds_b128 r234, r17, 0x0
	mma_16x16x16f16 r86, r232, r188, r86
	lds_b128 r230, r16, 0x0
	mma_16x16x16f16 r82, r228, r188, r82
	mma_16x16x16f16 r78, r224, r188, r78
	lds_b128 r226, r15, 0x0
	mma_16x16x16f16 r74, r220, r188, r74
	lds_b128 r222, r14, 0x0
	mma_16x16x16f16 r70, r216, r188, r70
	lds_b128 r218, r13, 0x0
	mma_16x16x16f16 r66, r212, r188, r66
	lds_b128 r214, r12, 0x0
	mma_16x16x16f16 r62, r208, r188, r62
	mma_16x16x16f16 r58, r204, r188, r58
	lds_b128 r210, r11, 0x0
	mma_16x16x16f16 r54, r200, r188, r54
	lds_b128 r206, r10, 0x0
	mma_16x16x16f16 r50, r196, r188, r50
	lds_b128 r202, r9, 0x0
	arrive bsmcnt(11)
	mma_16x16x16f16 r174, r0, r182, r174
	lds_b128 r198, r8, 0x0
	arrive bsmcnt(11)
	mma_16x16x16f16 r170, r242, r182, r170
	arrive bsmcnt(10)
	mma_16x16x16f16 r166, r238, r182, r166
	lds_b128 r194, r7, 0x0
	arrive bsmcnt(10)
	mma_16x16x16f16 r162, r234, r182, r162
	lds_b128 r190, r6, 0x0
	arrive bsmcnt(10)
	mma_16x16x16f16 r158, r230, r182, r158
	lds_b128 r186, r5, 0x0
	arrive bsmcnt(10)
	mma_16x16x16f16 r154, r226, r182, r154
	arrive bsmcnt(9)
	mma_16x16x16f16 r150, r222, r182, r150
	arrive bsmcnt(8)
	mma_16x16x16f16 r146, r218, r182, r146
	arrive bsmcnt(7)
	mma_16x16x16f16 r142, r214, r182, r142
	arrive bsmcnt(6)
	mma_16x16x16f16 r138, r210, r182, r138
	arrive bsmcnt(5)
	mma_16x16x16f16 r134, r206, r182, r134
	arrive bsmcnt(4)
	mma_16x16x16f16 r130, r202, r182, r130
	arrive bsmcnt(3)
	mma_16x16x16f16 r126, r198, r182, r126
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r194, r182, r122
	arrive bsmcnt(1)
	mma_16x16x16f16 r118, r190, r182, r118
	arrive bsmcnt(0)
	mma_16x16x16f16 r114, r186, r182, r114
	mma_16x16x16f16 r110, r0, r178, r110
	mma_16x16x16f16 r106, r242, r178, r106
	mma_16x16x16f16 r102, r238, r178, r102
	mma_16x16x16f16 r98, r234, r178, r98
	mma_16x16x16f16 r94, r230, r178, r94
	mma_16x16x16f16 r90, r226, r178, r90
	mma_16x16x16f16 r86, r222, r178, r86
	mma_16x16x16f16 r82, r218, r178, r82
	mma_16x16x16f16 r78, r214, r178, r78
	mma_16x16x16f16 r74, r210, r178, r74
	mma_16x16x16f16 r70, r206, r178, r70
	mma_16x16x16f16 r66, r202, r178, r66
	mma_16x16x16f16 r62, r198, r178, r62
	mma_16x16x16f16 r58, r194, r178, r58
	mma_16x16x16f16 r54, r190, r178, r54
	mma_16x16x16f16 r50, r186, r178, r50
	mma_16x16x16f16 r174, r2, r184, r174
	mma_16x16x16f16 r170, r244, r184, r170
	mma_16x16x16f16 r166, r240, r184, r166
	mma_16x16x16f16 r162, r236, r184, r162
	mma_16x16x16f16 r158, r232, r184, r158
	mma_16x16x16f16 r154, r228, r184, r154
	mma_16x16x16f16 r150, r224, r184, r150
	mma_16x16x16f16 r146, r220, r184, r146
	mma_16x16x16f16 r142, r216, r184, r142
	mma_16x16x16f16 r138, r212, r184, r138
	mma_16x16x16f16 r134, r208, r184, r134
	mma_16x16x16f16 r130, r204, r184, r130
	mma_16x16x16f16 r126, r200, r184, r126
	mma_16x16x16f16 r122, r196, r184, r122
	mma_16x16x16f16 r118, r192, r184, r118
	mma_16x16x16f16 r114, r188, r184, r114
	mma_16x16x16f16 r110, r2, r180, r110
	mma_16x16x16f16 r106, r244, r180, r106
	mma_16x16x16f16 r102, r240, r180, r102
	mma_16x16x16f16 r98, r236, r180, r98
	mma_16x16x16f16 r94, r232, r180, r94
	mma_16x16x16f16 r90, r228, r180, r90
	mma_16x16x16f16 r86, r224, r180, r86
	mma_16x16x16f16 r82, r220, r180, r82
	mma_16x16x16f16 r78, r216, r180, r78
	mma_16x16x16f16 r74, r212, r180, r74
	mma_16x16x16f16 r70, r208, r180, r70
	mma_16x16x16f16 r66, r204, r180, r66
	mma_16x16x16f16 r62, r200, r180, r62
	mma_16x16x16f16 r58, r196, r180, r58
	mma_16x16x16f16 r54, r192, r180, r54
	mma_16x16x16f16 r50, r188, r180, r50
	arrive bsmcnt(0)
	barrier
	arrive bsmcnt(0)
	add_u32 r0, 0x10000, r47
	mad_i32 r2, r47, 2, s14
	mad_i32 r0, r0, 2, s14
	sadd_co_u32 s2, 0x80, s2
	ldg_b128 r178, r2, 0x0
	ldg_b128 r182, r0, 0x0
	add_u32 r0, 0x20000, r47
	mad_i32 r2, r0, 2, s14
	add_u32 r0, 0x30000, r47
	mad_i32 r0, r0, 2, s14
	ldg_b128 r186, r2, 0x0
	saddc_co_u32 s3, s3, 0
	ldg_b128 r190, r0, 0x0
	add_u32 r0, 0x40000, r47
	mad_i32 r2, r0, 2, s14
	add_u32 r0, 0x50000, r47
	mad_i32 r0, r0, 2, s14
	ldg_b128 r194, r2, 0x0
	scmp_eq_u64 0xf80, s2
	ldg_b128 r198, r0, 0x0
	add_u32 r0, 0x60000, r47
	mad_i32 r2, r0, 2, s14
	add_u32 r0, 0x70000, r47
	mad_i32 r0, r0, 2, s14
	ldg_b128 r202, r2, 0x0
	add_u32 r47, r47, 64
	ldg_b128 r0, r0, 0x0
	arrive gvmcnt(7)
	sts_b128 r37, 0x0, r178
	arrive gvmcnt(6)
	sts_b128 r38, 0x0, r182
	arrive gvmcnt(5)
	sts_b128 r39, 0x0, r186
	arrive gvmcnt(4)
	sts_b128 r40, 0x0, r190
	arrive gvmcnt(3)
	sts_b128 r41, 0x0, r194
	arrive gvmcnt(2)
	sts_b128 r42, 0x0, r198
	arrive gvmcnt(1)
	sts_b128 r43, 0x0, r202
	arrive gvmcnt(0)
	sts_b128 r44, 0x0, r0
	bra_smsks LBB3_10
LBB3_2:                                 ; %for.cond89.preheader
                                        ; =>This Inner Loop Header: Depth=1
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	add_co_u32 r2, r48, s2
	mov_b32 r0, s3
	addc_co_u32 r3, r49, r0
	snop 1
	ldg_b128 r190, r2, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s18
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	add_co_u32 r0, r48, s2
	mov_b32 r1, s3
	addc_co_u32 r1, r49, r1
	add_co_u32 r0, 0x10000, r0
	addc_co_u32 r1, r1, 0
	snop 1
	ldg_b128 r186, r0, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s18
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	add_co_u32 r2, r48, s2
	mov_b32 r0, s3
	addc_co_u32 r3, r49, r0
	snop 1
	ldg_b128 r182, r2, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s18
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	add_co_u32 r0, r48, s2
	mov_b32 r1, s3
	addc_co_u32 r1, r49, r1
	add_co_u32 r0, 0x10040, r0
	addc_co_u32 r1, r1, 0
	snop 1
	ldg_b128 r178, r0, 0x0
	bra LBB3_1
LBB3_10:                                ; %for.cond330.preheader
	or_b32 r0, r45, r46
	add_co_u32 r0, s12, r0
	mov_b32 r1, s13
	addc_co_u32 r1, r1, 0
	shl_b64 r46, 0, 0
	shl_b64 r48, 0, 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_12
; %bb.11:                               ; %if.then357
	shl_b64 r2, 1, r0
	add_co_u32 r38, s22, r2
	mov_b32 r2, s23
	addc_co_u32 r39, r2, r3
	snop 1
	ldg_b128 r46, r38, 0xf80
LBB3_12:                                ; %if.end409
	sor_b64 xmsk, xmsk, s2
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then357.1
	shl_b64 r38, 1, r0
	add_co_u32 r2, s22, r38
	mov_b32 r3, s23
	addc_co_u32 r3, r3, r39
	add_co_u32 r2, 0x10f80, r2
	addc_co_u32 r3, r3, 0
	snop 1
	ldg_b128 r178, r2, 0x0
LBB3_14:                                ; %if.end409.1
	sor_b64 xmsk, xmsk, s2
	shl_b64 r38, 0, 0
	shl_b64 r40, 0, 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then357.2
	shl_b64 r2, 1, r0
	add_co_u32 r38, s22, r2
	mov_b32 r2, s23
	addc_co_u32 r39, r2, r3
	snop 1
	ldg_b128 r38, r38, 0xfc0
LBB3_16:                                ; %if.end409.2
	sor_b64 xmsk, xmsk, s2
	sadd_co_i32 s0, s1, s0
	shl_b64 r42, 0, 0
	shl_b64 r44, 0, 0
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then357.3
	shl_b64 r2, 1, r0
	add_co_u32 r0, s22, r2
	mov_b32 r1, s23
	addc_co_u32 r1, r1, r3
	add_co_u32 r0, 0x10fc0, r0
	addc_co_u32 r1, r1, 0
	snop 1
	ldg_b128 r42, r0, 0x0
LBB3_18:                                ; %if.end409.3
	sor_b64 xmsk, xmsk, s2
	arrive gvmcnt(0) & bsmcnt(0)
	barrier
	arrive bsmcnt(0)
	lds_b128 r0, r36, 0x0
	lds_b128 r182, r35, 0x0
	lds_b128 r34, r34, 0x0
	smin_i32 s0, 0x80, s0
	cmp_gt_i32 s2, s0, r254
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r0, r46, r174
	mma_16x16x16f16 r110, r0, r178, r110
	mma_16x16x16f16 r174, r2, r48, r174
	mma_16x16x16f16 r110, r2, r180, r110
	lds_b128 r0, r32, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r182, r46, r170
	mma_16x16x16f16 r106, r182, r178, r106
	mma_16x16x16f16 r170, r184, r48, r170
	mma_16x16x16f16 r106, r184, r180, r106
	lds_b128 r182, r30, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r34, r46, r166
	mma_16x16x16f16 r102, r34, r178, r102
	mma_16x16x16f16 r166, r36, r48, r166
	mma_16x16x16f16 r102, r36, r180, r102
	lds_b128 r34, r28, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r0, r46, r162
	mma_16x16x16f16 r98, r0, r178, r98
	mma_16x16x16f16 r162, r2, r48, r162
	mma_16x16x16f16 r98, r2, r180, r98
	lds_b128 r0, r26, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r182, r46, r158
	mma_16x16x16f16 r94, r182, r178, r94
	mma_16x16x16f16 r158, r184, r48, r158
	mma_16x16x16f16 r94, r184, r180, r94
	lds_b128 r182, r24, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r34, r46, r154
	mma_16x16x16f16 r90, r34, r178, r90
	mma_16x16x16f16 r154, r36, r48, r154
	mma_16x16x16f16 r90, r36, r180, r90
	lds_b128 r34, r22, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r0, r46, r150
	mma_16x16x16f16 r86, r0, r178, r86
	mma_16x16x16f16 r150, r2, r48, r150
	mma_16x16x16f16 r86, r2, r180, r86
	lds_b128 r0, r21, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r182, r46, r146
	mma_16x16x16f16 r82, r182, r178, r82
	mma_16x16x16f16 r146, r184, r48, r146
	mma_16x16x16f16 r82, r184, r180, r82
	lds_b128 r182, r33, 0x0
	lds_b128 r30, r31, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r142, r34, r46, r142
	mma_16x16x16f16 r78, r34, r178, r78
	mma_16x16x16f16 r142, r36, r48, r142
	mma_16x16x16f16 r78, r36, r180, r78
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r0, r46, r138
	mma_16x16x16f16 r74, r0, r178, r74
	mma_16x16x16f16 r138, r2, r48, r138
	mma_16x16x16f16 r74, r2, r180, r74
	lds_b128 r0, r29, 0x0
	lds_b128 r26, r27, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r134, r182, r46, r134
	mma_16x16x16f16 r70, r182, r178, r70
	mma_16x16x16f16 r134, r184, r48, r134
	mma_16x16x16f16 r70, r184, r180, r70
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r30, r46, r130
	mma_16x16x16f16 r66, r30, r178, r66
	mma_16x16x16f16 r130, r32, r48, r130
	mma_16x16x16f16 r66, r32, r180, r66
	lds_b128 r30, r25, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r0, r46, r126
	mma_16x16x16f16 r62, r0, r178, r62
	mma_16x16x16f16 r126, r2, r48, r126
	mma_16x16x16f16 r62, r2, r180, r62
	lds_b128 r0, r23, 0x0
	lds_b128 r20, r20, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r122, r26, r46, r122
	mma_16x16x16f16 r58, r26, r178, r58
	lds_b128 r24, r19, 0x0
	mma_16x16x16f16 r122, r28, r48, r122
	mma_16x16x16f16 r58, r28, r180, r58
	arrive bsmcnt(3)
	mma_16x16x16f16 r118, r30, r46, r118
	mma_16x16x16f16 r54, r30, r178, r54
	mma_16x16x16f16 r118, r32, r48, r118
	mma_16x16x16f16 r54, r32, r180, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r0, r46, r114
	mma_16x16x16f16 r50, r0, r178, r50
	mma_16x16x16f16 r114, r2, r48, r114
	mma_16x16x16f16 r50, r2, r180, r50
	lds_b128 r0, r18, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r20, r38, r174
	mma_16x16x16f16 r110, r20, r42, r110
	lds_b128 r18, r17, 0x0
	mma_16x16x16f16 r174, r22, r40, r174
	mma_16x16x16f16 r110, r22, r44, r110
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r24, r38, r170
	mma_16x16x16f16 r106, r24, r42, r106
	lds_b128 r22, r16, 0x0
	mma_16x16x16f16 r170, r26, r40, r170
	mma_16x16x16f16 r106, r26, r44, r106
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r0, r38, r166
	mma_16x16x16f16 r102, r0, r42, r102
	mma_16x16x16f16 r166, r2, r40, r166
	mma_16x16x16f16 r102, r2, r44, r102
	lds_b128 r0, r15, 0x0
	lds_b128 r14, r14, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r162, r18, r38, r162
	mma_16x16x16f16 r98, r18, r42, r98
	mma_16x16x16f16 r162, r20, r40, r162
	mma_16x16x16f16 r98, r20, r44, r98
	lds_b128 r18, r13, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r158, r22, r38, r158
	mma_16x16x16f16 r94, r22, r42, r94
	mma_16x16x16f16 r158, r24, r40, r158
	mma_16x16x16f16 r94, r24, r44, r94
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r0, r38, r154
	mma_16x16x16f16 r90, r0, r42, r90
	mma_16x16x16f16 r154, r2, r40, r154
	mma_16x16x16f16 r90, r2, r44, r90
	lds_b128 r0, r12, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r14, r38, r150
	mma_16x16x16f16 r86, r14, r42, r86
	lds_b128 r12, r11, 0x0
	mma_16x16x16f16 r150, r16, r40, r150
	mma_16x16x16f16 r86, r16, r44, r86
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r18, r38, r146
	mma_16x16x16f16 r82, r18, r42, r82
	lds_b128 r16, r10, 0x0
	mma_16x16x16f16 r146, r20, r40, r146
	mma_16x16x16f16 r82, r20, r44, r82
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r0, r38, r142
	mma_16x16x16f16 r78, r0, r42, r78
	mma_16x16x16f16 r142, r2, r40, r142
	mma_16x16x16f16 r78, r2, r44, r78
	lds_b128 r0, r9, 0x0
	lds_b128 r8, r8, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r138, r12, r38, r138
	mma_16x16x16f16 r74, r12, r42, r74
	mma_16x16x16f16 r138, r14, r40, r138
	mma_16x16x16f16 r74, r14, r44, r74
	lds_b128 r12, r7, 0x0
	arrive bsmcnt(3)
	mma_16x16x16f16 r134, r16, r38, r134
	mma_16x16x16f16 r70, r16, r42, r70
	mma_16x16x16f16 r134, r18, r40, r134
	mma_16x16x16f16 r70, r18, r44, r70
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r0, r38, r130
	mma_16x16x16f16 r66, r0, r42, r66
	mma_16x16x16f16 r130, r2, r40, r130
	mma_16x16x16f16 r66, r2, r44, r66
	lds_b128 r0, r6, 0x0
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r8, r38, r126
	mma_16x16x16f16 r62, r8, r42, r62
	lds_b128 r6, r5, 0x0
	add_u16 r5_lo, 0, 0
	mma_16x16x16f16 r126, r10, r40, r126
	mma_16x16x16f16 r62, r10, r44, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r12, r38, r122
	mma_16x16x16f16 r58, r12, r42, r58
	mma_16x16x16f16 r122, r14, r40, r122
	mma_16x16x16f16 r58, r14, r44, r58
	arrive bsmcnt(1)
	mma_16x16x16f16 r118, r0, r38, r118
	mma_16x16x16f16 r54, r0, r42, r54
	mma_16x16x16f16 r118, r2, r40, r118
	shl_b64 r0, 0, s20
	mma_16x16x16f16 r54, r2, r44, r54
	arrive bsmcnt(0)
	mma_16x16x16f16 r114, r6, r38, r114
	mad_i32 r2, s10, 2, r0
	mma_16x16x16f16 r50, r6, r42, r50
	mma_16x16x16f16 r114, r8, r40, r114
	mma_16x16x16f16 r50, r8, r44, r50
	ldp_b32 r8, s33, 0x4                    ; 4-byte Folded Reload
	arrive gvmcnt(0)
	shl_b32 r0, 1, r8
	add_co_u32 r6, r2, r0
	addc_co_u32 r7, r3, 0
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_22
; %bb.19:                               ; %if.then527
	add_u16 r5_lo, 0, 0
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_21
; %bb.20:                               ; %if.then549
	shl_b32 r0, 1, r4
	add_co_u32 r0, r6, r0
	addc_co_u32 r1, r7, 0
	snop 1
	ldg_u16 r5, r0, 0x0
LBB3_21:                                ; %Flow528
	sor_b64 xmsk, xmsk, s14
LBB3_22:                                ; %for.inc570
	sor_b64 xmsk, xmsk, s12
	or_b32 r0, r4, 16
	or_b32 r1, r8, r0
	cmp_gt_i32 s14, s0, r1
	add_u16 r4_lo, 0, 0
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then527.1
	add_u16 r4_lo, 0, 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then549.1
	shl_b32 r0, 1, r0
	add_co_u32 r0, r6, r0
	addc_co_u32 r1, r7, 0
	snop 1
	ldg_u16 r4, r0, 0x0
LBB3_25:                                ; %Flow527
	sor_b64 xmsk, xmsk, s14
LBB3_26:                                ; %for.inc570.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r0, 6, r255
	mul_u24 r2, 0x38000, r0
	mov_b32 r3, 0
	mov_b32 r1, 0x100
	mul_u24 r0, 0x1c00, r8
	mad_u32 r2, s4, r1, r2
	add_co_u32 r2, r2, r0
	addc_co_u32 r3, r3, 0
	mov_b32 r0, 0x1c00
	mad_i32 r6, s10, r0, r2
	ldp_b32 r0, s33, 0x8                    ; 4-byte Folded Reload
	arrive gvmcnt(0)
	and_b32 r0, r0, 12
	shl_b32 r0, 1, r0
	add_co_u32 r1, s16, r0
	mov_b32 r0, s17
	addc_co_u32 r2, r0, 0
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_42
; %bb.27:                               ; %for.inc693
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_45
LBB3_28:                                ; %for.inc693.1
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_48
LBB3_29:                                ; %for.inc693.2
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_51
LBB3_30:                                ; %for.inc693.3
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_54
LBB3_31:                                ; %for.inc693.4
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_57
LBB3_32:                                ; %for.inc693.5
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_60
LBB3_33:                                ; %for.inc693.6
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_63
LBB3_34:                                ; %for.inc693.7
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_66
LBB3_35:                                ; %for.inc693.8
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_69
LBB3_36:                                ; %for.inc693.9
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_72
LBB3_37:                                ; %for.inc693.10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_75
LBB3_38:                                ; %for.inc693.11
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_78
LBB3_39:                                ; %for.inc693.12
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_81
LBB3_40:                                ; %for.inc693.13
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_84
LBB3_41:                                ; %for.inc693.14
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_87
	bra LBB3_90
LBB3_42:                                ; %if.then587
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then656
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r177, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r176, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r175, r0
	mul_f32 r0, r174, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_44:                                ; %Flow526
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_28
LBB3_45:                                ; %if.then587.1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_47
; %bb.46:                               ; %if.then656.1
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r173, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r172, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r171, r0
	mul_f32 r0, r170, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_47:                                ; %Flow525
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_29
LBB3_48:                                ; %if.then587.2
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then656.2
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r169, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r168, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r167, r0
	mul_f32 r0, r166, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_50:                                ; %Flow524
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_30
LBB3_51:                                ; %if.then587.3
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_53
; %bb.52:                               ; %if.then656.3
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r165, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r164, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r163, r0
	mul_f32 r0, r162, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_53:                                ; %Flow523
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_31
LBB3_54:                                ; %if.then587.4
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then656.4
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r161, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r160, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r159, r0
	mul_f32 r0, r158, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_56:                                ; %Flow522
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_32
LBB3_57:                                ; %if.then587.5
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_59
; %bb.58:                               ; %if.then656.5
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r157, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r156, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r155, r0
	mul_f32 r0, r154, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_59:                                ; %Flow521
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_33
LBB3_60:                                ; %if.then587.6
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.then656.6
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r153, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r152, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r151, r0
	mul_f32 r0, r150, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_62:                                ; %Flow520
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_34
LBB3_63:                                ; %if.then587.7
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_65
; %bb.64:                               ; %if.then656.7
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r149, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r148, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r147, r0
	mul_f32 r0, r146, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_65:                                ; %Flow519
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_35
LBB3_66:                                ; %if.then587.8
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then656.8
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r145, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r144, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r143, r0
	mul_f32 r0, r142, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x100, r8 devc
LBB3_68:                                ; %Flow518
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_36
LBB3_69:                                ; %if.then587.9
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_71
; %bb.70:                               ; %if.then656.9
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r141, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r140, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r139, r0
	mul_f32 r0, r138, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x120, r8 devc
LBB3_71:                                ; %Flow517
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_37
LBB3_72:                                ; %if.then587.10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then656.10
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r137, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r136, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r135, r0
	mul_f32 r0, r134, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x140, r8 devc
LBB3_74:                                ; %Flow516
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_38
LBB3_75:                                ; %if.then587.11
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_77
; %bb.76:                               ; %if.then656.11
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r133, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r132, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r131, r0
	mul_f32 r0, r130, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x160, r8 devc
LBB3_77:                                ; %Flow515
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_39
LBB3_78:                                ; %if.then587.12
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then656.12
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r129, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r128, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r127, r0
	mul_f32 r0, r126, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x180, r8 devc
LBB3_80:                                ; %Flow514
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_40
LBB3_81:                                ; %if.then587.13
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_83
; %bb.82:                               ; %if.then656.13
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r125, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r124, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r123, r0
	mul_f32 r0, r122, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x1a0, r8 devc
LBB3_83:                                ; %Flow513
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_41
LBB3_84:                                ; %if.then587.14
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_86
; %bb.85:                               ; %if.then656.14
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r121, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r8, r120, r0
	cvt_f32tof16 r8_lo, r8
	shl_b32 r3, 16, r3
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	mul_f32 r3, r119, r0
	mul_f32 r0, r118, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x1c0, r8 devc
LBB3_86:                                ; %Flow512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_90
LBB3_87:                                ; %if.then587.15
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_89
; %bb.88:                               ; %if.then656.15
	cvt_f16tof32 r0, r5_lo
	mul_f32 r3, r117, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r116, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r115, r0
	mul_f32 r0, r114, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	or_b32 r8, r3, r0
	addc_co_u32 r11, r2, r11
	snop 1
	stg_b64 r10, 0x1e0, r8 devc
LBB3_89:                                ; %Flow511
	sor_b64 xmsk, xmsk, s2
LBB3_90:                                ; %for.inc693.15
	sor_b64 xmsk, xmsk, s4
	or_b32 r0, r254, 16
	cmp_gt_i32 s0, s0, r0
	snop 3
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_107
; %bb.91:                               ; %for.inc693.16
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_110
LBB3_92:                                ; %for.inc693.17
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_113
LBB3_93:                                ; %for.inc693.18
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_116
LBB3_94:                                ; %for.inc693.19
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_119
LBB3_95:                                ; %for.inc693.20
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_122
LBB3_96:                                ; %for.inc693.21
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_125
LBB3_97:                                ; %for.inc693.22
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_128
LBB3_98:                                ; %for.inc693.23
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_131
LBB3_99:                                ; %for.inc693.24
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_134
LBB3_100:                               ; %for.inc693.25
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_137
LBB3_101:                               ; %for.inc693.26
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_140
LBB3_102:                               ; %for.inc693.27
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_143
LBB3_103:                               ; %for.inc693.28
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_146
LBB3_104:                               ; %for.inc693.29
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_149
LBB3_105:                               ; %for.inc693.30
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_152
LBB3_106:                               ; %for.inc693.31
	snop 0
	endk
LBB3_107:                               ; %if.then587.16
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_109
; %bb.108:                              ; %if.then656.16
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r113, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r112, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r111, r0
	mul_f32 r0, r110, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_109:                               ; %Flow510
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_92
LBB3_110:                               ; %if.then587.17
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_112
; %bb.111:                              ; %if.then656.17
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r109, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r108, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r107, r0
	mul_f32 r0, r106, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_112:                               ; %Flow509
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_93
LBB3_113:                               ; %if.then587.18
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_115
; %bb.114:                              ; %if.then656.18
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r105, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r104, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r103, r0
	mul_f32 r0, r102, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_115:                               ; %Flow508
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_94
LBB3_116:                               ; %if.then587.19
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_118
; %bb.117:                              ; %if.then656.19
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r101, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r100, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r99, r0
	mul_f32 r0, r98, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_118:                               ; %Flow507
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_95
LBB3_119:                               ; %if.then587.20
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_121
; %bb.120:                              ; %if.then656.20
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r97, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r96, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r95, r0
	mul_f32 r0, r94, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_121:                               ; %Flow506
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_96
LBB3_122:                               ; %if.then587.21
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_124
; %bb.123:                              ; %if.then656.21
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r93, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r92, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r91, r0
	mul_f32 r0, r90, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_124:                               ; %Flow505
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_97
LBB3_125:                               ; %if.then587.22
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_127
; %bb.126:                              ; %if.then656.22
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r89, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r88, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r87, r0
	mul_f32 r0, r86, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_127:                               ; %Flow504
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_98
LBB3_128:                               ; %if.then587.23
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_130
; %bb.129:                              ; %if.then656.23
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r85, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r84, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r83, r0
	mul_f32 r0, r82, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380e0, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_130:                               ; %Flow503
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_99
LBB3_131:                               ; %if.then587.24
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_133
; %bb.132:                              ; %if.then656.24
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r81, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r80, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r79, r0
	mul_f32 r0, r78, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38100, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_133:                               ; %Flow502
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_100
LBB3_134:                               ; %if.then587.25
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_136
; %bb.135:                              ; %if.then656.25
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r77, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r76, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r75, r0
	mul_f32 r0, r74, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38120, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_136:                               ; %Flow501
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_101
LBB3_137:                               ; %if.then587.26
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_139
; %bb.138:                              ; %if.then656.26
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r73, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r72, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r71, r0
	mul_f32 r0, r70, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38140, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_139:                               ; %Flow500
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_102
LBB3_140:                               ; %if.then587.27
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_142
; %bb.141:                              ; %if.then656.27
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r69, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r68, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r67, r0
	mul_f32 r0, r66, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38160, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_142:                               ; %Flow499
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_103
LBB3_143:                               ; %if.then587.28
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_145
; %bb.144:                              ; %if.then656.28
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r65, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r64, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r63, r0
	mul_f32 r0, r62, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38180, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_145:                               ; %Flow498
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_146:                               ; %if.then587.29
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_148
; %bb.147:                              ; %if.then656.29
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r61, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r60, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r59, r0
	mul_f32 r0, r58, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x381a0, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_148:                               ; %Flow497
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_105
LBB3_149:                               ; %if.then587.30
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_151
; %bb.150:                              ; %if.then656.30
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r57, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r5, r56, r0
	cvt_f32tof16 r5_lo, r5
	shl_b32 r3, 16, r3
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	mul_f32 r3, r55, r0
	mul_f32 r0, r54, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r10, 1, r6
	or_b32 r8, r3, r0
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x381c0, r0
	addc_co_u32 r11, r3, 0
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_151:                               ; %Flow496
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_106
LBB3_152:                               ; %if.then587.31
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_106
; %bb.153:                              ; %if.then656.31
	cvt_f16tof32 r0, r4_lo
	mul_f32 r3, r53, r0
	cvt_f32tof16 r3_lo, r3
	mul_f32 r4, r52, r0
	cvt_f32tof16 r4_lo, r4
	shl_b32 r3, 16, r3
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	mul_f32 r3, r51, r0
	mul_f32 r0, r50, r0
	cvt_f32tof16 r3_lo, r3
	cvt_f32tof16 r0_lo, r0
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	shl_b64 r6, 1, r6
	or_b32 r4, r3, r0
	add_co_u32 r0, r1, r6
	addc_co_u32 r1, r2, r7
	add_co_u32 r0, 0x381e0, r0
	addc_co_u32 r1, r1, 0
	snop 1
	stg_b64 r0, 0x0, r4 devc
	snop 2
	endk
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 20760
; NumMTRegsForWarps/PEU: 256
; NumSTRegsForWarps/PEU: 38
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
    .mtreg_count:    198
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    28
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
    .mtreg_count:    256
    .name:           kernel_kernel_1
    .private_memory_size: 12
    .share_memory_size: 0
    .streg_count:    38
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
