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
	.file	2 "/tmp/v036_codegen_compare" "v036_case1_generated_device.cpp"
	.loc	2 26 0                          ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:26:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s6, s5
.Ltmp4:
	.loc	2 32 19 prologue_end            ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:32:19
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
	.loc	2 33 20                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:33:20
	sshl_b64 s12, 2, s14
	sadd_co_u32 s0, s22, s12
	saddc_co_u32 s1, s23, s13
	.loc	2 34 22                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:34:22
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
	.loc	2 47 95                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:95
	or_b32 r7, r5, r6
	add_u32 r2, r2, s5
	.loc	2 47 265 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:265
	or3_b32 r7, r7, r3, r0
	.loc	2 47 59                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:59
	or_b32 r3, r3, r5
	.loc	2 47 180                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:180
	or3_b32 r3, r3, r0, r6
	.loc	2 47 360                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:360
	mad_i32 r10, r2, 2, s16
	.loc	2 47 476                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:476
	add_u32 r8, 0x10000, r2
	add_u32 r0, 0x20000, r2
	.loc	2 47 360                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:360
	mad_i32 r12, r8, 2, s16
	.loc	2 47 476                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:476
	add_u32 r5, 0x30000, r2
	.loc	2 47 343                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:343
	ldg_b128 r40, r10, 0x0
	.loc	2 47 360                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:360
	mad_i32 r10, r0, 2, s16
	.loc	2 47 343                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:343
	ldg_b128 r44, r12, 0x0
	.loc	2 47 360                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:360
	mad_i32 r12, r5, 2, s16
	.loc	2 47 343                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:343
	ldg_b128 r48, r10, 0x0
	.loc	2 51 367 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:367
	mad_i32 r10, r2, 2, s10
	mad_i32 r8, r8, 2, s10
	mad_i32 r14, r0, 2, s10
	mad_i32 r16, r5, 2, s10
	.loc	2 47 343                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:343
	ldg_b128 r52, r12, 0x0
	.loc	2 51 352                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:352
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
	.loc	2 47 265                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:265
	shl_b32 r3, 1, r3
	.loc	2 51 40                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:40
	sadd_co_i32 s14, 0x4000, 0
	shl_add_u32 r8, 1, r4, 0
	.loc	2 47 40                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:40
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
	.loc	2 51 40                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:40
	add_u32 r3, s14, r3
	shl_add_u32 r16, 1, r12, 0
	shl_add_u32 r12, 1, r21, 0
	shl_add_u32 r14, 1, r13, 0
	shl_add_u32 r13, 1, r20, 0
	.loc	2 47 40                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:40
	add_u32 r20, 0, r4
	add_u32 r21, 0, r5
	.loc	2 47 343 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:343
	add_i32 r38, 0x1000, r6
	add_i32 r39, 0x2000, r6
	add_i32 r6, 0x3000, r6
	.loc	2 51 40 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:40
	add_u32 r24, s14, r4
	add_u32 r25, s14, r5
	.loc	2 51 352 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:352
	add_i32 r4, 0x1000, r3
	add_i32 r5, 0x2000, r3
	add_i32 r3, 0x3000, r3
	.loc	2 47 40 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:40
	add_u32 r23, 0, r10
	.loc	2 33 20                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:33:20
	ldu_b32 s0, s0, 0x0
	.loc	2 34 22                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:34:22
	ldu_b32 s1, s12, 0x0
	sadd_co_u32 s12, 0x80, s16
	.loc	2 51 40                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:40
	add_u32 r27, s14, r10
	saddc_co_u32 s13, s17, 0
	.loc	2 47 40                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:40
	add_u32 r22, 0, r7
	.loc	2 51 40                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:40
	add_u32 r26, s14, r7
	sadd_co_u32 s10, 0x80, s10
	saddc_co_u32 s11, s11, 0
	.loc	2 53 3                          ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:53:3
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
	.loc	2 47 343                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:47:343
	arrive gvmcnt(7)
	sts_b128 r20, 0x0, r40
	arrive gvmcnt(6)
	sts_b128 r38, 0x0, r44
	arrive gvmcnt(5)
	sts_b128 r39, 0x0, r48
	arrive gvmcnt(4)
	sts_b128 r6, 0x0, r52
	.loc	2 51 352                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:51:352
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
	.loc	2 53 3                          ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:53:3
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
	.loc	2 0 0 is_stmt 0                 ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:0
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
	.loc	2 53 3                          ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:53:3
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
	.loc	2 56 61 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:56:61
	add_co_u32 r170, r166, s14
	mov_b32 r161, s15
	addc_co_u32 r171, r157, r161
	add_co_u32 r172, r162, s14
	.loc	2 56 231 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:56:231
	shl_b64 r170, 1, r170
	.loc	2 56 61                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:56:61
	addc_co_u32 r173, r159, r161
	or_b32 r161, r170, 64
	add_co_u32 r170, s8, r161
	mov_b32 r161, s9
	.loc	2 56 231                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:56:231
	shl_b64 r172, 1, r172
	.loc	2 56 61                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:56:61
	addc_co_u32 r171, r161, r171
	or_b32 r163, r172, 64
	add_co_u32 r174, s8, r163
	addc_co_u32 r175, r161, r173
	.loc	2 56 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:56:43
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
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r186, r18, 0x0
	lds_b128 r190, r17, 0x0
	lds_b128 r194, r16, 0x0
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	add_i32 r161, 0x4000, r18
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r186, r178, r148
	mma_16x16x16f16 r84, r186, r182, r84
	mma_16x16x16f16 r148, r188, r180, r148
	mma_16x16x16f16 r84, r188, r184, r84
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r186, r15, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r178, r140
	mma_16x16x16f16 r76, r190, r182, r76
	mma_16x16x16f16 r140, r192, r180, r140
	mma_16x16x16f16 r76, r192, r184, r76
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r190, r14, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r194, r178, r132
	mma_16x16x16f16 r68, r194, r182, r68
	mma_16x16x16f16 r132, r196, r180, r132
	mma_16x16x16f16 r68, r196, r184, r68
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r194, r13, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r186, r178, r124
	mma_16x16x16f16 r60, r186, r182, r60
	mma_16x16x16f16 r124, r188, r180, r124
	mma_16x16x16f16 r60, r188, r184, r60
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r186, r12, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r190, r178, r116
	mma_16x16x16f16 r52, r190, r182, r52
	mma_16x16x16f16 r116, r192, r180, r116
	mma_16x16x16f16 r52, r192, r184, r52
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r190, r11, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r194, r178, r108
	mma_16x16x16f16 r44, r194, r182, r44
	mma_16x16x16f16 r108, r196, r180, r108
	mma_16x16x16f16 r44, r196, r184, r44
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r194, r161, 0x0
	add_i32 r161, 0x4000, r17
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r186, r178, r100
	mma_16x16x16f16 r36, r186, r182, r36
	mma_16x16x16f16 r100, r188, r180, r100
	mma_16x16x16f16 r36, r188, r184, r36
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r16
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r190, r178, r92
	mma_16x16x16f16 r28, r190, r182, r28
	mma_16x16x16f16 r92, r192, r180, r92
	mma_16x16x16f16 r28, r192, r184, r28
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r190, r161, 0x0
	add_i32 r161, 0x4000, r15
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r194, r178, r152
	mma_16x16x16f16 r88, r194, r182, r88
	mma_16x16x16f16 r152, r196, r180, r152
	mma_16x16x16f16 r88, r196, r184, r88
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r194, r161, 0x0
	add_i32 r161, 0x4000, r14
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r186, r178, r144
	mma_16x16x16f16 r80, r186, r182, r80
	mma_16x16x16f16 r144, r188, r180, r144
	mma_16x16x16f16 r80, r188, r184, r80
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r13
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r190, r178, r136
	mma_16x16x16f16 r72, r190, r182, r72
	mma_16x16x16f16 r136, r192, r180, r136
	mma_16x16x16f16 r72, r192, r184, r72
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r190, r161, 0x0
	add_i32 r161, 0x4000, r12
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r178, r128
	mma_16x16x16f16 r64, r194, r182, r64
	mma_16x16x16f16 r128, r196, r180, r128
	mma_16x16x16f16 r64, r196, r184, r64
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r194, r161, 0x0
	add_i32 r161, 0x4000, r11
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r186, r178, r120
	mma_16x16x16f16 r56, r186, r182, r56
	mma_16x16x16f16 r120, r188, r180, r120
	mma_16x16x16f16 r56, r188, r184, r56
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r9
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r190, r178, r112
	mma_16x16x16f16 r48, r190, r182, r48
	mma_16x16x16f16 r112, r192, r180, r112
	mma_16x16x16f16 r48, r192, r184, r48
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r190, r9, 0x0
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r194, r178, r104
	mma_16x16x16f16 r40, r194, r182, r40
	mma_16x16x16f16 r104, r196, r180, r104
	mma_16x16x16f16 r40, r196, r184, r40
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r194, r8, 0x0
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r186, r178, r96
	mma_16x16x16f16 r32, r186, r182, r32
	mma_16x16x16f16 r96, r188, r180, r96
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r178, r10, 0x0
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	mma_16x16x16f16 r32, r188, r184, r32
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r182, r7, 0x0
	lds_b128 r186, r6, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
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
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r178, r5, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r182, r170, r124
	mma_16x16x16f16 r60, r182, r174, r60
	mma_16x16x16f16 r124, r184, r172, r124
	mma_16x16x16f16 r60, r184, r176, r60
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r182, r4, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r186, r170, r116
	mma_16x16x16f16 r52, r186, r174, r52
	mma_16x16x16f16 r116, r188, r172, r116
	mma_16x16x16f16 r52, r188, r176, r52
	.loc	2 61 43                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:61:43
	lds_b128 r186, r3, 0x0
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r178, r170, r108
	mma_16x16x16f16 r44, r178, r174, r44
	mma_16x16x16f16 r108, r180, r172, r108
	mma_16x16x16f16 r44, r180, r176, r44
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r178, r161, 0x0
	add_i32 r161, 0x4000, r8
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r182, r170, r100
	mma_16x16x16f16 r36, r182, r174, r36
	mma_16x16x16f16 r100, r184, r172, r100
	mma_16x16x16f16 r36, r184, r176, r36
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r182, r161, 0x0
	add_i32 r161, 0x4000, r10
	.loc	2 67 57                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:67:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r186, r170, r92
	mma_16x16x16f16 r28, r186, r174, r28
	mma_16x16x16f16 r92, r188, r172, r92
	mma_16x16x16f16 r28, r188, r176, r28
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r7
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r178, r170, r152
	mma_16x16x16f16 r88, r178, r174, r88
	mma_16x16x16f16 r152, r180, r172, r152
	mma_16x16x16f16 r88, r180, r176, r88
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r178, r161, 0x0
	add_i32 r161, 0x4000, r6
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r182, r170, r144
	mma_16x16x16f16 r80, r182, r174, r80
	mma_16x16x16f16 r144, r184, r172, r144
	mma_16x16x16f16 r80, r184, r176, r80
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r182, r161, 0x0
	add_i32 r161, 0x4000, r5
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r186, r170, r136
	mma_16x16x16f16 r72, r186, r174, r72
	mma_16x16x16f16 r136, r188, r172, r136
	mma_16x16x16f16 r72, r188, r176, r72
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r186, r161, 0x0
	add_i32 r161, 0x4000, r4
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r178, r170, r128
	mma_16x16x16f16 r64, r178, r174, r64
	mma_16x16x16f16 r128, r180, r172, r128
	mma_16x16x16f16 r64, r180, r176, r64
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r178, r161, 0x0
	add_i32 r161, 0x4000, r3
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r182, r170, r120
	mma_16x16x16f16 r56, r182, r174, r56
	mma_16x16x16f16 r120, r184, r172, r120
	mma_16x16x16f16 r56, r184, r176, r56
	.loc	2 75 45                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:75:45
	lds_b128 r182, r161, 0x0
	.loc	2 81 55                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:81:55
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
	.loc	2 92 362                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:92:362
	add_u32 r161, r158, s14
	add_u32 r163, 0x10000, r161
	add_u32 r167, 0x20000, r161
	add_u32 r170, 0x30000, r161
	mad_i32 r172, r161, 2, s12
	mad_i32 r180, r170, 2, s12
	.loc	2 96 369                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:96:369
	mad_i32 r174, r161, 2, s10
	.loc	2 92 362                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:92:362
	mad_i32 r176, r163, 2, s12
	mad_i32 r178, r167, 2, s12
	.loc	2 96 369                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:96:369
	mad_i32 r182, r163, 2, s10
	mad_i32 r184, r167, 2, s10
	mad_i32 r170, r170, 2, s10
	.loc	2 92 345                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:92:345
	ldg_b128 r186, r172, 0x0
	ldg_b128 r190, r176, 0x0
	ldg_b128 r176, r178, 0x0
	ldg_b128 r194, r180, 0x0
	.loc	2 96 354                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:96:354
	ldg_b128 r172, r174, 0x0
	ldg_b128 r180, r182, 0x0
	ldg_b128 r198, r184, 0x0
	ldg_b128 r202, r170, 0x0
	.loc	2 53 21                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:53:21
	sadd_co_u32 s14, s14, 64
	add_co_u32 r164, 0x80, r164
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r165, r165, 0
	add_co_u32 r168, 0x80, r168
	scmp_ne_u64 0x7c0, s14
	addc_co_u32 r169, r169, 0
	.loc	2 92 345                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:92:345
	arrive gvmcnt(7)
	sts_b128 r20, 0x0, r186
	arrive gvmcnt(6)
	sts_b128 r21, 0x0, r190
	arrive gvmcnt(5)
	sts_b128 r22, 0x0, r176
	arrive gvmcnt(4)
	sts_b128 r23, 0x0, r194
	.loc	2 96 354                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:96:354
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r172
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r180
	arrive gvmcnt(1)
	sts_b128 r26, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r27, 0x0, r202
	.loc	2 53 3                          ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:53:3
	bra_smsks LBB2_1
; %bb.2:                                ; %for.cond496.preheader
	.loc	2 101 217                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:217
	or_b32 r20, r160, r19
	.loc	2 101 259 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:259
	or_b32 r22, 0x7c0, r20
	.loc	2 101 59                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:59
	mov_b32 r23, 0
	shl_b64 r24, 1, r22
	smov_b32 s5, 0x7c0
	add_co_u32 r24, s8, r24
	mov_b32 r21, s9
	addc_co_u32 r25, r21, r25
	.loc	2 101 259                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:259
	or3_b32 r19, r19, r156, s5
	or_b32 r22, 0x7e0, r20
	.loc	2 101 59                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:59
	mad_i32 r26, r19, 2, s8
	.loc	2 101 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:41
	ldg_b128 r156, r24, 0x0
	.loc	2 101 59                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:59
	shl_b64 r24, 1, r22
	add_co_u32 r24, s8, r24
	.loc	2 101 259                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:259
	or_b32 r22, 0x87e0, r20
	.loc	2 101 59                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:59
	addc_co_u32 r25, r21, r25
	shl_b64 r22, 1, r22
	.loc	2 101 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:41
	ldg_b128 r160, r26, 0x0
	.loc	2 101 59                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:59
	add_co_u32 r26, s8, r22
	addc_co_u32 r27, r21, r23
	.loc	2 101 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:101:41
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
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r164, r18, 0x0
	lds_b128 r168, r17, 0x0
	lds_b128 r172, r16, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r18, 0x4000, r18
	add_i32 r17, 0x4000, r17
	add_i32 r16, 0x4000, r16
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r164, r156, r148
	sshl_b32 s5, 20, s6
	sshl_b32 s4, 7, s4
	sadd_co_i32 s4, s4, s5
	mma_16x16x16f16 r84, r164, r160, r84
	mma_16x16x16f16 r148, r166, r158, r148
	mma_16x16x16f16 r84, r166, r162, r84
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r164, r15, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r15, 0x4000, r15
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r168, r156, r140
	mma_16x16x16f16 r76, r168, r160, r76
	mma_16x16x16f16 r140, r170, r158, r140
	mma_16x16x16f16 r76, r170, r162, r76
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r168, r14, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r14, 0x4000, r14
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r172, r156, r132
	mma_16x16x16f16 r68, r172, r160, r68
	mma_16x16x16f16 r132, r174, r158, r132
	mma_16x16x16f16 r68, r174, r162, r68
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r172, r13, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r13, 0x4000, r13
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r164, r156, r124
	mma_16x16x16f16 r60, r164, r160, r60
	mma_16x16x16f16 r124, r166, r158, r124
	mma_16x16x16f16 r60, r166, r162, r60
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r164, r12, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r12, 0x4000, r12
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r168, r156, r116
	mma_16x16x16f16 r52, r168, r160, r52
	mma_16x16x16f16 r116, r170, r158, r116
	mma_16x16x16f16 r52, r170, r162, r52
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r168, r11, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r11, 0x4000, r11
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r172, r156, r108
	mma_16x16x16f16 r44, r172, r160, r44
	mma_16x16x16f16 r108, r174, r158, r108
	mma_16x16x16f16 r44, r174, r162, r44
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r172, r18, 0x0
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r164, r156, r100
	mma_16x16x16f16 r36, r164, r160, r36
	mma_16x16x16f16 r100, r166, r158, r100
	mma_16x16x16f16 r36, r166, r162, r36
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r164, r17, 0x0
	lds_b128 r16, r16, 0x0
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r168, r156, r92
	mma_16x16x16f16 r28, r168, r160, r28
	mma_16x16x16f16 r92, r170, r158, r92
	mma_16x16x16f16 r28, r170, r162, r28
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r168, r15, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
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
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r164, r14, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r16, r156, r136
	mma_16x16x16f16 r72, r16, r160, r72
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r14, r13, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	mma_16x16x16f16 r136, r18, r158, r136
	mma_16x16x16f16 r72, r18, r162, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r168, r156, r128
	mma_16x16x16f16 r64, r168, r160, r64
	mma_16x16x16f16 r128, r170, r158, r128
	mma_16x16x16f16 r64, r170, r162, r64
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r168, r12, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r164, r156, r120
	mma_16x16x16f16 r56, r164, r160, r56
	mma_16x16x16f16 r120, r166, r158, r120
	mma_16x16x16f16 r56, r166, r162, r56
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r164, r11, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r14, r156, r112
	mma_16x16x16f16 r48, r14, r160, r48
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r12, r9, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r9, 0x4000, r9
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	mma_16x16x16f16 r112, r16, r158, r112
	mma_16x16x16f16 r48, r16, r162, r48
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r16, r8, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r8, 0x4000, r8
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	arrive bsmcnt(3)
	mma_16x16x16f16 r104, r168, r156, r104
	mma_16x16x16f16 r40, r168, r160, r40
	mma_16x16x16f16 r104, r170, r158, r104
	mma_16x16x16f16 r40, r170, r162, r40
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r164, r156, r96
	mma_16x16x16f16 r32, r164, r160, r32
	mma_16x16x16f16 r96, r166, r158, r96
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r156, r10, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	mma_16x16x16f16 r32, r166, r162, r32
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r12, r20, r148
	mma_16x16x16f16 r84, r12, r24, r84
	mma_16x16x16f16 r148, r14, r22, r148
	mma_16x16x16f16 r84, r14, r26, r84
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r12, r7, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r7, 0x4000, r7
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r16, r20, r140
	mma_16x16x16f16 r76, r16, r24, r76
	mma_16x16x16f16 r140, r18, r22, r140
	mma_16x16x16f16 r76, r18, r26, r76
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r16, r6, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r6, 0x4000, r6
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r156, r20, r132
	mma_16x16x16f16 r68, r156, r24, r68
	mma_16x16x16f16 r132, r158, r22, r132
	mma_16x16x16f16 r68, r158, r26, r68
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r156, r5, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r5, 0x4000, r5
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r12, r20, r124
	mma_16x16x16f16 r60, r12, r24, r60
	mma_16x16x16f16 r124, r14, r22, r124
	mma_16x16x16f16 r60, r14, r26, r60
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r12, r4, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r4, 0x4000, r4
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r16, r20, r116
	mma_16x16x16f16 r52, r16, r24, r52
	mma_16x16x16f16 r116, r18, r22, r116
	mma_16x16x16f16 r52, r18, r26, r52
	.loc	2 106 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:106:43
	lds_b128 r16, r3, 0x0
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	add_i32 r3, 0x4000, r3
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r156, r20, r108
	mma_16x16x16f16 r44, r156, r24, r44
	mma_16x16x16f16 r108, r158, r22, r108
	mma_16x16x16f16 r44, r158, r26, r44
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r156, r9, 0x0
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r12, r20, r100
	mma_16x16x16f16 r36, r12, r24, r36
	mma_16x16x16f16 r100, r14, r22, r100
	mma_16x16x16f16 r36, r14, r26, r36
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r12, r8, 0x0
	add_i32 r8, 0x4000, r10
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r16, r20, r92
	mma_16x16x16f16 r28, r16, r24, r28
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r8, r8, 0x0
	.loc	2 112 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:112:58
	mma_16x16x16f16 r92, r18, r22, r92
	mma_16x16x16f16 r28, r18, r26, r28
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r16, r7, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
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
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r12, r6, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r8, r20, r136
	mma_16x16x16f16 r72, r8, r24, r72
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r6, r5, 0x0
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	mma_16x16x16f16 r136, r10, r22, r136
	mma_16x16x16f16 r72, r10, r26, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r16, r20, r128
	mma_16x16x16f16 r64, r16, r24, r64
	mma_16x16x16f16 r128, r18, r22, r128
	mma_16x16x16f16 r64, r18, r26, r64
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r16, r4, 0x0
	shl_b32 r4, 13, r1
	and_b32 r4, 0x1e000, r4
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r12, r20, r120
	mma_16x16x16f16 r56, r12, r24, r56
	.loc	2 120 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:120:43
	lds_b128 r10, r3, 0x0
	shl_b32 r3, 12, r1
	and_b32 r3, 0x3c0000, r3
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	mma_16x16x16f16 r120, r14, r22, r120
	add_u32 r3, s4, r3
	and_b32 r1, r1, 15
	smov_b32 s4, 0x1e0
	mma_16x16x16f16 r56, r14, r26, r56
	.loc	2 176 66                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:66
	and_or_b32 r1, r2, s4, r1
	sshl_b32 s4, 7, s6
	ssub_co_i32 s0, s0, s4
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r6, r20, r112
	sadd_co_i32 s0, s0, s1
	.loc	2 176 95                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:95
	cmp_lt_i32 s4, r1, s0
	add_u32 r3, r3, r4
	.loc	2 126 56                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:126:56
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
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_20
; %bb.3:                                ; %if.end
	.loc	2 0 9 is_stmt 0                 ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_21
LBB2_4:                                 ; %if.end.1
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_22
LBB2_5:                                 ; %if.end.2
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_23
LBB2_6:                                 ; %if.end.3
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_24
LBB2_7:                                 ; %if.end.4
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_25
LBB2_8:                                 ; %if.end.5
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_26
LBB2_9:                                 ; %if.end.6
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_11
LBB2_10:                                ; %if.then.7
	.loc	2 158 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r95
.Ltmp11:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r94
.Ltmp13:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp14:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r95, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r99
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s4
	fmka_f32 r7, r94, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s4
	exp_f32 r7, r7
.Ltmp16:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r93
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp18:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r94, r6
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s4
	fmka_f32 r8, r93, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s4
	exp_f32 r8, r8
.Ltmp20:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r92
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp22:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r93, r7
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s4
	fmka_f32 r5, r92, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s4
	exp_f32 r5, r5
.Ltmp24:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r92, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r96
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r97
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r98
.Ltmp25:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp26:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp27:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp28:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp29:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	mov_b32 r4, 0xe0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
LBB2_11:                                ; %if.end.7
	.loc	2 0 262                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:262
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 66 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:66
	or_b32 r1, r1, 16
	.loc	2 176 95 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:95
	cmp_lt_i32 s0, r1, s0
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_27
; %bb.12:                               ; %if.end.8
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_28
LBB2_13:                                ; %if.end.9
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_29
LBB2_14:                                ; %if.end.10
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_30
LBB2_15:                                ; %if.end.11
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_31
LBB2_16:                                ; %if.end.12
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_32
LBB2_17:                                ; %if.end.13
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_33
LBB2_18:                                ; %if.end.14
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_34
LBB2_19:                                ; %if.end.15
	.loc	2 190 1 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:190:1
	snop 1
	endk
LBB2_20:                                ; %if.then
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r151
.Ltmp30:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r150
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp33:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r151, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r155
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r150, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp35:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r149
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp37:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r150, r6
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r149, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp39:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r148
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp41:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r149, r7
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r148, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp43:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r148, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r152
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r153
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r154
.Ltmp44:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp45:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp47:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp48:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_b32 r4, 1, r0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_4
LBB2_21:                                ; %if.then.1
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r143
.Ltmp49:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r142
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp52:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r143, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r147
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r142, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp54:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r141
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp56:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r142, r6
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r141, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp58:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r140
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp60:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r141, r7
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r140, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp62:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r140, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r144
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r145
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r146
.Ltmp63:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp64:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp66:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp67:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_or_b32 r4, 1, r0, 32
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_5
LBB2_22:                                ; %if.then.2
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r135
.Ltmp68:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r134
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp71:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r135, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r139
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r134, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp73:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r133
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp75:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r134, r6
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r133, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp77:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r132
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp79:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r133, r7
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r132, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp81:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r132, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r136
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r137
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r138
.Ltmp82:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp83:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp85:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp86:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_or_b32 r4, 1, r0, 64
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_6
LBB2_23:                                ; %if.then.3
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r127
.Ltmp87:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r126
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp90:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r127, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r131
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r126, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp92:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r125
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp94:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r126, r6
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r125, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp96:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r124
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp98:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r125, r7
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r124, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp100:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r124, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r128
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r129
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r130
.Ltmp101:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp102:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp104:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp105:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	mov_b32 r4, 0x60
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_7
LBB2_24:                                ; %if.then.4
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r119
.Ltmp106:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r118
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp109:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r119, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r123
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r118, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp111:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r117
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp113:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r118, r6
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r117, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp115:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r116
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp117:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r117, r7
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r116, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp119:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r116, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r120
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r121
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r122
.Ltmp120:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp121:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp123:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp124:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	mov_b32 r4, 0x80
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_8
LBB2_25:                                ; %if.then.5
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r111
.Ltmp125:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r110
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp128:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r111, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r115
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r110, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp130:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r109
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp132:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r110, r6
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r109, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp134:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r108
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp136:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r109, r7
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r108, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp138:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r108, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r112
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r113
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r114
.Ltmp139:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp140:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp142:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp143:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	mov_b32 r4, 0xa0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_9
LBB2_26:                                ; %if.then.6
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r2, 0xbfb8aa3b, r103
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r6, 0xbfb8aa3b, r102
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp147:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r4, r103, r4
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r4, r4, r107
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r102, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp149:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r7, 0xbfb8aa3b, r101
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp151:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r6, r102, r6
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r101, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp153:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r8, 0xbfb8aa3b, r100
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp155:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r7, r101, r7
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r100, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp157:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r2, r100, r2
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r2, r2, r104
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r3, r7, r105
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r5, r6, r106
.Ltmp158:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp159:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp161:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp162:
	.loc	2 187 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 187 27 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	mov_b32 r4, 0xc0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s2, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_10
	bra LBB2_11
LBB2_27:                                ; %if.then.8
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r87
.Ltmp163:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r86
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp166:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r87, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r91
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r86, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp168:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r85
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp170:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r86, r5
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r85, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp172:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r84
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp174:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r85, r6
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r84, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp176:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r84, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r88
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r89
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r90
.Ltmp177:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp178:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp180:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp181:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40000, r3
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r9, r4, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_13
LBB2_28:                                ; %if.then.9
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r79
.Ltmp182:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r78
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp185:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r79, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r83
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r78, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp187:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r77
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp189:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r78, r5
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r77, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp191:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r76
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp193:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r77, r6
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r76, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp195:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r76, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r80
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r81
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r82
.Ltmp196:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp197:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp199:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp200:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40020, r3
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r9, r4, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_14
LBB2_29:                                ; %if.then.10
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r71
.Ltmp201:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r70
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp204:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r71, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r75
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r70, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp206:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r69
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp208:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r70, r5
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r69, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp210:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r68
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp212:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r69, r6
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r68, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp214:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r68, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r72
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r73
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r74
.Ltmp215:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp216:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp218:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp219:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40040, r3
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r9, r4, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_15
LBB2_30:                                ; %if.then.11
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r63
.Ltmp220:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r62
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp223:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r63, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r67
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r62, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp225:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r61
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp227:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r62, r5
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r61, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp229:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r60
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp231:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r61, r6
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r60, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp233:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r60, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r64
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r65
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r66
.Ltmp234:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp235:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp237:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp238:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40060, r3
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r9, r4, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_16
LBB2_31:                                ; %if.then.12
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r55
.Ltmp239:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r54
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp242:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r55, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r59
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r54, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp244:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r53
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp246:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r54, r5
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r53, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp248:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r52
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp250:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r53, r6
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r52, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp252:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r52, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r56
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r57
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r58
.Ltmp253:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp254:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp256:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp257:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40080, r3
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r9, r4, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_17
LBB2_32:                                ; %if.then.13
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r47
.Ltmp258:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r46
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp261:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r47, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r51
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r46, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp263:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r45
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp265:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r46, r5
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r45, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp267:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r44
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp269:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r45, r6
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r44, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp271:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r44, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r48
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r49
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r50
.Ltmp272:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp273:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp275:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp276:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400a0, r3
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r9, r4, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_18
LBB2_33:                                ; %if.then.14
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r39
.Ltmp277:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r38
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp280:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r39, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r43
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r38, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp282:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r37
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp284:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r38, r5
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r37, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp286:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r36
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp288:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r37, r6
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r36, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp290:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r36, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r40
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r41
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r42
.Ltmp291:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp292:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp294:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp295:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s2, r4
	mov_b32 r7, 0
	mov_b32 r4, s3
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400c0, r3
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r9, r4, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:176:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_19
LBB2_34:                                ; %if.then.15
	.loc	2 158 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:158:27
	mul_f32 r1, 0xbfb8aa3b, r31
.Ltmp296:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
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
	.loc	2 166 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:166:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:157:27
	mul_f32 r5, 0xbfb8aa3b, r30
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp299:
	.loc	2 170 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:170:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 174 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:174:20
	mul_f32 r3, r31, r3
	.loc	2 184 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:184:24
	mul_f32 r3, r3, r35
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r30, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp301:
	.loc	2 165 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:165:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:156:27
	mul_f32 r6, 0xbfb8aa3b, r29
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp303:
	.loc	2 169 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:169:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 173 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:173:20
	mul_f32 r5, r30, r5
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r29, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp305:
	.loc	2 164 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:164:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:155:27
	mul_f32 r7, 0xbfb8aa3b, r28
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp307:
	.loc	2 168 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:168:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 172 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:172:20
	mul_f32 r6, r29, r6
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r28, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp309:
	.loc	2 163 26                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:163:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 167 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:171:20
	mul_f32 r1, r28, r1
	.loc	2 181 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:181:24
	mul_f32 r1, r1, r32
	.loc	2 182 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:182:24
	mul_f32 r2, r6, r33
	.loc	2 183 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:183:24
	mul_f32 r4, r5, r34
.Ltmp310:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp311:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp313:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp314:
	.loc	2 187 27 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s2, r0
	mov_b32 r3, s3
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x400e0, r0
	.loc	2 187 262 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	shl_b32 r0, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 187 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:27
	addc_co_u32 r7, r3, 0
	.loc	2 187 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:187:262
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 190 1 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:190:1
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
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 192 0                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:192:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp316:
	.loc	2 203 19 prologue_end           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:203:19
	smov_b32 s17, 0
	sshl_b64 s2, 2, s16
	ldu_b256 s8, s0, 0x20
	and_b32 r0, 0x3ff, r0
	shl_b32 r2, 12, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	ldu_b32 s18, s2, 0x0
	mov_b32 r1, s5
	and_b32 r2, 0x3c0000, r2
	shl_add_u32 r1, 20, r1, r2
	shr_b32 r2, 1, r0
	shl_b32 r3, 13, r0
	and_b32 r4, r2, 24
	arrive slcnt(0)
	sashr_i32 s19, 31, s18
	.loc	2 204 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:204:20
	sshl_b64 s2, 2, s18
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 205 19                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:205:19
	sadd_co_u32 s6, s44, s2
	saddc_co_u32 s7, s45, s3
	.loc	2 206 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:206:22
	sadd_co_u32 s8, s46, s2
	smov_b32 s2, 0x1e000
	.loc	2 219 168                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:168
	and_or_b32 r28, r3, s2, r1
	.loc	2 219 227 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:227
	or_b32 r150, r28, r4
	.loc	2 219 67                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:67
	shl_b32 r1, 1, r150
	shl_b32 r7, 3, r0
	.loc	2 206 22 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:206:22
	saddc_co_u32 s9, s47, s3
	.loc	2 219 45                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:45
	ldg_b128 r158, s14, r1, 0x0
	shl_b32 r1, 10, r0
	sshl_b32 s19, 21, s4
	and_b32 r8, 0xfe000, r1
	and_b32 r9, r7, 56
	sshl_b32 s18, 24, s18
	or3_b32 r9, r8, s19, r9
	add_u32 r9, r9, s18
	.loc	2 223 356                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:356
	mad_i32 r10, r9, 2, s40
	add_co_u32 r12, 0x80000, r10
	.loc	2 219 168                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:168
	or_b32 r30, 0x20000, r28
	.loc	2 223 356                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:356
	addc_co_u32 r13, r11, 0
	.loc	2 219 227                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:227
	or_b32 r152, r30, r4
	.loc	2 223 339                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:339
	ldg_b128 r20, r10, 0x0
	ldg_b128 r24, r12, 0x0
	.loc	2 223 356 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:356
	add_co_u32 r12, 0x100000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 219 67 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:67
	shl_b32 r3, 1, r152
	.loc	2 223 356                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:356
	add_co_u32 r10, 0x180000, r10
	.loc	2 219 227                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:227
	or_b32 r5, 0x20020, r150
	.loc	2 219 45 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:45
	ldg_b128 r162, s14, r3, 0x0
	.loc	2 219 227                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:227
	or_b32 r3, r150, 32
	.loc	2 219 67                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:67
	shl_b32 r4, 1, r3
	shl_b32 r6, 1, r5
	.loc	2 223 356 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:356
	addc_co_u32 r11, r11, 0
	.loc	2 219 45                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:219:45
	ldg_b128 r174, s14, r4, 0x0
	ldg_b128 r178, s14, r6, 0x0
	.loc	2 223 339                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:339
	ldg_b128 r32, r12, 0x0
	ldg_b128 r36, r10, 0x0
	and_b32 r9, r7, 16
	.loc	2 204 20                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:204:20
	ldu_b32 s2, s0, 0x0
	and_b32 r19, r7, 32
	.loc	2 205 19                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:205:19
	ldu_b32 s1, s6, 0x0
	.loc	2 206 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:206:22
	ldu_b32 s0, s8, 0x0
	mul_u24 r4, r0, 9
	add_u32 r10, r19, r0
	add_u32 r9, r9, r0
	and_b32 r6, 0x1fc0, r7
	and_b32 r4, r4, 8
	and_b32 r10, r10, 32
	and_b32 r9, r9, 16
	.loc	2 223 47                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:47
	add_u32 r11, 0x800, r6
	add_u32 r12, 0x1000, r6
	add_u32 r13, 0x1800, r6
	.loc	2 223 83 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:83
	or_b32 r14, r10, r4
	.loc	2 223 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:27
	or_b32 r4, r9, r4
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 223 253                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:253
	or3_b32 r15, r14, r6, r9
	.loc	2 223 27                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:27
	or3_b32 r16, r14, r11, r9
	or3_b32 r9, r14, r12, r9
	mov_b32 r14, s3
	or3_b32 r4, r4, r13, r10
	shl_add_u32 r15, 1, r15, r14
	shl_add_u32 r16, 1, r16, r14
	shl_add_u32 r9, 1, r9, r14
	shl_add_u32 r4, 1, r4, r14
	.loc	2 223 339                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:223:339
	arrive gvmcnt(6)
	sts_b128 r15, 0x0, r20
	arrive gvmcnt(5)
	sts_b128 r16, 0x0, r24
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r32
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r36
.Ltmp317:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	xor_b32 r4, r7, r0
	and_b32 r9, r4, 32
	add_u32 r9, r9, r0
	and_b32 r10, r9, 32
	and_b32 r9, r4, 16
	add_u32 r9, r9, r0
	and_b32 r14, r9, 16
	and_b32 r9, r0, 8
	xadd_u32 r7, r9, r7, r0
	and_b32 r15, r7, 8
	shr_b32 r7, 5, r0
	sadd_co_u32 s8, 0x200000, s40
	add_shl_u32 r7, r7, r2, 4
	saddc_co_u32 s9, s41, 0
	and_b32 r16, r7, 16
	shr_b32 r7, 4, r0
	sadd_co_u32 s3, 0x80, s14
	and_b32 r9, r4, 56
	shl_b32 r4, 6, r0
	add_shl_u32 r17, r7, r0, 3
	and_b32 r18, 0x3c0, r4
	saddc_co_u32 s5, s15, 0
	sadd_co_i32 s6, s18, s19
	or_b32 r20, r10, r15
	and_or_b32 r26, r17, 8, r16
	or3_b32 r6, r20, r6, r14
	or3_b32 r182, r8, s6, r9
	or3_b32 r8, r20, r11, r14
	or3_b32 r9, r20, r12, r14
	or_b32 r11, r14, r15
	or_b32 r20, r26, r18
	or_b32 r21, 0x400, r18
	or_b32 r22, r26, r19
	or_b32 r23, 0x800, r18
	or_b32 r24, 0xc00, r18
	or_b32 r25, 0x1000, r18
	or_b32 r27, 0x1400, r18
	or_b32 r29, 0x1800, r18
	or_b32 r31, 0x1c00, r18
	xor_b32 r32, r19, 32
	or3_b32 r10, r11, r13, r10
	or_b32 r11, r20, r19
	or_b32 r19, r20, r32
	or_b32 r12, r22, r21
	or_b32 r13, r22, r23
	or_b32 r14, r22, r24
	or_b32 r15, r22, r25
	or_b32 r16, r22, r27
	or_b32 r17, r22, r29
	or_b32 r18, r22, r31
	or3_b32 r22, r26, r24, r32
	or3_b32 r20, r26, r21, r32
	or3_b32 r21, r26, r23, r32
	or3_b32 r23, r26, r25, r32
	or3_b32 r25, r26, r29, r32
	or3_b32 r24, r26, r27, r32
	or3_b32 r26, r26, r31, r32
.Ltmp318:
	.loc	2 226 3                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:226:3
	and_b32 r31, r0, 48
	or_b32 r29, r182, 64
	mad_i32 r186, r29, 2, s40
	mad_i32 r184, r182, 2, s40
	shl_or_b32 r28, 1, r28, r31
	mov_b32 r33, 0
	add_co_u32 r28, s3, r28
	mov_b32 r29, s5
	addc_co_u32 r29, r29, r33
	shl_or_b32 r30, 1, r30, r31
	.loc	2 0 0 is_stmt 0                 ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:0
	shl_b64 r130, 0, 0
	sadd_co_u32 s14, 0x100, s14
	shl_add_u32 r6, 1, r6, 0
	smov_b64 s18, 0
	.loc	2 226 3                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:226:3
	add_co_u32 r30, s3, r30
	mov_b32 r31, s5
	.loc	2 0 0                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:0
	shl_b64 r132, 0, 0
	shl_b64 r134, 0, r130
	shl_b64 r138, 0, r130
	shl_b64 r142, 0, r130
	shl_b64 r146, 0, r130
	shl_b64 r154, 0, r130
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
	shr_b32 r4, 2, r0
	mov_b32 r151, 0
	add_u32 r7, 0x4000, r6
	saddc_co_u32 s15, s15, 0
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
	shl_add_u32 r24, 1, r24, 0
	shl_add_u32 r25, 1, r25, 0
	shl_add_u32 r26, 1, r26, 0
	add_u32 r27, 0x5000, r6
	.loc	2 226 3                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:226:3
	mov_b32 r153, 0
	addc_co_u32 r31, r31, r33
	smov_b64 s20, s18
	shl_b64 r136, 0, r132
	shl_b64 r140, 0, r132
	shl_b64 r144, 0, r132
	shl_b64 r148, 0, r132
	shl_b64 r156, 0, r132
	shl_b64 r168, 0, r132
	shl_b64 r172, 0, r132
	shl_b64 r36, 0, r132
	shl_b64 r40, 0, r132
	shl_b64 r44, 0, r132
	shl_b64 r48, 0, r132
	shl_b64 r52, 0, r132
	shl_b64 r56, 0, r132
	shl_b64 r60, 0, r132
	shl_b64 r64, 0, r132
	shl_b64 r68, 0, r132
	shl_b64 r72, 0, r132
	shl_b64 r76, 0, r132
	shl_b64 r80, 0, r132
	shl_b64 r84, 0, r132
	shl_b64 r88, 0, r132
	shl_b64 r92, 0, r132
	shl_b64 r96, 0, r132
	shl_b64 r128, 0, r132
	shl_b64 r124, 0, r132
	shl_b64 r120, 0, r132
	shl_b64 r116, 0, r132
	shl_b64 r112, 0, r132
	shl_b64 r108, 0, r132
	shl_b64 r104, 0, r132
	shl_b64 r100, 0, r132
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc1031
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 226 31                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:226:31
	sadd_co_u32 s20, 0x100, s20
	saddc_co_u32 s21, s21, 0
	sadd_co_u32 s18, 0x80, s18
	saddc_co_u32 s19, s19, 0
	scmp_eq_u64 0x4000, s20
	.loc	2 226 3                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:226:3
	snop 0
	bra_smsks LBB3_8
LBB3_2:                                 ; %for.cond128.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 228 480 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:228:480
	add_u32 r32, r182, s18
.Ltmp319:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r6
.Ltmp320:
	.loc	2 228 480                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:228:480
	mad_i32 r188, r32, 2, s8
.Ltmp321:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s6, md
.Ltmp322:
	.loc	2 228 480                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:228:480
	add_u32 r33, 0x40000, r32
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	add_i32 r183, 0x4000, r11
.Ltmp323:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	rfl_b32 s7, r8
	ldg_b128 r0, r188, 0x0 bsm
.Ltmp324:
	.loc	2 228 480                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:228:480
	mad_i32 r188, r33, 2, s8
	add_u32 r33, 0x80000, r32
	add_u32 r32, 0xc0000, r32
.Ltmp325:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	rfl_b32 s7, r9
	ldg_b128 r0, r188, 0x0 bsm
.Ltmp326:
	.loc	2 228 480                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:228:480
	mad_i32 r188, r33, 2, s8
	mad_i32 r32, r32, 2, s8
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	add_i32 r191, 0x4000, r12
.Ltmp327:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	rfl_b32 s7, r10
	ldg_b128 r0, r188, 0x0 bsm
.Ltmp328:
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	add_co_u32 r188, r150, s18
.Ltmp329:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r32, 0x0 bsm
.Ltmp330:
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r192, r183, 0x0
	lds_b128 r196, r191, 0x0
	add_i32 r183, 0x4000, r13
	add_i32 r191, 0x4000, r14
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	mov_b32 r33, s19
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r200, r183, 0x0
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r192, r158, r170
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	add_i32 r183, 0x4000, r15
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	addc_co_u32 r189, r151, r33
	.loc	2 232 49 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	add_co_u32 r190, r28, s20
	.loc	2 242 58 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	mma_16x16x16f16 r126, r192, r162, r126
	.loc	2 232 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	mov_b32 r32, s21
	.loc	2 232 251 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:251
	shl_b64 r188, 1, r188
	.loc	2 242 58 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	mma_16x16x16f16 r170, r194, r160, r170
	mma_16x16x16f16 r126, r194, r164, r126
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r192, r191, 0x0
	add_i32 r191, 0x4000, r16
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r196, r158, r166
	mma_16x16x16f16 r122, r196, r162, r122
	mma_16x16x16f16 r166, r198, r160, r166
	mma_16x16x16f16 r122, r198, r164, r122
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r196, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r200, r158, r154
	mma_16x16x16f16 r118, r200, r162, r118
	mma_16x16x16f16 r154, r202, r160, r154
	mma_16x16x16f16 r118, r202, r164, r118
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r200, r191, 0x0
	add_i32 r191, 0x4000, r18
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r192, r158, r146
	mma_16x16x16f16 r114, r192, r162, r114
	mma_16x16x16f16 r146, r194, r160, r146
	mma_16x16x16f16 r114, r194, r164, r114
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r192, r183, 0x0
	add_i32 r183, 0x4000, r19
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r196, r158, r142
	mma_16x16x16f16 r110, r196, r162, r110
	mma_16x16x16f16 r142, r198, r160, r142
	mma_16x16x16f16 r110, r198, r164, r110
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r196, r191, 0x0
	.loc	2 232 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	addc_co_u32 r191, r29, r32
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r200, r158, r138
	mma_16x16x16f16 r106, r200, r162, r106
	mma_16x16x16f16 r138, r202, r160, r138
	mma_16x16x16f16 r106, r202, r164, r106
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r200, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r158, r134
	mma_16x16x16f16 r102, r192, r162, r102
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r21
	add_i32 r192, 0x4000, r22
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	mma_16x16x16f16 r134, r194, r160, r134
	mma_16x16x16f16 r102, r194, r164, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r196, r158, r130
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	add_co_u32 r194, r152, s18
	addc_co_u32 r195, r153, r33
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	add_i32 r33, 0x4000, r23
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	mma_16x16x16f16 r98, r196, r162, r98
	mma_16x16x16f16 r130, r198, r160, r130
	mma_16x16x16f16 r98, r198, r164, r98
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r196, r183, 0x0
	add_i32 r183, 0x4000, r24
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r200, r174, r170
	mma_16x16x16f16 r126, r200, r178, r126
	mma_16x16x16f16 r170, r202, r176, r170
	mma_16x16x16f16 r126, r202, r180, r126
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r200, r192, 0x0
	.loc	2 232 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	add_co_u32 r192, r30, s20
	addc_co_u32 r193, r31, r32
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r204, r174, r166
	mma_16x16x16f16 r122, r204, r178, r122
	mma_16x16x16f16 r166, r206, r176, r166
	mma_16x16x16f16 r122, r206, r180, r122
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r25
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r196, r174, r154
	mma_16x16x16f16 r118, r196, r178, r118
	mma_16x16x16f16 r154, r198, r176, r154
	mma_16x16x16f16 r118, r198, r180, r118
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r196, r183, 0x0
	lds_b128 r208, r33, 0x0
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	or_b32 r33, r188, 64
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r146, r200, r174, r146
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	add_co_u32 r188, s3, r33
	mov_b32 r33, s5
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	add_i32 r183, 0x4000, r26
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	mma_16x16x16f16 r114, r200, r178, r114
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	addc_co_u32 r189, r33, r189
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	mma_16x16x16f16 r146, r202, r176, r146
	mma_16x16x16f16 r114, r202, r180, r114
	.loc	2 232 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	ldg_b128 r200, r192, 0x0
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r204, r174, r142
	mma_16x16x16f16 r110, r204, r178, r110
	mma_16x16x16f16 r142, r206, r176, r142
	mma_16x16x16f16 r110, r206, r180, r110
	.loc	2 236 41                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:236:41
	lds_b128 r204, r183, 0x0
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r196, r174, r138
	mma_16x16x16f16 r106, r196, r178, r106
	mma_16x16x16f16 r138, r198, r176, r138
	mma_16x16x16f16 r106, r198, r180, r106
	.loc	2 232 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	ldg_b128 r196, r190, 0x0
	.loc	2 232 251 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:251
	shl_b64 r190, 1, r194
	.loc	2 232 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:71
	or_b32 r183, r190, 64
	add_co_u32 r190, s3, r183
	addc_co_u32 r191, r33, r191
	.loc	2 232 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	ldg_b128 r192, r188, 0x0
	.loc	2 242 58 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r208, r174, r134
	.loc	2 232 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:232:49
	ldg_b128 r188, r190, 0x0
	.loc	2 242 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:242:58
	mma_16x16x16f16 r102, r208, r178, r102
	mma_16x16x16f16 r134, r210, r176, r134
	mma_16x16x16f16 r102, r210, r180, r102
	arrive bsmcnt(0)
	mma_16x16x16f16 r130, r204, r174, r130
	mma_16x16x16f16 r98, r204, r178, r98
	mma_16x16x16f16 r130, r206, r176, r130
	mma_16x16x16f16 r98, r206, r180, r98
.Ltmp331:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp332:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp333:
	.loc	2 254 654                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:254:654
	or3_b32 r33, r182, s18, 64
	.loc	2 254 461 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:254:461
	mad_i32 r204, r33, 2, s40
.Ltmp334:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	add_co_u32 r33, r186, s20
	addc_co_u32 r183, r187, r32
.Ltmp335:
	.loc	2 9 41                          ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:9:41
	ldg_b128 r204, r204, 0x0
.Ltmp336:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	add_co_u32 r208, 0x80000, r33
	addc_co_u32 r209, r183, 0
	add_co_u32 r210, 0x100000, r33
	addc_co_u32 r211, r183, 0
	rfl_b32 s7, r27
	add_co_u32 r212, 0x180000, r33
	addc_co_u32 r213, r183, 0
.Ltmp337:
	.loc	2 9 41                          ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:9:41
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r204
.Ltmp338:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r208, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r210, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r212, 0x0 bsm
.Ltmp339:
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r204, r11, 0x0
	lds_b128 r208, r12, 0x0
	lds_b128 r212, r13, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r204, r158, r94
	mma_16x16x16f16 r62, r204, r162, r62
	mma_16x16x16f16 r94, r206, r160, r94
	mma_16x16x16f16 r62, r206, r164, r62
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r204, r14, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r208, r158, r90
	mma_16x16x16f16 r58, r208, r162, r58
	mma_16x16x16f16 r90, r210, r160, r90
	mma_16x16x16f16 r58, r210, r164, r58
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r208, r15, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r212, r158, r86
	mma_16x16x16f16 r54, r212, r162, r54
	mma_16x16x16f16 r86, r214, r160, r86
	mma_16x16x16f16 r54, r214, r164, r54
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r212, r16, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r204, r158, r82
	mma_16x16x16f16 r50, r204, r162, r50
	mma_16x16x16f16 r82, r206, r160, r82
	mma_16x16x16f16 r50, r206, r164, r50
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r204, r17, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r208, r158, r78
	mma_16x16x16f16 r46, r208, r162, r46
	mma_16x16x16f16 r78, r210, r160, r78
	mma_16x16x16f16 r46, r210, r164, r46
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r208, r18, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r212, r158, r74
	mma_16x16x16f16 r42, r212, r162, r42
	mma_16x16x16f16 r74, r214, r160, r74
	mma_16x16x16f16 r42, r214, r164, r42
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r212, r19, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r204, r158, r70
	mma_16x16x16f16 r38, r204, r162, r38
	mma_16x16x16f16 r70, r206, r160, r70
	mma_16x16x16f16 r38, r206, r164, r38
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r204, r20, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r208, r158, r66
	mma_16x16x16f16 r34, r208, r162, r34
	mma_16x16x16f16 r66, r210, r160, r66
	mma_16x16x16f16 r34, r210, r164, r34
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r208, r21, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r212, r174, r94
	mma_16x16x16f16 r62, r212, r178, r62
	mma_16x16x16f16 r94, r214, r176, r94
	mma_16x16x16f16 r62, r214, r180, r62
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r212, r22, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r204, r174, r90
	mma_16x16x16f16 r58, r204, r178, r58
	mma_16x16x16f16 r90, r206, r176, r90
	mma_16x16x16f16 r58, r206, r180, r58
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r204, r23, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r208, r174, r86
	mma_16x16x16f16 r54, r208, r178, r54
	mma_16x16x16f16 r86, r210, r176, r86
	mma_16x16x16f16 r54, r210, r180, r54
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r208, r24, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r212, r174, r82
	mma_16x16x16f16 r50, r212, r178, r50
	mma_16x16x16f16 r82, r214, r176, r82
	mma_16x16x16f16 r50, r214, r180, r50
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r212, r25, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r204, r174, r78
	mma_16x16x16f16 r46, r204, r178, r46
	mma_16x16x16f16 r78, r206, r176, r78
	mma_16x16x16f16 r46, r206, r180, r46
	.loc	2 260 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:260:43
	lds_b128 r204, r26, 0x0
	.loc	2 266 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:266:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r208, r174, r74
	mma_16x16x16f16 r42, r208, r178, r42
	mma_16x16x16f16 r74, r210, r176, r74
	mma_16x16x16f16 r42, r210, r180, r42
	arrive bsmcnt(1)
	mma_16x16x16f16 r70, r212, r174, r70
	mma_16x16x16f16 r38, r212, r178, r38
	mma_16x16x16f16 r70, r214, r176, r70
	mma_16x16x16f16 r38, r214, r180, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r66, r204, r174, r66
	mma_16x16x16f16 r34, r204, r178, r34
	mma_16x16x16f16 r66, r206, r176, r66
	mma_16x16x16f16 r34, r206, r180, r34
.Ltmp340:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(2)
	barrier
	arrive gvmcnt(1)
	barrier
	arrive gvmcnt(0)
	barrier
.Ltmp341:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp342:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	add_co_u32 r33, r184, s20
	addc_co_u32 r32, r185, r32
	add_co_u32 r204, 0x200080, r33
	addc_co_u32 r205, r32, 0
	sadd_co_u32 md, 0xffff9000, md
	rfl_b32 s7, r8
	ldg_b128 r0, r204, 0x0 bsm
	add_co_u32 r204, 0x280080, r33
	addc_co_u32 r205, r32, 0
.Ltmp343:
	.loc	2 281 16                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:281:16
	mov_b32 r206, 0x3f00
.Ltmp344:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	rfl_b32 s7, r9
	ldg_b128 r0, r204, 0x0 bsm
	add_co_u32 r204, 0x300080, r33
	addc_co_u32 r205, r32, 0
.Ltmp345:
	.loc	2 281 16                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:281:16
	mov_b32 r207, 0
.Ltmp346:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	rfl_b32 s7, r10
	ldg_b128 r0, r204, 0x0 bsm
	add_co_u32 r204, 0x380080, r33
	addc_co_u32 r205, r32, 0
.Ltmp347:
	.loc	2 281 16                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:281:16
	cmp_lg_u64 s22, s20, r206
.Ltmp348:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r204, 0x0 bsm
.Ltmp349:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s6
.Ltmp350:
	.loc	2 281 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:281:9
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmskz LBB3_4
; %bb.3:                                ; %for.body698.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 284 251                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:284:251
	or_b32 r158, r150, s18
	or_b32 r174, r3, s18
	.loc	2 284 71 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:284:71
	mad_i32 r160, r158, 2, s14
	.loc	2 284 251                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:284:251
	or_b32 r158, r152, s18
	.loc	2 284 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:284:71
	mad_i32 r176, r174, 2, s14
	.loc	2 284 251                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:284:251
	or_b32 r174, r5, s18
	.loc	2 284 71                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:284:71
	mad_i32 r162, r158, 2, s14
	mad_i32 r178, r174, 2, s14
	.loc	2 284 49                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:284:49
	ldg_b128 r158, r160, 0x0
	ldg_b128 r162, r162, 0x0
	ldg_b128 r174, r176, 0x0
	ldg_b128 r178, r178, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 289 43 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	add_i32 r183, 0x4000, r11
	add_i32 r204, 0x4000, r12
	snop 0
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r13
	lds_b128 r210, r204, 0x0
	add_i32 r204, 0x4000, r14
	lds_b128 r214, r183, 0x0
	add_i32 r183, 0x4000, r15
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r206, r196, r170
	mma_16x16x16f16 r126, r206, r200, r126
	mma_16x16x16f16 r170, r208, r198, r170
	mma_16x16x16f16 r126, r208, r202, r126
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r206, r204, 0x0
	add_i32 r204, 0x4000, r16
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r210, r196, r166
	mma_16x16x16f16 r122, r210, r200, r122
	mma_16x16x16f16 r166, r212, r198, r166
	mma_16x16x16f16 r122, r212, r202, r122
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r210, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r214, r196, r154
	mma_16x16x16f16 r118, r214, r200, r118
	mma_16x16x16f16 r154, r216, r198, r154
	mma_16x16x16f16 r118, r216, r202, r118
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r214, r204, 0x0
	add_i32 r204, 0x4000, r18
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r206, r196, r146
	mma_16x16x16f16 r114, r206, r200, r114
	mma_16x16x16f16 r146, r208, r198, r146
	mma_16x16x16f16 r114, r208, r202, r114
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r19
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r210, r196, r142
	mma_16x16x16f16 r110, r210, r200, r110
	mma_16x16x16f16 r142, r212, r198, r142
	mma_16x16x16f16 r110, r212, r202, r110
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r210, r204, 0x0
	add_i32 r204, 0x4000, r22
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r214, r196, r138
	mma_16x16x16f16 r106, r214, r200, r106
	mma_16x16x16f16 r138, r216, r198, r138
	mma_16x16x16f16 r106, r216, r202, r106
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r214, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r206, r196, r134
	mma_16x16x16f16 r102, r206, r200, r102
	mma_16x16x16f16 r134, r208, r198, r134
	mma_16x16x16f16 r102, r208, r202, r102
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r21
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r210, r196, r130
	mma_16x16x16f16 r98, r210, r200, r98
	mma_16x16x16f16 r130, r212, r198, r130
	mma_16x16x16f16 r98, r212, r202, r98
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r210, r183, 0x0
	add_i32 r183, 0x4000, r23
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r214, r192, r170
	mma_16x16x16f16 r126, r214, r188, r126
	mma_16x16x16f16 r170, r216, r194, r170
	mma_16x16x16f16 r126, r216, r190, r126
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r214, r204, 0x0
	add_i32 r204, 0x4000, r24
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r206, r192, r166
	mma_16x16x16f16 r122, r206, r188, r122
	mma_16x16x16f16 r166, r208, r194, r166
	mma_16x16x16f16 r122, r208, r190, r122
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r25
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r210, r192, r154
	mma_16x16x16f16 r118, r210, r188, r118
	mma_16x16x16f16 r154, r212, r194, r154
	mma_16x16x16f16 r118, r212, r190, r118
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r210, r204, 0x0
	add_i32 r204, 0x4000, r26
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r214, r192, r146
	mma_16x16x16f16 r114, r214, r188, r114
	mma_16x16x16f16 r146, r216, r194, r146
	mma_16x16x16f16 r114, r216, r190, r114
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r214, r183, 0x0
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r206, r192, r142
	mma_16x16x16f16 r110, r206, r188, r110
	.loc	2 289 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:289:43
	lds_b128 r204, r204, 0x0
	.loc	2 295 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:295:58
	mma_16x16x16f16 r142, r208, r194, r142
	mma_16x16x16f16 r110, r208, r190, r110
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r210, r192, r138
	mma_16x16x16f16 r106, r210, r188, r106
	mma_16x16x16f16 r138, r212, r194, r138
	mma_16x16x16f16 r106, r212, r190, r106
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r214, r192, r134
	mma_16x16x16f16 r102, r214, r188, r102
	mma_16x16x16f16 r134, r216, r194, r134
	mma_16x16x16f16 r102, r216, r190, r102
	arrive bsmcnt(0)
	mma_16x16x16f16 r130, r204, r192, r130
	mma_16x16x16f16 r98, r204, r188, r98
	mma_16x16x16f16 r130, r206, r194, r130
	mma_16x16x16f16 r98, r206, r190, r98
.Ltmp351:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp352:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp353:
	.loc	2 307 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:307:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_6
; %bb.5:                                ; %for.cond839.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	add_co_u32 r204, 0x180100, r33
	addc_co_u32 r205, r32, 0
	add_co_u32 r206, 0x100100, r33
	addc_co_u32 r207, r32, 0
	add_co_u32 r208, 0x80100, r33
	addc_co_u32 r209, r32, 0
.Ltmp354:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	add_co_u32 r210, 0x100, r33
	rfl_b32 s7, r7
	addc_co_u32 r211, r32, 0
	smov_b32 s6, md
	snop 1
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r210, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r208, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r206, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r204, 0x0 bsm
	smov_b32 md, s6
.Ltmp355:
LBB3_6:                                 ; %if.end923
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r204, r11, 0x0
	lds_b128 r208, r12, 0x0
	lds_b128 r212, r13, 0x0
	.loc	2 328 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:328:9
	sandn_b64 cmsk, xmsk, s22
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r204, r196, r94
	mma_16x16x16f16 r62, r204, r200, r62
	mma_16x16x16f16 r94, r206, r198, r94
	mma_16x16x16f16 r62, r206, r202, r62
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r204, r14, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r208, r196, r90
	mma_16x16x16f16 r58, r208, r200, r58
	mma_16x16x16f16 r90, r210, r198, r90
	mma_16x16x16f16 r58, r210, r202, r58
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r208, r15, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r212, r196, r86
	mma_16x16x16f16 r54, r212, r200, r54
	mma_16x16x16f16 r86, r214, r198, r86
	mma_16x16x16f16 r54, r214, r202, r54
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r212, r16, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r204, r196, r82
	mma_16x16x16f16 r50, r204, r200, r50
	mma_16x16x16f16 r82, r206, r198, r82
	mma_16x16x16f16 r50, r206, r202, r50
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r204, r17, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r208, r196, r78
	mma_16x16x16f16 r46, r208, r200, r46
	mma_16x16x16f16 r78, r210, r198, r78
	mma_16x16x16f16 r46, r210, r202, r46
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r208, r18, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r212, r196, r74
	mma_16x16x16f16 r42, r212, r200, r42
	mma_16x16x16f16 r74, r214, r198, r74
	mma_16x16x16f16 r42, r214, r202, r42
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r212, r19, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r204, r196, r70
	mma_16x16x16f16 r38, r204, r200, r38
	mma_16x16x16f16 r70, r206, r198, r70
	mma_16x16x16f16 r38, r206, r202, r38
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r204, r20, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r208, r196, r66
	mma_16x16x16f16 r34, r208, r200, r34
	mma_16x16x16f16 r66, r210, r198, r66
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r196, r21, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	mma_16x16x16f16 r34, r210, r202, r34
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r200, r22, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r94, r212, r192, r94
	mma_16x16x16f16 r62, r212, r188, r62
	mma_16x16x16f16 r94, r214, r194, r94
	mma_16x16x16f16 r62, r214, r190, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r204, r192, r90
	mma_16x16x16f16 r58, r204, r188, r58
	mma_16x16x16f16 r90, r206, r194, r90
	mma_16x16x16f16 r58, r206, r190, r58
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r204, r23, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r196, r192, r86
	mma_16x16x16f16 r54, r196, r188, r54
	mma_16x16x16f16 r86, r198, r194, r86
	mma_16x16x16f16 r54, r198, r190, r54
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r196, r24, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r200, r192, r82
	mma_16x16x16f16 r50, r200, r188, r50
	mma_16x16x16f16 r82, r202, r194, r82
	mma_16x16x16f16 r50, r202, r190, r50
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r200, r25, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r204, r192, r78
	mma_16x16x16f16 r46, r204, r188, r46
	mma_16x16x16f16 r78, r206, r194, r78
	mma_16x16x16f16 r46, r206, r190, r46
	.loc	2 314 43                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:314:43
	lds_b128 r204, r26, 0x0
	.loc	2 320 58                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:320:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r196, r192, r74
	mma_16x16x16f16 r42, r196, r188, r42
	mma_16x16x16f16 r74, r198, r194, r74
	mma_16x16x16f16 r42, r198, r190, r42
	arrive bsmcnt(1)
	mma_16x16x16f16 r70, r200, r192, r70
	mma_16x16x16f16 r38, r200, r188, r38
	mma_16x16x16f16 r70, r202, r194, r70
	mma_16x16x16f16 r38, r202, r190, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r66, r204, r192, r66
	mma_16x16x16f16 r34, r204, r188, r34
	mma_16x16x16f16 r66, r206, r194, r66
	mma_16x16x16f16 r34, r206, r190, r34
	.loc	2 328 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:328:9
	bra_cmsks LBB3_1
; %bb.7:                                ; %for.body1023.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp356:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
	barrier
	barrier
	barrier
.Ltmp357:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp358:
LBB3_8:                                 ; %for.cond1034.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	sshl_b32 s3, 7, s16
	sshl_b64 s6, 7, s16
	and_b32 r6, 0x1e0, r2
	and_b32 r7, r0, 15
	or_b32 r3, r7, s3
	or_b32 r2, r6, r7
	or_b32 r7, s6, r7
	ssub_co_i32 s2, s2, s3
	add_u32 r3, r3, r6
	mov_b32 r10, s7
	add_co_u32 r6, r7, r6
	sadd_co_i32 s2, s2, s0
	addc_co_u32 r7, r10, 0
	sashr_i32 s3, 31, s1
	add_co_u32 r6, r6, s1
	mov_b32 r10, s3
	.loc	2 337 92 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:337:92
	cmp_ge_i32 s8, r2, s2
	cmp_lt_i32 s14, r2, s2
	sashr_i32 s5, 31, s0
	mov_b32 r8, s0
	addc_co_u32 r7, r7, r10
	mov_b32 r9, s5
	sub_co_u32 r6, r6, r8
	add_u32 r5, r3, s1
	mov_b32 r3, 0
	subb_co_u32 r7, r7, r9
	.loc	2 337 9 is_stmt 0               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:337:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_12
; %bb.9:                                ; %if.then1052
	.loc	2 0 9                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sub_u32 r3, r5, s0
	cmp_gt_i32 s20, 0x8e0, r3
	.loc	2 339 15 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:339:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r3, 0
	.loc	2 339 163 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:339:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_11
; %bb.10:                               ; %if.then1081
	.loc	2 0 163                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r3, s13
	addc_co_u32 r9, r3, r9
	.loc	2 340 19 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:340:19
	snop 1
	ldg_b32 r3, r8, 0x0
LBB3_11:                                ; %Flow545
	.loc	2 0 19 is_stmt 0                ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_12:                                ; %for.inc1105
	sor_b64 xmsk, xmsk, s6
	.loc	2 337 63 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:337:63
	or_b32 r2, r2, 16
	.loc	2 337 92 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:337:92
	cmp_ge_i32 s6, r2, s2
	cmp_lt_i32 s2, r2, s2
	.loc	2 0 0                           ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 337 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:337:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then1052.1
	.loc	2 339 117 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:339:117
	add_u32 r2, r5, 16
	.loc	2 339 15 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:339:15
	cmp_ge_i32 s20, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x8e0, r2
	mov_b32 r2, 0
	.loc	2 339 163                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:339:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1081.1
	.loc	2 0 163                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 340 19 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:340:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_15:                                ; %Flow544
	.loc	2 0 19 is_stmt 0                ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_16:                                ; %for.inc1105.1
	sor_b64 xmsk, xmsk, s18
	sshl_b32 s0, 18, s16
	sshl_b32 s1, 8, s4
	shl_b32 r0, 11, r0
	and_b32 r1, 0xf0000, r1
	sadd_co_i32 s0, s1, s0
	and_b32 r0, 0x7800, r0
	add_u32 r1, s0, r1
	add_u32 r0, r1, r0
	and_or_b32 r0, r4, 12, r0
	shl_b64 r6, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then1126
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(0)
	mul_f32 r1, r170, r3
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r4, r171, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r5, r172, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r8, r173, r3
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp360:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp363:
LBB3_18:                                ; %if.end1181
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 22 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mov_b32 r1, 0
	shl_b64 r4, 1, r0
	add_co_u32 r4, s10, r4
	mov_b32 r1, s11
	addc_co_u32 r5, r1, r5
	.loc	2 365 254 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r4, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then1126.1
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(1)
	mul_f32 r7, r167, r3
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r166, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r8, r168, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r9, r169, r3
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp365:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp368:
LBB3_20:                                ; %if.end1181.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 16
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r20, r1, 2, s10
	shl_b64 r8, 0, 0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r20, 0x0, r6 devc
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1126.2
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(2)
	mul_f32 r1, r154, r3
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r6, r155, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r7, r156, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r10, r157, r3
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp370:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp373:
LBB3_22:                                ; %if.end1181.2
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 32
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r6, r1, 2, s10
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1126.3
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(3)
	mul_f32 r9, r147, r3
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r146, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r10, r148, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r11, r149, r3
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp375:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp378:
LBB3_24:                                ; %if.end1181.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 48
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r24, r1, 2, s10
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1126.4
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(4)
	mul_f32 r9, r143, r3
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r142, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r10, r144, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r11, r145, r3
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp380:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp383:
LBB3_26:                                ; %if.end1181.4
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 64
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r12, r1, 2, s10
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1126.5
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(5)
	mul_f32 r9, r139, r3
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r138, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r10, r140, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r11, r141, r3
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp385:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp388:
LBB3_28:                                ; %if.end1181.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, 0x50, r0
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r26, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r26, 0x0, r8 devc
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1126.6
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(6)
	mul_f32 r1, r134, r3
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r8, r135, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r9, r136, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r14, r137, r3
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp390:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp393:
LBB3_30:                                ; %if.end1181.6
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, 0x60, r0
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r8, r1, 2, s10
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1126.7
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(7)
	mul_f32 r11, r131, r3
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r130, r3
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r14, r132, r3
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r15, r133, r3
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp395:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp398:
LBB3_32:                                ; %if.end1181.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, 0x70, r0
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r14, 0, 0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r22, 0x0, r10 devc
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1126.8
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(8)
	mul_f32 r1, r126, r2
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r10, r127, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r11, r128, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r16, r129, r2
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp400:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r11
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp403:
LBB3_34:                                ; %if.end1181.8
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 22 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	add_co_u32 r10, 0x10000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 365 190 is_stmt 0             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:190
	add_u32 r0, 0x8000, r0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r10, 0x0, r14 devc
	shl_b64 r14, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1126.9
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(9)
	mul_f32 r15, r123, r2
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r122, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r16, r124, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r17, r125, r2
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp405:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r14_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp408:
LBB3_36:                                ; %if.end1181.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 16
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r28, 0x0, r14 devc
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1126.10
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(10)
	mul_f32 r1, r118, r2
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r14, r119, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r15, r120, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r18, r121, r2
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp410:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp413:
LBB3_38:                                ; %if.end1181.10
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 32
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r14, r1, 2, s10
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1126.11
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(11)
	mul_f32 r17, r115, r2
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r114, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r18, r116, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r19, r117, r2
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp415:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp418:
LBB3_40:                                ; %if.end1181.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 48
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1126.12
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(12)
	mul_f32 r1, r110, r2
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r16, r111, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r17, r112, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r32, r113, r2
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp420:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r17
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r32
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp423:
LBB3_42:                                ; %if.end1181.12
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, r0, 64
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r16, r1, 2, s10
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1126.13
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	arrive gvmcnt(13)
	mul_f32 r19, r107, r2
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	mul_f32 r1, r106, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r32, r108, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r33, r109, r2
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp425:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r32
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r33
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp428:
LBB3_44:                                ; %if.end1181.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, 0x50, r0
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r32, r1, 2, s10
	shl_b64 r106, 0, 0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r32, 0x0, r18 devc
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1126.14
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(14)
	mul_f32 r1, r102, r2
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r18, r103, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r19, r104, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r102, r105, r2
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp430:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_lo, r19
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_hi, r102
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp433:
LBB3_46:                                ; %if.end1181.14
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r1, 0x60, r0
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r18, r1, 2, s10
	shl_b64 r102, 0, 0
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 0
	stg_b64 r18, 0x0, r106 devc
	.loc	2 349 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:349:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1126.15
	.loc	2 354 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:354:22
	arrive gvmcnt(15)
	mul_f32 r1, r98, r2
	.loc	2 355 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:355:22
	mul_f32 r98, r99, r2
	.loc	2 356 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:356:22
	mul_f32 r99, r100, r2
	.loc	2 357 22                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:357:22
	mul_f32 r100, r101, r2
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r102_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp435:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r102_hi, r98
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r103_lo, r99
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r103_hi, r100
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
LBB3_48:                                ; %if.end1181.15
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 365 211 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:211
	or_b32 r0, 0x70, r0
	.loc	2 365 22 is_stmt 0              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:22
	mad_i32 r0, r0, 2, s10
	.loc	2 365 254                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:365:254
	snop 1
	stg_b64 r0, 0x0, r102 devc
	.loc	2 369 9 is_stmt 1               ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.end1292.1.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	shl_b64 r98, 0, 0
	snop 1
	stg_b64 r4, 0x100, r98 devc
                                        ; implicit-def: $mtreg_64bits_4
LBB3_50:                                ; %Flow543
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r98, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1231
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	arrive gvmcnt(16)
	mul_f32 r94, r94, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r95, r95, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r96, r96, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r97, r97, r3
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r94
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r95
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r97
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r4, 0x100, r94 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r4, r90, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r5, r91, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r90, r92, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r91, r93, r3
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_lo, r90
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_hi, r91
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp448:
LBB3_52:                                ; %if.end1292.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r20, 0x100, r98 devc
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1292.3.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r6, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow542
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1231.2
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	arrive gvmcnt(17)
	mul_f32 r4, r86, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r5, r87, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r20, r88, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r21, r89, r3
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp450:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r21
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp453:
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r6, 0x100, r4 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r4, r82, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r5, r83, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r84, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r7, r85, r3
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp455:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp458:
LBB3_56:                                ; %if.end1292.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r24, 0x100, r4 devc
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1292.5.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_58:                                ; %Flow541
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1231.4
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	arrive gvmcnt(18)
	mul_f32 r4, r78, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r5, r79, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r80, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r7, r81, r3
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp460:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp463:
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r12, 0x100, r4 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r4, r74, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r5, r75, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r76, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r7, r77, r3
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp465:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp468:
LBB3_60:                                ; %if.end1292.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r26, 0x100, r4 devc
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1292.7.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	shl_b64 r4, 0, 0
                                        ; implicit-def: $mtreg_32bit_3
	snop 1
	stg_b64 r8, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_62:                                ; %Flow540
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1231.6
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	arrive gvmcnt(19)
	mul_f32 r4, r70, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r5, r71, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r72, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r7, r73, r3
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp470:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp473:
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r8, 0x100, r4 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r4, r66, r3
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	mul_f32 r5, r67, r3
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r68, r3
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r3, r69, r3
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp475:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp478:
LBB3_64:                                ; %if.end1292.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r22, 0x100, r4 devc
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1292.9.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_66:                                ; %Flow538
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1231.8
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	arrive gvmcnt(20)
	mul_f32 r4, r63, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r5, r64, r2
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r62, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r6, r65, r2
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp483:
	.loc	2 375 24 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r59, r2
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	stg_b64 r10, 0x100, r8 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r58, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r60, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r7, r61, r2
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp485:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp487:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp488:
LBB3_68:                                ; %if.end1292.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r28, 0x100, r4 devc
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1292.11.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r14, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_70:                                ; %Flow537
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1231.10
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	arrive gvmcnt(21)
	mul_f32 r4, r55, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r5, r56, r2
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r54, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r6, r57, r2
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp490:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp492:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp493:
	.loc	2 375 24 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r51, r2
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	stg_b64 r14, 0x100, r8 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r50, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r52, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r7, r53, r2
.Ltmp494:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp495:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp497:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp498:
LBB3_72:                                ; %if.end1292.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1292.13.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow536
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1231.12
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	arrive gvmcnt(22)
	mul_f32 r4, r47, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r5, r48, r2
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r46, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r6, r49, r2
.Ltmp499:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp500:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp502:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp503:
	.loc	2 375 24 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r43, r2
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	stg_b64 r16, 0x100, r8 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r42, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r44, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r7, r45, r2
.Ltmp504:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp505:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp508:
LBB3_76:                                ; %if.end1292.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r32, 0x100, r4 devc
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmsks LBB3_79
; %bb.77:                               ; %Flow
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB3_80
LBB3_78:                                ; %if.end1292.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 387 1                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:387:1
	snop 0
	endk
LBB3_79:                                ; %if.end1292.15.critedge
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	arrive gvmcnt(23)
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r18, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_18
	.loc	2 369 9                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:369:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_78
LBB3_80:                                ; %if.then1231.14
	.loc	2 375 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	arrive gvmcnt(23)
	mul_f32 r4, r39, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r5, r40, r2
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r38, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r6, r41, r2
.Ltmp509:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp510:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp511:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp512:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp513:
	.loc	2 375 24 is_stmt 1              ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:375:24
	snop 0
	mul_f32 r5, r35, r2
	.loc	2 385 262                       ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	stg_b64 r18, 0x100, r8 devc
	.loc	2 374 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:374:24
	mul_f32 r3, r34, r2
	.loc	2 376 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:376:24
	mul_f32 r6, r36, r2
	.loc	2 377 24                        ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:377:24
	mul_f32 r2, r37, r2
.Ltmp514:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp515:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp517:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp518:
	.loc	2 385 262 is_stmt 1             ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:385:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 387 1                         ; /tmp/v036_codegen_compare/v036_case1_generated_device.cpp:387:1
	snop 0
	endk
.Ltmp519:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 17168
; NumMTRegsForWarps/PEU: 218
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
	.byte	1                               ; Abbrev [1] 0xb:0x46d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x4e:0x127 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x5f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	58                              ; DW_AT_call_line
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
	.byte	89                              ; DW_AT_call_line
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
	.byte	103                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xc5:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xda:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	162                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xe6:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	161                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xf2:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	160                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xfe:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	159                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x10a:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	185                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x116:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x123:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x130:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x13f:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	186                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x14b:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x158:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x165:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x175:0x6 DW_TAG_subprogram
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x17b:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x181:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x187:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x18d:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x193:0x2e4 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x1a4:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp317                        ; DW_AT_low_pc
	.long	.Ltmp318-.Ltmp317               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	225                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1b8:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp317                        ; DW_AT_low_pc
	.long	.Ltmp318-.Ltmp317               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x1cd:0x19 DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	228                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x1d9:0xc DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	5                               ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1e6:0x29 DW_TAG_inlined_subroutine
	.long	391                             ; DW_AT_abstract_origin
	.quad	.Ltmp331                        ; DW_AT_low_pc
	.long	.Ltmp332-.Ltmp331               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	251                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1fa:0x14 DW_TAG_inlined_subroutine
	.long	385                             ; DW_AT_abstract_origin
	.quad	.Ltmp331                        ; DW_AT_low_pc
	.long	.Ltmp332-.Ltmp331               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	13                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x20f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp332                        ; DW_AT_low_pc
	.long	.Ltmp333-.Ltmp332               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	253                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x223:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp332                        ; DW_AT_low_pc
	.long	.Ltmp333-.Ltmp332               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x238:0x1a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	256                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x245:0xc DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	5                               ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x252:0xc DW_TAG_inlined_subroutine
	.long	397                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	254                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x25e:0x2a DW_TAG_inlined_subroutine
	.long	391                             ; DW_AT_abstract_origin
	.quad	.Ltmp340                        ; DW_AT_low_pc
	.long	.Ltmp341-.Ltmp340               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	275                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x273:0x14 DW_TAG_inlined_subroutine
	.long	385                             ; DW_AT_abstract_origin
	.quad	.Ltmp340                        ; DW_AT_low_pc
	.long	.Ltmp341-.Ltmp340               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	13                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x288:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp341                        ; DW_AT_low_pc
	.long	.Ltmp342-.Ltmp341               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	277                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x29d:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp341                        ; DW_AT_low_pc
	.long	.Ltmp342-.Ltmp341               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2b2:0x1a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	279                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x2bf:0xc DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	5                               ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2cc:0x2a DW_TAG_inlined_subroutine
	.long	391                             ; DW_AT_abstract_origin
	.quad	.Ltmp351                        ; DW_AT_low_pc
	.long	.Ltmp352-.Ltmp351               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	304                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2e1:0x14 DW_TAG_inlined_subroutine
	.long	385                             ; DW_AT_abstract_origin
	.quad	.Ltmp351                        ; DW_AT_low_pc
	.long	.Ltmp352-.Ltmp351               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	13                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2f6:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp352                        ; DW_AT_low_pc
	.long	.Ltmp353-.Ltmp352               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	306                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x30b:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp352                        ; DW_AT_low_pc
	.long	.Ltmp353-.Ltmp352               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x320:0x2a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.quad	.Ltmp354                        ; DW_AT_low_pc
	.long	.Ltmp355-.Ltmp354               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	309                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x335:0x14 DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.quad	.Ltmp354                        ; DW_AT_low_pc
	.long	.Ltmp355-.Ltmp354               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	5                               ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x34a:0x2a DW_TAG_inlined_subroutine
	.long	391                             ; DW_AT_abstract_origin
	.quad	.Ltmp356                        ; DW_AT_low_pc
	.long	.Ltmp357-.Ltmp356               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	330                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x35f:0x14 DW_TAG_inlined_subroutine
	.long	385                             ; DW_AT_abstract_origin
	.quad	.Ltmp356                        ; DW_AT_low_pc
	.long	.Ltmp357-.Ltmp356               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	13                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x374:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp357                        ; DW_AT_low_pc
	.long	.Ltmp358-.Ltmp357               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	332                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x389:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp357                        ; DW_AT_low_pc
	.long	.Ltmp358-.Ltmp357               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x39e:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	358                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3ab:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3b8:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3c5:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3d4:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	359                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3e1:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3ee:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3fb:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x40a:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	378                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x417:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x424:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x431:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x440:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	379                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x44d:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x45a:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x467:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
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
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
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
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
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
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
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
	.quad	0
	.quad	0
.Ldebug_ranges21:
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
	.quad	0
	.quad	0
.Ldebug_ranges22:
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
	.quad	0
	.quad	0
.Ldebug_ranges23:
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
.Ldebug_ranges24:
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
.Ldebug_ranges25:
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
.Ldebug_ranges26:
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
.Ldebug_ranges27:
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
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
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
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
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
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
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
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
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
.Ldebug_ranges32:
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
.Ldebug_ranges33:
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
.Ldebug_ranges34:
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v036_codegen_compare/v036_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=90
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=111
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=121
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=135
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=141
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=157
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=175
.Linfo_string9:
	.asciz	"memcpy_async<16, false>"       ; string offset=193
.Linfo_string10:
	.asciz	"moe_memcpy_async_16"           ; string offset=217
.Linfo_string11:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=237
.Linfo_string12:
	.asciz	"moe_wait_async_16"             ; string offset=332
.Linfo_string13:
	.asciz	"moe_memcpy_sync_16"            ; string offset=350
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=369
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=383
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
    .mtreg_count:    206
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
    .mtreg_count:    218
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
