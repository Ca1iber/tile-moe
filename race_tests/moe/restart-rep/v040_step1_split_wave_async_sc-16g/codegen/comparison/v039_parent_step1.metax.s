kernel_kernel:                          ; @kernel_kernel
.Lfunc_begin2:
	.file	2 "/tmp/v039_codegen" "v039_exact_case1_case1_generated_device.cpp"
	.loc	2 56 0                          ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:56:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s6, s5
.Ltmp4:
	.loc	2 62 19 prologue_end            ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:62:19
	smov_b32 s7, 0
	sshl_b64 s2, 2, s6
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 8, r1
	and_b32 r28, 0x3f800, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s14, s2, 0x0
	shl_b32 r0, 3, r1
	ldu_b64 s2, s0, 0x30
	ldu_b128 s8, s0, 0x20
	and_b32 r4, r0, 32
	add_u32 r5, r4, r1
	mul_u24 r6, r1, 9
	arrive slcnt(0)
	sashr_i32 s15, 31, s14
	.loc	2 63 20                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:63:20
	sshl_b64 s12, 2, s14
	sadd_co_u32 s0, s22, s12
	saddc_co_u32 s1, s23, s13
	.loc	2 64 22                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:64:22
	sadd_co_u32 s12, s20, s12
	and_b32 r29, r0, 56
	and_b32 r3, 0x1fc0, r0
	and_b32 r0, r0, 16
	saddc_co_u32 s13, s21, s13
	add_u32 r0, r0, r1
	sshl_b32 s7, 18, s4
	and_b32 r5, r5, 32
	and_b32 r6, r6, 8
	sshl_b32 s5, 24, s14
	or3_b32 r2, r28, s7, r29
	and_b32 r0, r0, 16
	.loc	2 77 95                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:95
	or_b32 r7, r5, r6
	add_u32 r2, r2, s5
	.loc	2 77 265 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:265
	or3_b32 r7, r7, r3, r0
	.loc	2 77 59                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:59
	or_b32 r3, r3, r5
	.loc	2 77 180                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:180
	or3_b32 r3, r3, r0, r6
	.loc	2 77 360                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:360
	mad_i32 r10, r2, 2, s16
	.loc	2 77 476                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:476
	add_u32 r8, 0x10000, r2
	add_u32 r0, 0x20000, r2
	.loc	2 77 360                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:360
	mad_i32 r12, r8, 2, s16
	.loc	2 77 476                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:476
	add_u32 r5, 0x30000, r2
	.loc	2 77 343                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:343
	ldg_b128 r40, r10, 0x0
	.loc	2 77 360                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:360
	mad_i32 r10, r0, 2, s16
	.loc	2 77 343                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:343
	ldg_b128 r44, r12, 0x0
	.loc	2 77 360                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:360
	mad_i32 r12, r5, 2, s16
	.loc	2 77 343                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:343
	ldg_b128 r48, r10, 0x0
	.loc	2 81 367 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:367
	mad_i32 r10, r2, 2, s10
	mad_i32 r8, r8, 2, s10
	mad_i32 r14, r0, 2, s10
	mad_i32 r16, r5, 2, s10
	.loc	2 77 343                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:343
	ldg_b128 r52, r12, 0x0
	.loc	2 81 352                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:352
	ldg_b128 r56, r10, 0x0
	ldg_b128 r60, r8, 0x0
	ldg_b128 r64, r14, 0x0
	ldg_b128 r68, r16, 0x0
	shl_b32 r0, 10, r1
	and_b32 r0, 0xf0000, r0
	mov_b32 r2, s6
	shl_add_u32 r5, 18, r2, r0
	shr_b32 r2, 1, r1
	shr_b32 r9, 5, r1
	add_shl_u32 r9, r9, r2, 4
	shr_b32 r10, 4, r1
	shl_b32 r0, 6, r1
	and_b32 r9, r9, 16
	add_shl_u32 r10, r10, r1, 3
	and_b32 r8, 0x3c0, r0
	and_or_b32 r30, r10, 8, r9
	shl_b32 r6, 11, r1
	smov_b32 s14, 0x7800
	and_or_b32 r160, r6, s14, r5
	or_b32 r5, r30, r8
	or_b32 r9, 0x400, r8
	or_b32 r10, r30, r4
	or_b32 r31, 0x800, r8
	or_b32 r32, 0xc00, r8
	or_b32 r33, 0x1000, r8
	or_b32 r34, 0x1400, r8
	or_b32 r35, 0x1800, r8
	or_b32 r36, 0x1c00, r8
	xor_b32 r37, r4, 32
	or_b32 r6, r5, r4
	or_b32 r11, r10, r9
	or_b32 r12, r10, r31
	or3_b32 r4, r30, r9, r37
	or_b32 r9, r10, r32
	or_b32 r13, r10, r33
	or_b32 r20, r10, r34
	or_b32 r21, r10, r35
	or_b32 r10, r10, r36
	or_b32 r5, r5, r37
	.loc	2 77 265                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:265
	shl_b32 r3, 1, r3
	.loc	2 81 40                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:40
	sadd_co_i32 s14, 0x4000, 0
	shl_add_u32 r8, 1, r4, 0
	.loc	2 77 40                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:40
	shl_b32 r4, 1, r7
	add_u32 r7, 0x2000, r3
	shl_add_u32 r18, 1, r6, 0
	add_u32 r6, 0, r3
	shl_add_u32 r17, 1, r11, 0
	shl_add_u32 r11, 1, r10, 0
	add_u32 r10, 0x3000, r3
	shl_add_u32 r15, 1, r9, 0
	shl_add_u32 r9, 1, r5, 0
	add_u32 r5, 0x1000, r3
	.loc	2 81 40                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:40
	add_u32 r3, s14, r3
	shl_add_u32 r16, 1, r12, 0
	shl_add_u32 r12, 1, r21, 0
	shl_add_u32 r14, 1, r13, 0
	shl_add_u32 r13, 1, r20, 0
	.loc	2 77 40                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:40
	add_u32 r20, 0, r4
	add_u32 r21, 0, r5
	.loc	2 77 343 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:343
	add_i32 r38, 0x1000, r6
	add_i32 r39, 0x2000, r6
	add_i32 r6, 0x3000, r6
	.loc	2 81 40 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:40
	add_u32 r24, s14, r4
	add_u32 r25, s14, r5
	.loc	2 81 352 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:352
	add_i32 r4, 0x1000, r3
	add_i32 r5, 0x2000, r3
	add_i32 r3, 0x3000, r3
	.loc	2 77 40 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:40
	add_u32 r23, 0, r10
	.loc	2 63 20                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:63:20
	ldu_b32 s0, s0, 0x0
	.loc	2 64 22                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:64:22
	ldu_b32 s1, s12, 0x0
	sadd_co_u32 s12, 0x80, s16
	.loc	2 81 40                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:40
	add_u32 r27, s14, r10
	saddc_co_u32 s13, s17, 0
	.loc	2 77 40                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:40
	add_u32 r22, 0, r7
	.loc	2 81 40                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:40
	add_u32 r26, s14, r7
	sadd_co_u32 s10, 0x80, s10
	saddc_co_u32 s11, s11, 0
	.loc	2 83 3                          ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:83:3
	sadd_co_i32 s5, s5, s7
	mov_b32 r157, 0
	or_b32 r156, 0x8000, r160
	or3_b32 r158, s5, r28, r29
	and_b32 r28, r1, 48
	mov_b32 r161, 0
	and_b32 r19, r2, 24
	shr_b32 r0, 2, r1
	mov_b32 r159, 0
	or_b32 r162, r19, r156
	or_b32 r166, r19, r160
	smov_b64 s14, 0
	.loc	2 77 343                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:77:343
	arrive gvmcnt(7)
	sts_b128 r20, 0x0, r40
	arrive gvmcnt(6)
	sts_b128 r38, 0x0, r44
	arrive gvmcnt(5)
	sts_b128 r39, 0x0, r48
	arrive gvmcnt(4)
	sts_b128 r6, 0x0, r52
	.loc	2 81 352                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:81:352
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r56
	arrive gvmcnt(2)
	sts_b128 r4, 0x0, r60
	arrive gvmcnt(1)
	sts_b128 r5, 0x0, r64
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r68
	or3_b32 r3, r30, r31, r37
	shl_add_u32 r10, 1, r3, 0
	or3_b32 r3, r30, r32, r37
	shl_add_u32 r7, 1, r3, 0
	or3_b32 r3, r30, r33, r37
	shl_add_u32 r6, 1, r3, 0
	or3_b32 r3, r30, r34, r37
	shl_add_u32 r5, 1, r3, 0
	or3_b32 r3, r30, r35, r37
	shl_add_u32 r4, 1, r3, 0
	or3_b32 r3, r30, r36, r37
	.loc	2 83 3                          ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:83:3
	shl_b64 r30, 1, r156
	or_b32 r29, r28, r30
	add_co_u32 r29, r29, s8
	mov_b32 r30, s9
	addc_co_u32 r31, r31, r30
	add_co_u32 r164, r29, 8
	shl_b64 r32, 1, r160
	addc_co_u32 r165, r31, 0
	or_b32 r28, r28, r32
	add_co_u32 r28, r28, s8
	addc_co_u32 r29, r33, r30
	add_co_u32 r168, r28, 8
	addc_co_u32 r169, r29, 0
	.loc	2 0 0 is_stmt 0                 ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:0
	shl_b64 r28, 0, 0
	shl_b64 r30, 0, 0
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
	shl_b64 r148, 0, r28
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
	shl_b64 r152, 0, r28
	shl_add_u32 r3, 1, r3, 0
	.loc	2 83 3                          ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:83:3
	mov_b32 r157, 0
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
	shl_b64 r150, 0, r30
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
	shl_b64 r154, 0, r30
	.p2align	5
LBB2_1:                                 ; %for.cond150.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 86 61 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:86:61
	add_co_u32 r170, r166, s14
	mov_b32 r161, s15
	addc_co_u32 r171, r157, r161
	add_co_u32 r172, r162, s14
	.loc	2 86 231 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:86:231
	shl_b64 r170, 1, r170
	.loc	2 86 61                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:86:61
	addc_co_u32 r173, r159, r161
	or_b32 r161, r170, 64
	add_co_u32 r170, s8, r161
	mov_b32 r161, s9
	.loc	2 86 231                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:86:231
	shl_b64 r172, 1, r172
	.loc	2 86 61                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:86:61
	addc_co_u32 r171, r161, r171
	or_b32 r163, r172, 64
	add_co_u32 r174, s8, r163
	addc_co_u32 r175, r161, r173
	.loc	2 86 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:86:43
	ldg_b128 r178, r168, -0x8
	ldg_b128 r182, r164, -0x8
	ldg_b128 r170, r170, 0x0
	ldg_b128 r174, r174, 0x0
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive 0
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r186, r18, 0x0
	lds_b128 r190, r17, 0x0
	lds_b128 r194, r16, 0x0
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	add_i32 r161, 0x4000, r18
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r186, r178, r148
	mma_16x16x16f16 r84, r186, r182, r84
	mma_16x16x16f16 r148, r188, r180, r148
	mma_16x16x16f16 r84, r188, r184, r84
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r186, r15, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r178, r140
	mma_16x16x16f16 r76, r190, r182, r76
	mma_16x16x16f16 r140, r192, r180, r140
	mma_16x16x16f16 r76, r192, r184, r76
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r190, r14, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r194, r178, r132
	mma_16x16x16f16 r68, r194, r182, r68
	mma_16x16x16f16 r132, r196, r180, r132
	mma_16x16x16f16 r68, r196, r184, r68
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r194, r13, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r186, r178, r124
	mma_16x16x16f16 r60, r186, r182, r60
	mma_16x16x16f16 r124, r188, r180, r124
	mma_16x16x16f16 r60, r188, r184, r60
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r186, r12, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r190, r178, r116
	mma_16x16x16f16 r52, r190, r182, r52
	mma_16x16x16f16 r116, r192, r180, r116
	mma_16x16x16f16 r52, r192, r184, r52
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r190, r11, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r194, r178, r108
	mma_16x16x16f16 r44, r194, r182, r44
	mma_16x16x16f16 r108, r196, r180, r108
	mma_16x16x16f16 r44, r196, r184, r44
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r194, r161, 0x0
	add_i32 r161, 0x4000, r17
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r186, r178, r100
	mma_16x16x16f16 r36, r186, r182, r36
	mma_16x16x16f16 r100, r188, r180, r100
	mma_16x16x16f16 r36, r188, r184, r36
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r16
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r190, r178, r92
	mma_16x16x16f16 r28, r190, r182, r28
	mma_16x16x16f16 r92, r192, r180, r92
	mma_16x16x16f16 r28, r192, r184, r28
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r190, r161, 0x0
	add_i32 r161, 0x4000, r15
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r194, r178, r152
	mma_16x16x16f16 r88, r194, r182, r88
	mma_16x16x16f16 r152, r196, r180, r152
	mma_16x16x16f16 r88, r196, r184, r88
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r194, r161, 0x0
	add_i32 r161, 0x4000, r14
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r186, r178, r144
	mma_16x16x16f16 r80, r186, r182, r80
	mma_16x16x16f16 r144, r188, r180, r144
	mma_16x16x16f16 r80, r188, r184, r80
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r13
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r190, r178, r136
	mma_16x16x16f16 r72, r190, r182, r72
	mma_16x16x16f16 r136, r192, r180, r136
	mma_16x16x16f16 r72, r192, r184, r72
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r190, r161, 0x0
	add_i32 r161, 0x4000, r12
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r178, r128
	mma_16x16x16f16 r64, r194, r182, r64
	mma_16x16x16f16 r128, r196, r180, r128
	mma_16x16x16f16 r64, r196, r184, r64
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r194, r161, 0x0
	add_i32 r161, 0x4000, r11
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r186, r178, r120
	mma_16x16x16f16 r56, r186, r182, r56
	mma_16x16x16f16 r120, r188, r180, r120
	mma_16x16x16f16 r56, r188, r184, r56
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r9
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r190, r178, r112
	mma_16x16x16f16 r48, r190, r182, r48
	mma_16x16x16f16 r112, r192, r180, r112
	mma_16x16x16f16 r48, r192, r184, r48
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r190, r9, 0x0
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r194, r178, r104
	mma_16x16x16f16 r40, r194, r182, r40
	mma_16x16x16f16 r104, r196, r180, r104
	mma_16x16x16f16 r40, r196, r184, r40
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r194, r8, 0x0
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r186, r178, r96
	mma_16x16x16f16 r32, r186, r182, r32
	mma_16x16x16f16 r96, r188, r180, r96
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r178, r10, 0x0
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	mma_16x16x16f16 r32, r188, r184, r32
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r182, r7, 0x0
	lds_b128 r186, r6, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(4)
	mma_16x16x16f16 r148, r190, r170, r148
	mma_16x16x16f16 r84, r190, r174, r84
	mma_16x16x16f16 r148, r192, r172, r148
	mma_16x16x16f16 r84, r192, r176, r84
	arrive bsmcnt(3)
	mma_16x16x16f16 r140, r194, r170, r140
	mma_16x16x16f16 r76, r194, r174, r76
	mma_16x16x16f16 r140, r196, r172, r140
	mma_16x16x16f16 r76, r196, r176, r76
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r178, r170, r132
	mma_16x16x16f16 r68, r178, r174, r68
	mma_16x16x16f16 r132, r180, r172, r132
	mma_16x16x16f16 r68, r180, r176, r68
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r178, r5, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r182, r170, r124
	mma_16x16x16f16 r60, r182, r174, r60
	mma_16x16x16f16 r124, r184, r172, r124
	mma_16x16x16f16 r60, r184, r176, r60
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r182, r4, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r186, r170, r116
	mma_16x16x16f16 r52, r186, r174, r52
	mma_16x16x16f16 r116, r188, r172, r116
	mma_16x16x16f16 r52, r188, r176, r52
	.loc	2 91 43                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:91:43
	lds_b128 r186, r3, 0x0
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r178, r170, r108
	mma_16x16x16f16 r44, r178, r174, r44
	mma_16x16x16f16 r108, r180, r172, r108
	mma_16x16x16f16 r44, r180, r176, r44
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r178, r161, 0x0
	add_i32 r161, 0x4000, r8
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r182, r170, r100
	mma_16x16x16f16 r36, r182, r174, r36
	mma_16x16x16f16 r100, r184, r172, r100
	mma_16x16x16f16 r36, r184, r176, r36
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r182, r161, 0x0
	add_i32 r161, 0x4000, r10
	.loc	2 97 57                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:97:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r186, r170, r92
	mma_16x16x16f16 r28, r186, r174, r28
	mma_16x16x16f16 r92, r188, r172, r92
	mma_16x16x16f16 r28, r188, r176, r28
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r7
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r178, r170, r152
	mma_16x16x16f16 r88, r178, r174, r88
	mma_16x16x16f16 r152, r180, r172, r152
	mma_16x16x16f16 r88, r180, r176, r88
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r178, r161, 0x0
	add_i32 r161, 0x4000, r6
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r182, r170, r144
	mma_16x16x16f16 r80, r182, r174, r80
	mma_16x16x16f16 r144, r184, r172, r144
	mma_16x16x16f16 r80, r184, r176, r80
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r182, r161, 0x0
	add_i32 r161, 0x4000, r5
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r186, r170, r136
	mma_16x16x16f16 r72, r186, r174, r72
	mma_16x16x16f16 r136, r188, r172, r136
	mma_16x16x16f16 r72, r188, r176, r72
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r4
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r178, r170, r128
	mma_16x16x16f16 r64, r178, r174, r64
	mma_16x16x16f16 r128, r180, r172, r128
	mma_16x16x16f16 r64, r180, r176, r64
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r178, r161, 0x0
	add_i32 r161, 0x4000, r3
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r182, r170, r120
	mma_16x16x16f16 r56, r182, r174, r56
	mma_16x16x16f16 r120, r184, r172, r120
	mma_16x16x16f16 r56, r184, r176, r56
	.loc	2 105 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:105:45
	lds_b128 r182, r161, 0x0
	.loc	2 111 55                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:111:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r186, r170, r112
	mma_16x16x16f16 r48, r186, r174, r48
	mma_16x16x16f16 r112, r188, r172, r112
	mma_16x16x16f16 r48, r188, r176, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r104, r178, r170, r104
	mma_16x16x16f16 r40, r178, r174, r40
	mma_16x16x16f16 r104, r180, r172, r104
	mma_16x16x16f16 r40, r180, r176, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r96, r182, r170, r96
	mma_16x16x16f16 r32, r182, r174, r32
	mma_16x16x16f16 r96, r184, r172, r96
	mma_16x16x16f16 r32, r184, r176, r32
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 122 362                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:122:362
	add_u32 r161, r158, s14
	add_u32 r163, 0x10000, r161
	add_u32 r167, 0x20000, r161
	add_u32 r170, 0x30000, r161
	mad_i32 r172, r161, 2, s12
	mad_i32 r180, r170, 2, s12
	.loc	2 126 369                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:126:369
	mad_i32 r174, r161, 2, s10
	.loc	2 122 362                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:122:362
	mad_i32 r176, r163, 2, s12
	mad_i32 r178, r167, 2, s12
	.loc	2 126 369                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:126:369
	mad_i32 r182, r163, 2, s10
	mad_i32 r184, r167, 2, s10
	mad_i32 r170, r170, 2, s10
	.loc	2 122 345                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:122:345
	ldg_b128 r186, r172, 0x0
	ldg_b128 r190, r176, 0x0
	ldg_b128 r176, r178, 0x0
	ldg_b128 r194, r180, 0x0
	.loc	2 126 354                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:126:354
	ldg_b128 r172, r174, 0x0
	ldg_b128 r180, r182, 0x0
	ldg_b128 r198, r184, 0x0
	ldg_b128 r202, r170, 0x0
	.loc	2 83 21                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:83:21
	sadd_co_u32 s14, s14, 64
	add_co_u32 r164, 0x80, r164
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r165, r165, 0
	add_co_u32 r168, 0x80, r168
	scmp_ne_u64 0x7c0, s14
	addc_co_u32 r169, r169, 0
	.loc	2 122 345                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:122:345
	arrive gvmcnt(7)
	sts_b128 r20, 0x0, r186
	arrive gvmcnt(6)
	sts_b128 r21, 0x0, r190
	arrive gvmcnt(5)
	sts_b128 r22, 0x0, r176
	arrive gvmcnt(4)
	sts_b128 r23, 0x0, r194
	.loc	2 126 354                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:126:354
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r172
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r180
	arrive gvmcnt(1)
	sts_b128 r26, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r27, 0x0, r202
	.loc	2 83 3                          ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:83:3
	bra_smsks LBB2_1
; %bb.2:                                ; %for.cond496.preheader
	.loc	2 131 217                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:217
	or_b32 r20, r160, r19
	.loc	2 131 259 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:259
	or_b32 r22, 0x7c0, r20
	.loc	2 131 59                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:59
	mov_b32 r23, 0
	shl_b64 r24, 1, r22
	smov_b32 s5, 0x7c0
	add_co_u32 r24, s8, r24
	mov_b32 r21, s9
	addc_co_u32 r25, r21, r25
	.loc	2 131 259                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:259
	or3_b32 r19, r19, r156, s5
	or_b32 r22, 0x7e0, r20
	.loc	2 131 59                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:59
	mad_i32 r26, r19, 2, s8
	.loc	2 131 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:41
	ldg_b128 r156, r24, 0x0
	.loc	2 131 59                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:59
	shl_b64 r24, 1, r22
	add_co_u32 r24, s8, r24
	.loc	2 131 259                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:259
	or_b32 r22, 0x87e0, r20
	.loc	2 131 59                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:59
	addc_co_u32 r25, r21, r25
	shl_b64 r22, 1, r22
	.loc	2 131 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:41
	ldg_b128 r160, r26, 0x0
	.loc	2 131 59                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:59
	add_co_u32 r26, s8, r22
	addc_co_u32 r27, r21, r23
	.loc	2 131 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:131:41
	ldg_b128 r20, r24, 0x0
	snop 0
	ldg_b128 r24, r26, 0x0
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r164, r18, 0x0
	lds_b128 r168, r17, 0x0
	lds_b128 r172, r16, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r18, 0x4000, r18
	add_i32 r17, 0x4000, r17
	add_i32 r16, 0x4000, r16
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r164, r156, r148
	sshl_b32 s5, 20, s6
	sshl_b32 s4, 7, s4
	sadd_co_i32 s4, s4, s5
	mma_16x16x16f16 r84, r164, r160, r84
	mma_16x16x16f16 r148, r166, r158, r148
	mma_16x16x16f16 r84, r166, r162, r84
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r164, r15, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r15, 0x4000, r15
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r168, r156, r140
	mma_16x16x16f16 r76, r168, r160, r76
	mma_16x16x16f16 r140, r170, r158, r140
	mma_16x16x16f16 r76, r170, r162, r76
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r168, r14, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r14, 0x4000, r14
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r172, r156, r132
	mma_16x16x16f16 r68, r172, r160, r68
	mma_16x16x16f16 r132, r174, r158, r132
	mma_16x16x16f16 r68, r174, r162, r68
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r172, r13, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r13, 0x4000, r13
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r164, r156, r124
	mma_16x16x16f16 r60, r164, r160, r60
	mma_16x16x16f16 r124, r166, r158, r124
	mma_16x16x16f16 r60, r166, r162, r60
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r164, r12, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r12, 0x4000, r12
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r168, r156, r116
	mma_16x16x16f16 r52, r168, r160, r52
	mma_16x16x16f16 r116, r170, r158, r116
	mma_16x16x16f16 r52, r170, r162, r52
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r168, r11, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r11, 0x4000, r11
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r172, r156, r108
	mma_16x16x16f16 r44, r172, r160, r44
	mma_16x16x16f16 r108, r174, r158, r108
	mma_16x16x16f16 r44, r174, r162, r44
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r172, r18, 0x0
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r164, r156, r100
	mma_16x16x16f16 r36, r164, r160, r36
	mma_16x16x16f16 r100, r166, r158, r100
	mma_16x16x16f16 r36, r166, r162, r36
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r164, r17, 0x0
	lds_b128 r16, r16, 0x0
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r168, r156, r92
	mma_16x16x16f16 r28, r168, r160, r28
	mma_16x16x16f16 r92, r170, r158, r92
	mma_16x16x16f16 r28, r170, r162, r28
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r168, r15, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(3)
	mma_16x16x16f16 r152, r172, r156, r152
	mma_16x16x16f16 r88, r172, r160, r88
	mma_16x16x16f16 r152, r174, r158, r152
	mma_16x16x16f16 r88, r174, r162, r88
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r164, r156, r144
	mma_16x16x16f16 r80, r164, r160, r80
	mma_16x16x16f16 r144, r166, r158, r144
	mma_16x16x16f16 r80, r166, r162, r80
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r164, r14, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r16, r156, r136
	mma_16x16x16f16 r72, r16, r160, r72
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r14, r13, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	mma_16x16x16f16 r136, r18, r158, r136
	mma_16x16x16f16 r72, r18, r162, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r168, r156, r128
	mma_16x16x16f16 r64, r168, r160, r64
	mma_16x16x16f16 r128, r170, r158, r128
	mma_16x16x16f16 r64, r170, r162, r64
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r168, r12, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r164, r156, r120
	mma_16x16x16f16 r56, r164, r160, r56
	mma_16x16x16f16 r120, r166, r158, r120
	mma_16x16x16f16 r56, r166, r162, r56
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r164, r11, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r14, r156, r112
	mma_16x16x16f16 r48, r14, r160, r48
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r12, r9, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r9, 0x4000, r9
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	mma_16x16x16f16 r112, r16, r158, r112
	mma_16x16x16f16 r48, r16, r162, r48
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r16, r8, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r8, 0x4000, r8
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(3)
	mma_16x16x16f16 r104, r168, r156, r104
	mma_16x16x16f16 r40, r168, r160, r40
	mma_16x16x16f16 r104, r170, r158, r104
	mma_16x16x16f16 r40, r170, r162, r40
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r164, r156, r96
	mma_16x16x16f16 r32, r164, r160, r32
	mma_16x16x16f16 r96, r166, r158, r96
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r156, r10, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	mma_16x16x16f16 r32, r166, r162, r32
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r12, r20, r148
	mma_16x16x16f16 r84, r12, r24, r84
	mma_16x16x16f16 r148, r14, r22, r148
	mma_16x16x16f16 r84, r14, r26, r84
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r12, r7, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r7, 0x4000, r7
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r16, r20, r140
	mma_16x16x16f16 r76, r16, r24, r76
	mma_16x16x16f16 r140, r18, r22, r140
	mma_16x16x16f16 r76, r18, r26, r76
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r16, r6, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r6, 0x4000, r6
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r156, r20, r132
	mma_16x16x16f16 r68, r156, r24, r68
	mma_16x16x16f16 r132, r158, r22, r132
	mma_16x16x16f16 r68, r158, r26, r68
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r156, r5, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r5, 0x4000, r5
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r12, r20, r124
	mma_16x16x16f16 r60, r12, r24, r60
	mma_16x16x16f16 r124, r14, r22, r124
	mma_16x16x16f16 r60, r14, r26, r60
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r12, r4, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r4, 0x4000, r4
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r16, r20, r116
	mma_16x16x16f16 r52, r16, r24, r52
	mma_16x16x16f16 r116, r18, r22, r116
	mma_16x16x16f16 r52, r18, r26, r52
	.loc	2 136 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:136:43
	lds_b128 r16, r3, 0x0
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	add_i32 r3, 0x4000, r3
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r156, r20, r108
	mma_16x16x16f16 r44, r156, r24, r44
	mma_16x16x16f16 r108, r158, r22, r108
	mma_16x16x16f16 r44, r158, r26, r44
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r156, r9, 0x0
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r12, r20, r100
	mma_16x16x16f16 r36, r12, r24, r36
	mma_16x16x16f16 r100, r14, r22, r100
	mma_16x16x16f16 r36, r14, r26, r36
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r12, r8, 0x0
	add_i32 r8, 0x4000, r10
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r16, r20, r92
	mma_16x16x16f16 r28, r16, r24, r28
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r8, r8, 0x0
	.loc	2 142 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:142:58
	mma_16x16x16f16 r92, r18, r22, r92
	mma_16x16x16f16 r28, r18, r26, r28
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r16, r7, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(3)
	mma_16x16x16f16 r152, r156, r20, r152
	mma_16x16x16f16 r88, r156, r24, r88
	mma_16x16x16f16 r152, r158, r22, r152
	mma_16x16x16f16 r88, r158, r26, r88
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r12, r20, r144
	mma_16x16x16f16 r80, r12, r24, r80
	mma_16x16x16f16 r144, r14, r22, r144
	mma_16x16x16f16 r80, r14, r26, r80
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r12, r6, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r8, r20, r136
	mma_16x16x16f16 r72, r8, r24, r72
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r6, r5, 0x0
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	mma_16x16x16f16 r136, r10, r22, r136
	mma_16x16x16f16 r72, r10, r26, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r16, r20, r128
	mma_16x16x16f16 r64, r16, r24, r64
	mma_16x16x16f16 r128, r18, r22, r128
	mma_16x16x16f16 r64, r18, r26, r64
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r16, r4, 0x0
	shl_b32 r4, 13, r1
	and_b32 r4, 0x1e000, r4
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r12, r20, r120
	mma_16x16x16f16 r56, r12, r24, r56
	.loc	2 150 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:150:43
	lds_b128 r10, r3, 0x0
	shl_b32 r3, 12, r1
	and_b32 r3, 0x3c0000, r3
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	mma_16x16x16f16 r120, r14, r22, r120
	add_u32 r3, s4, r3
	and_b32 r1, r1, 15
	smov_b32 s4, 0x1e0
	mma_16x16x16f16 r56, r14, r26, r56
	.loc	2 206 66                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:66
	and_or_b32 r1, r2, s4, r1
	sshl_b32 s4, 7, s6
	ssub_co_i32 s0, s0, s4
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r6, r20, r112
	sadd_co_i32 s0, s0, s1
	.loc	2 206 95                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:95
	cmp_lt_i32 s4, r1, s0
	add_u32 r3, r3, r4
	.loc	2 156 56                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:156:56
	mma_16x16x16f16 r48, r6, r24, r48
	and_or_b32 r0, r0, 12, r3
	mma_16x16x16f16 r112, r8, r22, r112
	mma_16x16x16f16 r48, r8, r26, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r104, r16, r20, r104
	mma_16x16x16f16 r40, r16, r24, r40
	mma_16x16x16f16 r104, r18, r22, r104
	mma_16x16x16f16 r40, r18, r26, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r96, r10, r20, r96
	mma_16x16x16f16 r32, r10, r24, r32
	mma_16x16x16f16 r96, r12, r22, r96
	mma_16x16x16f16 r32, r12, r26, r32
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_20
; %bb.3:                                ; %if.end
	.loc	2 0 9 is_stmt 0                 ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_21
LBB2_4:                                 ; %if.end.1
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_22
LBB2_5:                                 ; %if.end.2
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_23
LBB2_6:                                 ; %if.end.3
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_24
LBB2_7:                                 ; %if.end.4
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_25
LBB2_8:                                 ; %if.end.5
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_26
LBB2_9:                                 ; %if.end.6
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_11
LBB2_10:                                ; %if.then.7
	.loc	2 188 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r95
.Ltmp11:
	.file	4 "/opt/maca/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s4
	fmka_f32 r6, r95, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s4
	exp_f32 r6, r6
.Ltmp12:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r94
.Ltmp13:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp14:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r95, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r99
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s4
	fmka_f32 r7, r94, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s4
	exp_f32 r7, r7
.Ltmp16:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r93
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp18:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r94, r6
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s4
	fmka_f32 r8, r93, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s4
	exp_f32 r8, r8
.Ltmp20:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r92
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp22:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r93, r7
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s4
	fmka_f32 r5, r92, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s4
	exp_f32 r5, r5
.Ltmp24:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r92, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r96
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r97
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r98
.Ltmp25:
	.file	5 "/opt/maca/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp26:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp27:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp28:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp29:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	mov_b32 r4, 0xe0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
LBB2_11:                                ; %if.end.7
	.loc	2 0 262                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:262
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 66 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:66
	or_b32 r1, r1, 16
	.loc	2 206 95 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:95
	cmp_lt_i32 s0, r1, s0
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_27
; %bb.12:                               ; %if.end.8
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_28
LBB2_13:                                ; %if.end.9
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_29
LBB2_14:                                ; %if.end.10
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_30
LBB2_15:                                ; %if.end.11
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_31
LBB2_16:                                ; %if.end.12
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_32
LBB2_17:                                ; %if.end.13
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_33
LBB2_18:                                ; %if.end.14
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_34
LBB2_19:                                ; %if.end.15
	.loc	2 220 1 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:220:1
	snop 1
	endk
LBB2_20:                                ; %if.then
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r151
.Ltmp30:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r151, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp31:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r150
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp33:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r151, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r155
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r150, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp35:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r149
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp37:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r150, r6
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r149, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp39:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r148
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp41:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r149, r7
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r148, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp43:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r148, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r152
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r153
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r154
.Ltmp44:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp45:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp47:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp48:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_b32 r4, 1, r0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_4
LBB2_21:                                ; %if.then.1
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r143
.Ltmp49:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r143, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp50:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r142
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp52:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r143, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r147
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r142, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp54:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r141
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp56:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r142, r6
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r141, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp58:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r140
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp60:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r141, r7
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r140, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp62:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r140, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r144
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r145
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r146
.Ltmp63:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp64:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp66:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp67:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_or_b32 r4, 1, r0, 32
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_5
LBB2_22:                                ; %if.then.2
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r135
.Ltmp68:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r135, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp69:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r134
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp71:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r135, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r139
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r134, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp73:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r133
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp75:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r134, r6
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r133, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp77:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r132
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp79:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r133, r7
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r132, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp81:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r132, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r136
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r137
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r138
.Ltmp82:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp83:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp85:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp86:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_or_b32 r4, 1, r0, 64
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_6
LBB2_23:                                ; %if.then.3
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r127
.Ltmp87:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r127, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp88:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r126
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp90:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r127, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r131
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r126, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp92:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r125
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp94:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r126, r6
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r125, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp96:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r124
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp98:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r125, r7
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r124, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp100:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r124, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r128
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r129
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r130
.Ltmp101:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp102:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp104:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp105:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	mov_b32 r4, 0x60
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_7
LBB2_24:                                ; %if.then.4
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r119
.Ltmp106:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r119, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp107:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r118
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp109:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r119, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r123
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r118, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp111:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r117
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp113:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r118, r6
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r117, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp115:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r116
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp117:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r117, r7
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r116, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp119:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r116, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r120
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r121
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r122
.Ltmp120:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp121:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp123:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp124:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	mov_b32 r4, 0x80
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_8
LBB2_25:                                ; %if.then.5
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r111
.Ltmp125:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r111, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp126:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r110
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp128:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r111, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r115
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r110, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp130:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r109
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp132:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r110, r6
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r109, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp134:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r108
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp136:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r109, r7
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r108, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp138:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r108, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r112
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r113
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r114
.Ltmp139:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp140:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp142:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp143:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	mov_b32 r4, 0xa0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_9
LBB2_26:                                ; %if.then.6
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r2, 0xbfb8aa3b, r103
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r103, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp145:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r6, 0xbfb8aa3b, r102
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp147:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r4, r103, r4
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r4, r4, r107
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r102, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp149:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r7, 0xbfb8aa3b, r101
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp151:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r6, r102, r6
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r101, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp153:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r8, 0xbfb8aa3b, r100
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp155:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r7, r101, r7
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r100, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp157:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r2, r100, r2
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r2, r2, r104
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r3, r7, r105
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r5, r6, r106
.Ltmp158:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp159:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp161:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp162:
	.loc	2 217 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 217 27 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	mov_b32 r4, 0xc0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_10
	bra LBB2_11
LBB2_27:                                ; %if.then.8
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r87
.Ltmp163:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r87, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp164:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r86
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp166:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r87, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r91
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r86, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp168:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r85
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp170:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r86, r5
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r85, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp172:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r84
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp174:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r85, r6
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r84, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp176:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r84, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r88
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r89
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r90
.Ltmp177:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp178:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp180:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp181:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40000, r3
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r9, r4, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_13
LBB2_28:                                ; %if.then.9
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r79
.Ltmp182:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r79, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp183:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r78
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp185:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r79, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r83
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r78, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp187:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r77
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp189:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r78, r5
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r77, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp191:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r76
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp193:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r77, r6
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r76, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp195:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r76, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r80
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r81
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r82
.Ltmp196:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp197:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp199:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp200:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40020, r3
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r9, r4, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_14
LBB2_29:                                ; %if.then.10
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r71
.Ltmp201:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r71, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp202:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r70
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp204:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r71, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r75
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r70, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp206:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r69
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp208:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r70, r5
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r69, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp210:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r68
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp212:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r69, r6
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r68, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp214:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r68, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r72
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r73
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r74
.Ltmp215:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp216:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp218:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp219:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40040, r3
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r9, r4, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_15
LBB2_30:                                ; %if.then.11
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r63
.Ltmp220:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r63, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp221:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r62
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp223:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r63, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r67
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r62, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp225:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r61
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp227:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r62, r5
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r61, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp229:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r60
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp231:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r61, r6
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r60, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp233:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r60, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r64
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r65
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r66
.Ltmp234:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp235:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp237:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp238:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40060, r3
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r9, r4, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_16
LBB2_31:                                ; %if.then.12
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r55
.Ltmp239:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r55, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp240:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r54
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp242:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r55, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r59
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r54, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp244:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r53
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp246:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r54, r5
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r53, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp248:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r52
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp250:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r53, r6
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r52, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp252:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r52, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r56
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r57
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r58
.Ltmp253:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp254:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp256:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp257:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40080, r3
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r9, r4, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_17
LBB2_32:                                ; %if.then.13
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r47
.Ltmp258:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r47, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp259:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r46
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp261:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r47, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r51
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r46, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp263:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r45
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp265:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r46, r5
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r45, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp267:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r44
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp269:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r45, r6
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r44, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp271:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r44, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r48
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r49
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r50
.Ltmp272:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp273:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp275:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp276:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400a0, r3
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r9, r4, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_18
LBB2_33:                                ; %if.then.14
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r39
.Ltmp277:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r39, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp278:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r38
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp280:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r39, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r43
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r38, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp282:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r37
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp284:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r38, r5
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r37, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp286:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r36
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp288:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r37, r6
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r36, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp290:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r36, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r40
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r41
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r42
.Ltmp291:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp292:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp294:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp295:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400c0, r3
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r9, r4, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 206 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:206:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_19
LBB2_34:                                ; %if.then.15
	.loc	2 188 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:188:27
	mul_f32 r1, 0xbfb8aa3b, r31
.Ltmp296:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r31, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp297:
	.loc	2 196 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:196:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
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
	.loc	2 187 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:187:27
	mul_f32 r5, 0xbfb8aa3b, r30
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp299:
	.loc	2 200 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:200:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 204 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:204:20
	mul_f32 r3, r31, r3
	.loc	2 214 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:214:24
	mul_f32 r3, r3, r35
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r30, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp301:
	.loc	2 195 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:195:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:186:27
	mul_f32 r6, 0xbfb8aa3b, r29
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp303:
	.loc	2 199 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:199:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 203 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:203:20
	mul_f32 r5, r30, r5
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r29, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp305:
	.loc	2 194 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:194:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:185:27
	mul_f32 r7, 0xbfb8aa3b, r28
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp307:
	.loc	2 198 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:198:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 202 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:202:20
	mul_f32 r6, r29, r6
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r28, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp309:
	.loc	2 193 26                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:193:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 197 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:197:24
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
	.loc	2 201 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:201:20
	mul_f32 r1, r28, r1
	.loc	2 211 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:211:24
	mul_f32 r1, r1, r32
	.loc	2 212 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:212:24
	mul_f32 r2, r6, r33
	.loc	2 213 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:213:24
	mul_f32 r4, r5, r34
.Ltmp310:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp311:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp313:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp314:
	.loc	2 217 27 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s2, r0
	mov_b32 r3, s3
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x400e0, r0
	.loc	2 217 262 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	shl_b32 r0, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 217 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:27
	addc_co_u32 r7, r3, 0
	.loc	2 217 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:217:262
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 220 1 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:220:1
	snop 2
	endk
.Ltmp315:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
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
.Lfunc_end2:
	.size	kernel_kernel, .Lfunc_end2-kernel_kernel
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 23912
; NumMTRegsForWarps/PEU: 206
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
