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
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 222 0                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:222:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp316:
	.loc	2 233 19 prologue_end           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:233:19
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
	.loc	2 234 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:234:20
	sshl_b64 s2, 2, s18
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 235 19                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:235:19
	sadd_co_u32 s6, s44, s2
	saddc_co_u32 s7, s45, s3
	.loc	2 236 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:236:22
	sadd_co_u32 s8, s46, s2
	smov_b32 s2, 0x1e000
	.loc	2 249 168                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:168
	and_or_b32 r35, r3, s2, r1
	.loc	2 249 227 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:227
	or_b32 r156, r35, r4
	.loc	2 249 67                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:67
	shl_b32 r1, 1, r156
	shl_b32 r8, 3, r0
	.loc	2 236 22 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:236:22
	saddc_co_u32 s9, s47, s3
	.loc	2 249 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:45
	ldg_b128 r160, s14, r1, 0x0
	shl_b32 r1, 10, r0
	sshl_b32 s19, 21, s4
	and_b32 r31, 0xfe000, r1
	and_b32 r7, r8, 56
	sshl_b32 s18, 24, s18
	or3_b32 r7, s19, r7, r31
	add_u32 r7, r7, s18
	.loc	2 253 356                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:356
	mad_i32 r10, r7, 2, s40
	add_co_u32 r12, 0x80000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 249 168                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:168
	or_b32 r33, 0x20000, r35
	.loc	2 253 339                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:339
	ldg_b128 r18, r10, 0x0
	ldg_b128 r22, r12, 0x0
	.loc	2 253 356 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:356
	add_co_u32 r12, 0x100000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 249 227 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:227
	or_b32 r158, r33, r4
	.loc	2 253 356                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:356
	add_co_u32 r10, 0x180000, r10
	.loc	2 249 67                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:67
	shl_b32 r3, 1, r158
	.loc	2 249 227 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:227
	or_b32 r5, 0x20020, r156
	or_b32 r4, r156, 32
	.loc	2 249 67                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:67
	shl_b32 r6, 1, r5
	.loc	2 249 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:45
	ldg_b128 r164, s14, r3, 0x0
	.loc	2 249 67                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:67
	shl_b32 r3, 1, r4
	.loc	2 253 356 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:356
	addc_co_u32 r11, r11, 0
	.loc	2 249 45                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:249:45
	ldg_b128 r180, s14, r6, 0x0
	ldg_b128 r176, s14, r3, 0x0
	.loc	2 253 339                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:339
	ldg_b128 r36, r12, 0x0
	ldg_b128 r40, r10, 0x0
	and_b32 r6, r8, 16
	and_b32 r17, r8, 32
	.loc	2 234 20                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:234:20
	ldu_b32 s2, s0, 0x0
	.loc	2 235 19                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:235:19
	ldu_b32 s1, s6, 0x0
	.loc	2 236 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:236:22
	ldu_b32 s0, s8, 0x0
	mul_u24 r3, r0, 9
	add_u32 r9, r17, r0
	add_u32 r6, r6, r0
	and_b32 r7, 0x1fc0, r8
	and_b32 r3, r3, 8
	and_b32 r9, r9, 32
	and_b32 r6, r6, 16
	.loc	2 253 47                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:47
	add_u32 r27, 0x800, r7
	add_u32 r28, 0x1000, r7
	add_u32 r29, 0x1800, r7
	.loc	2 253 83 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:83
	or_b32 r10, r9, r3
	.loc	2 253 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:27
	or_b32 r3, r6, r3
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 253 253                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:253
	or3_b32 r11, r10, r7, r6
	.loc	2 253 27                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:27
	or3_b32 r12, r10, r27, r6
	or3_b32 r6, r10, r28, r6
	mov_b32 r10, s3
	or3_b32 r3, r3, r29, r9
	shl_add_u32 r11, 1, r11, r10
	shl_add_u32 r12, 1, r12, r10
	shl_add_u32 r6, 1, r6, r10
	shl_add_u32 r3, 1, r3, r10
	.loc	2 253 339                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:253:339
	arrive gvmcnt(6)
	sts_b128 r11, 0x0, r18
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r22
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r36
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r40
.Ltmp317:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	shr_b32 r6, 5, r0
	add_shl_u32 r6, r6, r2, 4
	and_b32 r9, r6, 16
	shr_b32 r6, 4, r0
	xor_b32 r32, r8, r0
	add_shl_u32 r10, r6, r0, 3
	and_b32 r6, r32, 32
	add_u32 r6, r6, r0
	and_b32 r30, r6, 32
	and_b32 r6, r32, 16
	add_u32 r6, r6, r0
	and_b32 r34, r6, 16
	and_b32 r6, r0, 8
	xadd_u32 r6, r6, r8, r0
	and_b32 r36, r6, 8
	sadd_co_u32 s3, 0x80, s14
	or_b32 r38, r30, r36
	saddc_co_u32 s5, s15, 0
	sadd_co_i32 s7, s18, s19
	and_b32 r37, r32, 56
	or_b32 r6, r7, r36
	or3_b32 r26, r38, r7, r34
	or3_b32 r7, r37, r31, s7
.Ltmp318:
	.loc	2 256 3                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:3
	or3_b32 r31, s7, r31, r37
	mad_i32 r188, r31, 2, s40
	or_b32 r31, r31, 64
	smov_b32 s6, 0x3c0
	and_or_b32 r8, r8, s6, r36
	mad_i32 r190, r31, 2, s40
	shl_b32 r31, 1, r32
	or3_b32 r6, r6, r34, r30
	or3_b32 r8, r8, r30, r34
	or3_b32 r27, r38, r27, r34
	or3_b32 r28, r38, r28, r34
	or_b32 r34, r34, r36
	shl_or_b32 r31, 11, r0, r31
	shl_b64 r36, 0, s40
	and_b32 r31, 0x3c070, r31
	mad_i32 r36, s7, 2, r36
	add_co_u32 r31, r36, r31
	shl_b32 r3, 6, r0
	and_b32 r36, r0, 48
	and_b32 r16, 0x3c0, r3
	or3_b32 r29, r34, r29, r30
	and_or_b32 r24, r10, 8, r9
	addc_co_u32 r32, r37, 0
	shl_or_b32 r34, 1, r33, r36
	.loc	2 256 8 is_stmt 0               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:8
	sadd_co_u32 s18, 0x80080, s40
	or_b32 r18, r24, r16
	.loc	2 256 3                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:3
	add_co_u32 r33, s3, r34
	cmp_gt_u32 s8, 0x80, r0
	or_b32 r19, 0x400, r16
	or_b32 r20, r24, r17
	or_b32 r21, 0x800, r16
	or_b32 r23, 0x1000, r16
	or_b32 r40, 0x1800, r16
	xor_b32 r42, r17, 32
	mov_b32 r37, 0
	mov_b32 r34, s5
	.loc	2 256 8                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:8
	saddc_co_u32 s19, s41, 0
	or_b32 r9, r18, r17
	or_b32 r17, r18, r42
	or_b32 r10, r20, r19
	or_b32 r11, r20, r21
	or_b32 r13, r20, r23
	or_b32 r15, r20, r40
	or3_b32 r18, r24, r19, r42
	or3_b32 r19, r24, r21, r42
	or3_b32 r21, r24, r23, r42
	or3_b32 r23, r24, r40, r42
	shl_add_u32 r40, 1, r26, 0
	or_b32 r22, 0xc00, r16
	or_b32 r25, 0x1400, r16
	or_b32 r41, 0x1c00, r16
	.loc	2 256 3                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:3
	addc_co_u32 r34, r34, r37
	shl_or_b32 r36, 1, r35, r36
	.loc	2 0 0                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:0
	shl_b64 r136, 0, 0
	shl_add_u32 r6, 1, r6, 0
	sadd_co_u32 s14, 0x100, s14
	or_b32 r12, r20, r22
	or_b32 r14, r20, r25
	or_b32 r16, r20, r41
	or3_b32 r20, r24, r22, r42
	or3_b32 r22, r24, r25, r42
	or3_b32 r24, r24, r41, r42
	.loc	2 256 3                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:3
	add_co_u32 r35, s3, r36
	mov_b32 r36, s5
	smov_b64 s20, 0
	shl_add_u32 r8, 1, r8, 0
	add_u32 r26, 0x6000, r40
	add_u32 r30, 0x4000, r40
	.loc	2 0 0                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:0
	shl_b64 r138, 0, 0
	shl_b64 r140, 0, r136
	shl_b64 r144, 0, r136
	shl_b64 r148, 0, r136
	shl_b64 r152, 0, r136
	shl_b64 r168, 0, r136
	shl_b64 r172, 0, r136
	shl_b64 r184, 0, r136
	shl_b64 r40, 0, r136
	shl_b64 r44, 0, r136
	shl_b64 r48, 0, r136
	shl_b64 r52, 0, r136
	shl_b64 r56, 0, r136
	shl_b64 r60, 0, r136
	shl_b64 r64, 0, r136
	shl_b64 r68, 0, r136
	shl_b64 r72, 0, r136
	shl_b64 r76, 0, r136
	shl_b64 r80, 0, r136
	shl_b64 r84, 0, r136
	shl_b64 r88, 0, r136
	shl_b64 r92, 0, r136
	shl_b64 r96, 0, r136
	shl_b64 r100, 0, r136
	shl_b64 r132, 0, r136
	shl_b64 r128, 0, r136
	shl_b64 r124, 0, r136
	shl_b64 r120, 0, r136
	shl_b64 r116, 0, r136
	shl_b64 r112, 0, r136
	shl_b64 r108, 0, r136
	shl_b64 r104, 0, r136
	shr_b32 r3, 2, r0
	mov_b32 r39, 0
	add_u32 r6, 0x5000, r6
	saddc_co_u32 s15, s15, 0
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
	add_u32 r25, 0x4000, r8
	shl_add_u32 r27, 1, r27, 0
	shl_add_u32 r28, 1, r28, 0
	shl_add_u32 r29, 1, r29, 0
	.loc	2 256 3                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:3
	mov_b32 r157, 0
	addc_co_u32 r36, r36, r37
	smov_b64 s22, s20
	shl_b64 r142, 0, r138
	shl_b64 r146, 0, r138
	shl_b64 r150, 0, r138
	shl_b64 r154, 0, r138
	shl_b64 r170, 0, r138
	shl_b64 r174, 0, r138
	shl_b64 r186, 0, r138
	shl_b64 r42, 0, r138
	shl_b64 r46, 0, r138
	shl_b64 r50, 0, r138
	shl_b64 r54, 0, r138
	shl_b64 r58, 0, r138
	shl_b64 r62, 0, r138
	shl_b64 r66, 0, r138
	shl_b64 r70, 0, r138
	shl_b64 r74, 0, r138
	shl_b64 r78, 0, r138
	shl_b64 r82, 0, r138
	shl_b64 r86, 0, r138
	shl_b64 r90, 0, r138
	shl_b64 r94, 0, r138
	shl_b64 r98, 0, r138
	shl_b64 r102, 0, r138
	shl_b64 r134, 0, r138
	shl_b64 r130, 0, r138
	shl_b64 r126, 0, r138
	shl_b64 r122, 0, r138
	shl_b64 r118, 0, r138
	shl_b64 r114, 0, r138
	shl_b64 r110, 0, r138
	shl_b64 r106, 0, r138
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc1083
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 256 31                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:31
	sadd_co_u32 s22, 0x100, s22
	saddc_co_u32 s23, s23, 0
	sadd_co_u32 s20, 0x80, s20
	saddc_co_u32 s21, s21, 0
	scmp_eq_u64 0x4000, s22
	.loc	2 256 3                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:256:3
	snop 0
	bra_smsks LBB3_12
LBB3_2:                                 ; %for.body127
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 257 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:257:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %for.cond130.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp319:
	.file	6 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "maca_async.h"
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r37, r31, s22
	mov_b32 r38, s23
	addc_co_u32 r38, r32, r38
	add_co_u32 r192, 0x200000, r37
	addc_co_u32 r193, r38, 0
	rfl_b32 s25, r8
	smov_b32 s24, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	add_co_u32 r192, 0x240000, r37
	addc_co_u32 r193, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	add_co_u32 r192, 0x280000, r37
	addc_co_u32 r193, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	add_co_u32 r192, 0x2c0000, r37
	addc_co_u32 r193, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	add_co_u32 r192, 0x300000, r37
	addc_co_u32 r193, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	add_co_u32 r192, 0x340000, r37
	addc_co_u32 r193, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	add_co_u32 r192, 0x380000, r37
	addc_co_u32 r193, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	add_co_u32 r192, 0x3c0000, r37
	addc_co_u32 r193, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r192, 0x0 bsm
	smov_b32 md, s24
.Ltmp320:
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	6 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 264 71 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:71
	add_co_u32 r192, r156, s20
	mov_b32 r37, s21
	addc_co_u32 r193, r157, r37
	.loc	2 264 49 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:49
	add_co_u32 r194, r35, s22
	mov_b32 r38, s23
	addc_co_u32 r195, r36, r38
	.loc	2 264 71                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:71
	add_co_u32 r196, r158, s20
	addc_co_u32 r197, r39, r37
	.loc	2 264 49                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:49
	add_co_u32 r198, r33, s22
	.loc	2 264 251                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:251
	shl_b64 r192, 1, r192
	.loc	2 264 49                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:49
	addc_co_u32 r199, r34, r38
	.loc	2 264 71                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:71
	or_b32 r37, r192, 64
	add_co_u32 r192, s3, r37
	mov_b32 r37, s5
	.loc	2 264 49                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:49
	ldg_b128 r200, r194, 0x0
	.loc	2 264 251                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:251
	shl_b64 r194, 1, r196
	.loc	2 264 71                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:71
	addc_co_u32 r193, r37, r193
	or_b32 r38, r194, 64
	add_co_u32 r196, s3, r38
	addc_co_u32 r197, r37, r195
	.loc	2 268 41 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	add_i32 r37, 0x4000, r9
	add_i32 r38, 0x4000, r10
	.loc	2 264 49                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:49
	ldg_b128 r204, r198, 0x0
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r208, r37, 0x0
	lds_b128 r212, r38, 0x0
	add_i32 r37, 0x4000, r11
	.loc	2 264 49                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:264:49
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r196, 0x0
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r216, r37, 0x0
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r208, r160, r184
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	add_i32 r37, 0x4000, r12
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	mma_16x16x16f16 r132, r208, r164, r132
	mma_16x16x16f16 r184, r210, r162, r184
	mma_16x16x16f16 r132, r210, r166, r132
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r13
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r160, r172
	mma_16x16x16f16 r128, r212, r164, r128
	mma_16x16x16f16 r172, r214, r162, r172
	mma_16x16x16f16 r128, r214, r166, r128
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r14
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r216, r160, r168
	mma_16x16x16f16 r124, r216, r164, r124
	mma_16x16x16f16 r168, r218, r162, r168
	mma_16x16x16f16 r124, r218, r166, r124
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r15
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r208, r160, r152
	mma_16x16x16f16 r120, r208, r164, r120
	mma_16x16x16f16 r152, r210, r162, r152
	mma_16x16x16f16 r120, r210, r166, r120
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r16
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r212, r160, r148
	mma_16x16x16f16 r116, r212, r164, r116
	mma_16x16x16f16 r148, r214, r162, r148
	mma_16x16x16f16 r116, r214, r166, r116
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r17
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r216, r160, r144
	mma_16x16x16f16 r112, r216, r164, r112
	mma_16x16x16f16 r144, r218, r162, r144
	mma_16x16x16f16 r112, r218, r166, r112
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r18
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r160, r140
	mma_16x16x16f16 r108, r208, r164, r108
	mma_16x16x16f16 r140, r210, r162, r140
	mma_16x16x16f16 r108, r210, r166, r108
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r19
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r160, r136
	mma_16x16x16f16 r104, r212, r164, r104
	mma_16x16x16f16 r136, r214, r162, r136
	mma_16x16x16f16 r104, r214, r166, r104
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r20
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r216, r176, r184
	mma_16x16x16f16 r132, r216, r180, r132
	mma_16x16x16f16 r184, r218, r178, r184
	mma_16x16x16f16 r132, r218, r182, r132
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r21
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r208, r176, r172
	mma_16x16x16f16 r128, r208, r180, r128
	mma_16x16x16f16 r172, r210, r178, r172
	mma_16x16x16f16 r128, r210, r182, r128
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r22
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r212, r176, r168
	mma_16x16x16f16 r124, r212, r180, r124
	mma_16x16x16f16 r168, r214, r178, r168
	mma_16x16x16f16 r124, r214, r182, r124
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r23
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r216, r176, r152
	mma_16x16x16f16 r120, r216, r180, r120
	mma_16x16x16f16 r152, r218, r178, r152
	mma_16x16x16f16 r120, r218, r182, r120
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r24
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r208, r176, r148
	mma_16x16x16f16 r116, r208, r180, r116
	mma_16x16x16f16 r148, r210, r178, r148
	mma_16x16x16f16 r116, r210, r182, r116
	.loc	2 268 41                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:268:41
	lds_b128 r208, r37, 0x0
	.loc	2 274 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:274:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r212, r176, r144
	mma_16x16x16f16 r112, r212, r180, r112
	mma_16x16x16f16 r144, r214, r178, r144
	mma_16x16x16f16 r112, r214, r182, r112
	arrive bsmcnt(1)
	mma_16x16x16f16 r140, r216, r176, r140
	mma_16x16x16f16 r108, r216, r180, r108
	mma_16x16x16f16 r140, r218, r178, r140
	mma_16x16x16f16 r108, r218, r182, r108
	arrive bsmcnt(0)
	mma_16x16x16f16 r136, r208, r176, r136
	mma_16x16x16f16 r104, r208, r180, r104
	mma_16x16x16f16 r136, r210, r178, r136
	mma_16x16x16f16 r104, r210, r182, r104
.Ltmp321:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp322:
	.loc	2 283 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:283:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %for.cond347.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp323:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r37, r31, s22
	mov_b32 r38, s23
	addc_co_u32 r38, r32, r38
	add_co_u32 r208, 0x80, r37
	addc_co_u32 r209, r38, 0
	rfl_b32 s25, r25
	smov_b32 s24, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x40080, r37
	addc_co_u32 r209, r38, 0
	sadd_co_u32 md, 0x800, md
	snop 0
	ldg_b128 r0, r208, 0x0 bsm
	smov_b32 md, s24
.Ltmp324:
LBB3_6:                                 ; %if.end431
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	6 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 288 584 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:288:584
	or_b32 r37, r7, s20
	.loc	2 288 462 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:288:462
	mad_i32 r208, r37, 2, s18
.Ltmp325:
	.loc	6 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	mov_b32 r38, s23
	add_co_u32 r37, r190, s22
.Ltmp326:
	.loc	2 10 41                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:10:41
	ldg_b128 r208, r208, 0x0
.Ltmp327:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	addc_co_u32 r159, r191, r38
	add_co_u32 r212, 0x100000, r37
	addc_co_u32 r213, r159, 0
	add_co_u32 r214, 0x180000, r37
	rfl_b32 s7, r26
	smov_b32 s6, md
	addc_co_u32 r215, r159, 0
.Ltmp328:
	.loc	2 10 41                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:10:41
	arrive gvmcnt(0)
	sts_b128 r6, 0x0, r208
.Ltmp329:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r212, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r214, 0x0 bsm
.Ltmp330:
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r160, r100
	mma_16x16x16f16 r68, r208, r164, r68
	mma_16x16x16f16 r100, r210, r162, r100
	mma_16x16x16f16 r68, r210, r166, r68
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r208, r12, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r160, r96
	mma_16x16x16f16 r64, r212, r164, r64
	mma_16x16x16f16 r96, r214, r162, r96
	mma_16x16x16f16 r64, r214, r166, r64
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r212, r13, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r160, r92
	mma_16x16x16f16 r60, r216, r164, r60
	mma_16x16x16f16 r92, r218, r162, r92
	mma_16x16x16f16 r60, r218, r166, r60
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r216, r14, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r160, r88
	mma_16x16x16f16 r56, r208, r164, r56
	mma_16x16x16f16 r88, r210, r162, r88
	mma_16x16x16f16 r56, r210, r166, r56
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r208, r15, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r160, r84
	mma_16x16x16f16 r52, r212, r164, r52
	mma_16x16x16f16 r84, r214, r162, r84
	mma_16x16x16f16 r52, r214, r166, r52
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r212, r16, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r160, r80
	mma_16x16x16f16 r48, r216, r164, r48
	mma_16x16x16f16 r80, r218, r162, r80
	mma_16x16x16f16 r48, r218, r166, r48
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r216, r17, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r160, r76
	mma_16x16x16f16 r44, r208, r164, r44
	mma_16x16x16f16 r76, r210, r162, r76
	mma_16x16x16f16 r44, r210, r166, r44
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r208, r18, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r160, r72
	mma_16x16x16f16 r40, r212, r164, r40
	mma_16x16x16f16 r72, r214, r162, r72
	mma_16x16x16f16 r40, r214, r166, r40
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r212, r19, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r216, r176, r100
	mma_16x16x16f16 r68, r216, r180, r68
	mma_16x16x16f16 r100, r218, r178, r100
	mma_16x16x16f16 r68, r218, r182, r68
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r216, r20, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r208, r176, r96
	mma_16x16x16f16 r64, r208, r180, r64
	mma_16x16x16f16 r96, r210, r178, r96
	mma_16x16x16f16 r64, r210, r182, r64
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r208, r21, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r212, r176, r92
	mma_16x16x16f16 r60, r212, r180, r60
	mma_16x16x16f16 r92, r214, r178, r92
	mma_16x16x16f16 r60, r214, r182, r60
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r212, r22, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r216, r176, r88
	mma_16x16x16f16 r56, r216, r180, r56
	mma_16x16x16f16 r88, r218, r178, r88
	mma_16x16x16f16 r56, r218, r182, r56
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r216, r23, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r176, r84
	mma_16x16x16f16 r52, r208, r180, r52
	mma_16x16x16f16 r84, r210, r178, r84
	mma_16x16x16f16 r52, r210, r182, r52
	.loc	2 294 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:294:43
	lds_b128 r208, r24, 0x0
	.loc	2 300 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:300:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r212, r176, r80
	mma_16x16x16f16 r48, r212, r180, r48
	mma_16x16x16f16 r80, r214, r178, r80
	mma_16x16x16f16 r48, r214, r182, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r76, r216, r176, r76
	mma_16x16x16f16 r44, r216, r180, r44
	mma_16x16x16f16 r76, r218, r178, r76
	mma_16x16x16f16 r44, r218, r182, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r72, r208, r176, r72
	mma_16x16x16f16 r40, r208, r180, r40
	mma_16x16x16f16 r72, r210, r178, r72
	mma_16x16x16f16 r40, r210, r182, r40
.Ltmp331:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp332:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r37, r188, s22
	addc_co_u32 r38, r189, r38
	add_co_u32 r208, 0x200080, r37
	addc_co_u32 r209, r38, 0
	sadd_co_u32 md, 0xffff9000, md
	rfl_b32 s7, r27
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x280080, r37
	addc_co_u32 r209, r38, 0
.Ltmp333:
	.loc	2 312 16                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:312:16
	mov_b32 r210, 0x3f00
.Ltmp334:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r28
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x300080, r37
	addc_co_u32 r209, r38, 0
.Ltmp335:
	.loc	2 312 16                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:312:16
	mov_b32 r211, 0
.Ltmp336:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r29
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x380080, r37
	addc_co_u32 r209, r38, 0
.Ltmp337:
	.loc	2 312 16                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:312:16
	cmp_lg_u64 s24, s22, r210
.Ltmp338:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
.Ltmp339:
	.loc	2 312 16                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:312:16
	scmp_eq_u64 0x3f00, s22
.Ltmp340:
	.loc	6 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldg_b128 r0, r208, 0x0 bsm
.Ltmp341:
	.loc	6 268 5 is_stmt 0               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s6
.Ltmp342:
	.loc	2 312 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:312:9
	bra_smsks LBB3_8
; %bb.7:                                ; %for.body769.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 315 251                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:251
	or_b32 r159, r156, s20
	.loc	2 315 71 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:71
	mad_i32 r160, r159, 2, s14
	.loc	2 315 251                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:251
	or_b32 r159, r158, s20
	.loc	2 315 71                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:71
	mad_i32 r164, r159, 2, s14
	.loc	2 315 251                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:251
	or_b32 r159, r4, s20
	.loc	2 315 71                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:71
	mad_i32 r176, r159, 2, s14
	.loc	2 315 251                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:251
	or_b32 r159, r5, s20
	.loc	2 315 71                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:71
	mad_i32 r180, r159, 2, s14
	.loc	2 315 49                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:315:49
	ldg_b128 r160, r160, 0x0
	ldg_b128 r164, r164, 0x0
	ldg_b128 r176, r176, 0x0
	ldg_b128 r180, r180, 0x0
LBB3_8:                                 ; %if.end803
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 320 43 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	add_i32 r159, 0x4000, r9
	add_i32 r208, 0x4000, r10
	snop 0
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r11
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r12
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r13
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r210, r200, r184
	mma_16x16x16f16 r132, r210, r204, r132
	mma_16x16x16f16 r184, r212, r202, r184
	mma_16x16x16f16 r132, r212, r206, r132
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r210, r208, 0x0
	add_i32 r208, 0x4000, r14
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r214, r200, r172
	mma_16x16x16f16 r128, r214, r204, r128
	mma_16x16x16f16 r172, r216, r202, r172
	mma_16x16x16f16 r128, r216, r206, r128
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r15
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r218, r200, r168
	mma_16x16x16f16 r124, r218, r204, r124
	mma_16x16x16f16 r168, r220, r202, r168
	mma_16x16x16f16 r124, r220, r206, r124
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r16
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r210, r200, r152
	mma_16x16x16f16 r120, r210, r204, r120
	mma_16x16x16f16 r152, r212, r202, r152
	mma_16x16x16f16 r120, r212, r206, r120
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r17
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r214, r200, r148
	mma_16x16x16f16 r116, r214, r204, r116
	mma_16x16x16f16 r148, r216, r202, r148
	mma_16x16x16f16 r116, r216, r206, r116
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r20
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r218, r200, r144
	mma_16x16x16f16 r112, r218, r204, r112
	mma_16x16x16f16 r144, r220, r202, r144
	mma_16x16x16f16 r112, r220, r206, r112
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r18
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r210, r200, r140
	mma_16x16x16f16 r108, r210, r204, r108
	mma_16x16x16f16 r140, r212, r202, r140
	mma_16x16x16f16 r108, r212, r206, r108
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r19
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r214, r200, r136
	mma_16x16x16f16 r104, r214, r204, r104
	mma_16x16x16f16 r136, r216, r202, r136
	mma_16x16x16f16 r104, r216, r206, r104
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r21
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r218, r192, r184
	mma_16x16x16f16 r132, r218, r196, r132
	mma_16x16x16f16 r184, r220, r194, r184
	mma_16x16x16f16 r132, r220, r198, r132
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r22
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r210, r192, r172
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r172, r212, r194, r172
	mma_16x16x16f16 r128, r212, r198, r128
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r23
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r214, r192, r168
	mma_16x16x16f16 r124, r214, r196, r124
	mma_16x16x16f16 r168, r216, r194, r168
	mma_16x16x16f16 r124, r216, r198, r124
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r24
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r218, r192, r152
	mma_16x16x16f16 r120, r218, r196, r120
	mma_16x16x16f16 r152, r220, r194, r152
	mma_16x16x16f16 r120, r220, r198, r120
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r218, r159, 0x0
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r210, r192, r148
	mma_16x16x16f16 r116, r210, r196, r116
	.loc	2 320 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:320:43
	lds_b128 r208, r208, 0x0
	.loc	2 326 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:326:58
	mma_16x16x16f16 r148, r212, r194, r148
	mma_16x16x16f16 r116, r212, r198, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r214, r192, r144
	mma_16x16x16f16 r112, r214, r196, r112
	mma_16x16x16f16 r144, r216, r194, r144
	mma_16x16x16f16 r112, r216, r198, r112
	arrive bsmcnt(1)
	mma_16x16x16f16 r140, r218, r192, r140
	mma_16x16x16f16 r108, r218, r196, r108
	mma_16x16x16f16 r140, r220, r194, r140
	mma_16x16x16f16 r108, r220, r198, r108
	arrive bsmcnt(0)
	mma_16x16x16f16 r136, r208, r192, r136
	mma_16x16x16f16 r104, r208, r196, r104
	mma_16x16x16f16 r136, r210, r194, r136
	mma_16x16x16f16 r104, r210, r198, r104
.Ltmp343:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp344:
	.loc	2 335 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:335:9
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond901.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	add_co_u32 r208, 0x180100, r37
	addc_co_u32 r209, r38, 0
	add_co_u32 r210, 0x100100, r37
	addc_co_u32 r211, r38, 0
	add_co_u32 r212, 0x80100, r37
	addc_co_u32 r213, r38, 0
.Ltmp345:
	.loc	6 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r214, 0x100, r37
	rfl_b32 s7, r30
	addc_co_u32 r215, r38, 0
	smov_b32 s6, md
	snop 1
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r214, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r212, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r210, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r208, 0x0 bsm
	smov_b32 md, s6
.Ltmp346:
LBB3_10:                                ; %if.end985
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 356 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:356:9
	sandn_b64 cmsk, xmsk, s24
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r200, r100
	mma_16x16x16f16 r68, r208, r204, r68
	mma_16x16x16f16 r100, r210, r202, r100
	mma_16x16x16f16 r68, r210, r206, r68
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r208, r12, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r200, r96
	mma_16x16x16f16 r64, r212, r204, r64
	mma_16x16x16f16 r96, r214, r202, r96
	mma_16x16x16f16 r64, r214, r206, r64
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r212, r13, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r200, r92
	mma_16x16x16f16 r60, r216, r204, r60
	mma_16x16x16f16 r92, r218, r202, r92
	mma_16x16x16f16 r60, r218, r206, r60
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r216, r14, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r200, r88
	mma_16x16x16f16 r56, r208, r204, r56
	mma_16x16x16f16 r88, r210, r202, r88
	mma_16x16x16f16 r56, r210, r206, r56
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r208, r15, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r200, r84
	mma_16x16x16f16 r52, r212, r204, r52
	mma_16x16x16f16 r84, r214, r202, r84
	mma_16x16x16f16 r52, r214, r206, r52
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r212, r16, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r200, r80
	mma_16x16x16f16 r48, r216, r204, r48
	mma_16x16x16f16 r80, r218, r202, r80
	mma_16x16x16f16 r48, r218, r206, r48
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r216, r17, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r200, r76
	mma_16x16x16f16 r44, r208, r204, r44
	mma_16x16x16f16 r76, r210, r202, r76
	mma_16x16x16f16 r44, r210, r206, r44
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r208, r18, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r200, r72
	mma_16x16x16f16 r40, r212, r204, r40
	mma_16x16x16f16 r72, r214, r202, r72
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r200, r19, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	mma_16x16x16f16 r40, r214, r206, r40
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r204, r20, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r100, r216, r192, r100
	mma_16x16x16f16 r68, r216, r196, r68
	mma_16x16x16f16 r100, r218, r194, r100
	mma_16x16x16f16 r68, r218, r198, r68
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r208, r192, r96
	mma_16x16x16f16 r64, r208, r196, r64
	mma_16x16x16f16 r96, r210, r194, r96
	mma_16x16x16f16 r64, r210, r198, r64
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r208, r21, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r200, r192, r92
	mma_16x16x16f16 r60, r200, r196, r60
	mma_16x16x16f16 r92, r202, r194, r92
	mma_16x16x16f16 r60, r202, r198, r60
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r200, r22, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r204, r192, r88
	mma_16x16x16f16 r56, r204, r196, r56
	mma_16x16x16f16 r88, r206, r194, r88
	mma_16x16x16f16 r56, r206, r198, r56
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r204, r23, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r192, r84
	mma_16x16x16f16 r52, r208, r196, r52
	mma_16x16x16f16 r84, r210, r194, r84
	mma_16x16x16f16 r52, r210, r198, r52
	.loc	2 342 43                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:342:43
	lds_b128 r208, r24, 0x0
	.loc	2 348 58                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:348:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r196, r48
	mma_16x16x16f16 r80, r202, r194, r80
	mma_16x16x16f16 r48, r202, r198, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r76, r204, r192, r76
	mma_16x16x16f16 r44, r204, r196, r44
	mma_16x16x16f16 r76, r206, r194, r76
	mma_16x16x16f16 r44, r206, r198, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r72, r208, r192, r72
	mma_16x16x16f16 r40, r208, r196, r40
	mma_16x16x16f16 r72, r210, r194, r72
	mma_16x16x16f16 r40, r210, r198, r40
	.loc	2 356 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:356:9
	bra_cmsks LBB3_1
; %bb.11:                               ; %if.then1081
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp347:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp348:
LBB3_12:                                ; %for.cond1086.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	sshl_b32 s3, 7, s16
	sshl_b64 s6, 7, s16
	and_b32 r6, 0x1e0, r2
	and_b32 r7, r0, 15
	or_b32 r4, r7, s3
	or_b32 r2, r6, r7
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
	.loc	2 362 92 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:362:92
	cmp_ge_i32 s8, r2, s2
	cmp_lt_i32 s14, r2, s2
	sashr_i32 s5, 31, s0
	mov_b32 r8, s0
	addc_co_u32 r7, r7, r10
	mov_b32 r9, s5
	sub_co_u32 r6, r6, r8
	add_u32 r5, r4, s1
	mov_b32 r4, 0
	subb_co_u32 r7, r7, r9
	.loc	2 362 9 is_stmt 0               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:362:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then1104
	.loc	2 0 9                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sub_u32 r4, r5, s0
	cmp_gt_i32 s20, 0x8e0, r4
	.loc	2 364 15 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:364:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r4, 0
	.loc	2 364 163 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:364:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1133
	.loc	2 0 163                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r4, s13
	addc_co_u32 r9, r4, r9
	.loc	2 365 19 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:365:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB3_15:                                ; %Flow558
	.loc	2 0 19 is_stmt 0                ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_16:                                ; %for.inc1157
	sor_b64 xmsk, xmsk, s6
	.loc	2 362 63 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:362:63
	or_b32 r2, r2, 16
	.loc	2 362 92 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:362:92
	cmp_ge_i32 s6, r2, s2
	cmp_lt_i32 s2, r2, s2
	.loc	2 0 0                           ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 362 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:362:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then1104.1
	.loc	2 364 117 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:364:117
	add_u32 r2, r5, 16
	.loc	2 364 15 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:364:15
	cmp_ge_i32 s20, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x8e0, r2
	mov_b32 r2, 0
	.loc	2 364 163                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:364:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1133.1
	.loc	2 0 163                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 365 19 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:365:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow557
	.loc	2 0 19 is_stmt 0                ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_20:                                ; %for.inc1157.1
	sor_b64 xmsk, xmsk, s18
	sshl_b32 s0, 18, s16
	sshl_b32 s1, 8, s4
	shl_b32 r0, 11, r0
	and_b32 r1, 0xf0000, r1
	sadd_co_i32 s0, s1, s0
	and_b32 r0, 0x7800, r0
	add_u32 r1, s0, r1
	add_u32 r0, r1, r0
	and_or_b32 r0, r3, 12, r0
	shl_b64 r8, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1178
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(0)
	mul_f32 r1, r184, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r185, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r186, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r6, r187, r4
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp350:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp353:
LBB3_22:                                ; %if.end1233
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 22 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mov_b32 r1, 0
	shl_b64 r6, 1, r0
	add_co_u32 r6, s10, r6
	mov_b32 r1, s11
	addc_co_u32 r7, r1, r7
	.loc	2 390 254 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1178.1
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(1)
	mul_f32 r1, r172, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r173, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r174, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r10, r175, r4
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp355:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp356:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp358:
LBB3_24:                                ; %if.end1233.1
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 16
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 0
	stg_b64 r22, 0x0, r8 devc
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1178.2
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(2)
	mul_f32 r1, r168, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r169, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r170, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r8, r171, r4
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp360:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp363:
LBB3_26:                                ; %if.end1233.2
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 32
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r8, r1, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1178.3
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(3)
	mul_f32 r1, r152, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r153, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r154, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r12, r155, r4
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp365:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp368:
LBB3_28:                                ; %if.end1233.3
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 48
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r26, r1, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r26, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1178.4
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(4)
	mul_f32 r1, r148, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r149, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r150, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r12, r151, r4
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp370:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp373:
LBB3_30:                                ; %if.end1233.4
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 64
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r14, r1, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r14, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1178.5
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(5)
	mul_f32 r1, r144, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r145, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r146, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r12, r147, r4
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp375:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp378:
LBB3_32:                                ; %if.end1233.5
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, 0x50, r0
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r12, 0, 0
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 0
	stg_b64 r28, 0x0, r10 devc
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1178.6
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(6)
	mul_f32 r1, r140, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r141, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r142, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r10, r143, r4
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp380:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp383:
LBB3_34:                                ; %if.end1233.6
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, 0x60, r0
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r10, r1, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r10, 0x0, r12 devc
	shl_b64 r12, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1178.7
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(7)
	mul_f32 r1, r136, r4
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r137, r4
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r138, r4
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r16, r139, r4
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp385:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp388:
LBB3_36:                                ; %if.end1233.7
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, 0x70, r0
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r24, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 0
	stg_b64 r24, 0x0, r12 devc
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1178.8
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(8)
	mul_f32 r1, r132, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r133, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r134, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r12, r135, r2
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp390:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp393:
LBB3_38:                                ; %if.end1233.8
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 22 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	add_co_u32 r12, 0x10000, r6
	addc_co_u32 r13, r7, 0
	.loc	2 390 190 is_stmt 0             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:190
	add_u32 r0, 0x8000, r0
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 0
	stg_b64 r12, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1178.9
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(9)
	mul_f32 r1, r128, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r129, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r130, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r18, r131, r2
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp395:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp398:
LBB3_40:                                ; %if.end1233.9
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 16
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1178.10
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(10)
	mul_f32 r1, r124, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r125, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r126, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r16, r127, r2
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp400:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp403:
LBB3_42:                                ; %if.end1233.10
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 32
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r16, r1, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1178.11
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(11)
	mul_f32 r1, r120, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r121, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r122, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r20, r123, r2
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp405:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp408:
LBB3_44:                                ; %if.end1233.11
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 48
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r32, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 0
	stg_b64 r32, 0x0, r18 devc
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1178.12
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(12)
	mul_f32 r1, r116, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r117, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r118, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r18, r119, r2
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp410:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp413:
LBB3_46:                                ; %if.end1233.12
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, r0, 64
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r18, r1, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r18, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1178.13
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(13)
	mul_f32 r1, r112, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r113, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r114, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r34, r115, r2
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp415:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r34
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp418:
LBB3_48:                                ; %if.end1233.13
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, 0x50, r0
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r34, r1, 2, s10
	shl_b64 r36, 0, 0
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 0
	stg_b64 r34, 0x0, r20 devc
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1178.14
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(14)
	mul_f32 r1, r108, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r109, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r110, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r20, r111, r2
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp420:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp423:
LBB3_50:                                ; %if.end1233.14
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r1, 0x60, r0
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r20, r1, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r20, 0x0, r36 devc
	shl_b64 r36, 0, 0
	.loc	2 374 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:374:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1178.15
	.loc	2 379 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:379:22
	arrive gvmcnt(15)
	mul_f32 r1, r104, r2
	.loc	2 380 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:380:22
	mul_f32 r3, r105, r2
	.loc	2 381 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:381:22
	mul_f32 r5, r106, r2
	.loc	2 382 22                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:382:22
	mul_f32 r38, r107, r2
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp425:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r38
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp428:
LBB3_52:                                ; %if.end1233.15
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 390 211 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:211
	or_b32 r0, 0x70, r0
	.loc	2 390 22 is_stmt 0              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:22
	mad_i32 r0, r0, 2, s10
	.loc	2 390 254                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:390:254
	snop 1
	stg_b64 r0, 0x0, r36 devc
	.loc	2 394 9 is_stmt 1               ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1344.1.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	shl_b64 r36, 0, 0
	snop 1
	stg_b64 r6, 0x100, r36 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow556
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	shl_b64 r36, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1283
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	arrive gvmcnt(16)
	mul_f32 r36, r102, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r37, r103, r4
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r100, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r101, r4
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp430:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_lo, r36
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_hi, r37
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp433:
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r6, 0x100, r38 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r96, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r97, r4
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r6, r98, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r7, r99, r4
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp435:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
LBB3_56:                                ; %if.end1344.1
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r22, 0x100, r36 devc
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1344.3.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r8, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_58:                                ; %Flow555
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1283.2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	arrive gvmcnt(17)
	mul_f32 r6, r94, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r7, r95, r4
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r92, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r93, r4
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	2 401 24 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	snop 0
	mul_f32 r7, r90, r4
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	stg_b64 r8, 0x100, r22 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r88, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r89, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r8, r91, r4
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp448:
LBB3_60:                                ; %if.end1344.3
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1344.5.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r14, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_62:                                ; %Flow554
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1283.4
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	arrive gvmcnt(18)
	mul_f32 r6, r86, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r7, r87, r4
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r84, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r85, r4
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp450:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp453:
	.loc	2 401 24 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	stg_b64 r14, 0x100, r8 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r80, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r81, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r8, r83, r4
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp455:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp458:
LBB3_64:                                ; %if.end1344.5
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1344.7.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_10
LBB3_66:                                ; %Flow553
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1283.6
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	arrive gvmcnt(19)
	mul_f32 r6, r78, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r7, r79, r4
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r76, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r77, r4
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp460:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp463:
	.loc	2 401 24 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	stg_b64 r10, 0x100, r8 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r72, r4
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r5, r73, r4
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r4, r75, r4
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp465:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp468:
LBB3_68:                                ; %if.end1344.7
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1344.9.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_70:                                ; %Flow551
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1283.8
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r4, r69, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r5, r70, r2
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r68, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r6, r71, r2
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp470:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp473:
	.loc	2 400 24 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	snop 0
	mul_f32 r5, r65, r2
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	stg_b64 r12, 0x100, r8 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r64, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r6, r66, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r7, r67, r2
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp475:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp478:
LBB3_72:                                ; %if.end1344.9
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1344.11.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow550
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1283.10
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r4, r61, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r5, r62, r2
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r60, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r6, r63, r2
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp483:
	.loc	2 400 24 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	stg_b64 r16, 0x100, r8 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r56, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r6, r58, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r7, r59, r2
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp485:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp487:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp488:
LBB3_76:                                ; %if.end1344.11
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r32, 0x100, r4 devc
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1344.13.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r18, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_18
LBB3_78:                                ; %Flow549
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1283.12
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r4, r53, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r5, r54, r2
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r52, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r6, r55, r2
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp490:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp492:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp493:
	.loc	2 400 24 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	stg_b64 r18, 0x100, r8 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r48, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r6, r50, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r7, r51, r2
.Ltmp494:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp495:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp497:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp498:
LBB3_80:                                ; %if.end1344.13
	.loc	5 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r34, 0x100, r4 devc
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmsks LBB3_83
; %bb.81:                               ; %Flow
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB3_84
LBB3_82:                                ; %if.end1344.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 412 1                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:412:1
	snop 0
	endk
LBB3_83:                                ; %if.end1344.15.critedge
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r20, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_20
	.loc	2 394 9                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:394:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1283.14
	.loc	2 400 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	mul_f32 r4, r45, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r5, r46, r2
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r44, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r6, r47, r2
.Ltmp499:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp500:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp502:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp503:
	.loc	2 400 24 is_stmt 1              ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:400:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 410 262                       ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	stg_b64 r20, 0x100, r8 devc
	.loc	2 399 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:399:24
	mul_f32 r3, r40, r2
	.loc	2 401 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:401:24
	mul_f32 r6, r42, r2
	.loc	2 402 24                        ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:402:24
	mul_f32 r2, r43, r2
.Ltmp504:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp505:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp508:
	.loc	2 410 262 is_stmt 1             ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:410:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 412 1                         ; /tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp:412:1
	snop 0
	endk
.Ltmp509:
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
; codeLenInByte = 17440
; NumMTRegsForWarps/PEU: 222
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
	.byte	1                               ; Abbrev [1] 0xb:0x3f7 DW_TAG_compile_unit
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
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x5f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	88                              ; DW_AT_call_line
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
	.byte	119                             ; DW_AT_call_line
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
	.byte	192                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xe6:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xf2:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	190                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xfe:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	189                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x10a:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	215                             ; DW_AT_call_line
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
	.byte	216                             ; DW_AT_call_line
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
	.byte	3                               ; Abbrev [3] 0x187:0x27a DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x198:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp317                        ; DW_AT_low_pc
	.long	.Ltmp318-.Ltmp317               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	255                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ac:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp317                        ; DW_AT_low_pc
	.long	.Ltmp318-.Ltmp317               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1c1:0x2a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	259                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1d6:0x14 DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1eb:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	282                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x200:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x215:0x2a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	285                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x22a:0x14 DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x23f:0x1a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x24c:0xc DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x259:0xd DW_TAG_inlined_subroutine
	.long	385                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	288                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x266:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp331                        ; DW_AT_low_pc
	.long	.Ltmp332-.Ltmp331               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	308                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x27b:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp331                        ; DW_AT_low_pc
	.long	.Ltmp332-.Ltmp331               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x290:0x1a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x29d:0xc DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2aa:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp343                        ; DW_AT_low_pc
	.long	.Ltmp344-.Ltmp343               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	334                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2bf:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp343                        ; DW_AT_low_pc
	.long	.Ltmp344-.Ltmp343               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2d4:0x2a DW_TAG_inlined_subroutine
	.long	379                             ; DW_AT_abstract_origin
	.quad	.Ltmp345                        ; DW_AT_low_pc
	.long	.Ltmp346-.Ltmp345               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	337                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2e9:0x14 DW_TAG_inlined_subroutine
	.long	373                             ; DW_AT_abstract_origin
	.quad	.Ltmp345                        ; DW_AT_low_pc
	.long	.Ltmp346-.Ltmp345               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2fe:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp347                        ; DW_AT_low_pc
	.long	.Ltmp348-.Ltmp347               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	357                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x313:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp347                        ; DW_AT_low_pc
	.long	.Ltmp348-.Ltmp347               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x328:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	383                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x335:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x342:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x34f:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x35e:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	384                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x36b:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x378:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x385:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x394:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	403                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3a1:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3ae:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3bb:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3ca:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	404                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3d7:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3e4:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3f1:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
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
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
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
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
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
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges24:
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
	.quad	0
	.quad	0
.Ldebug_ranges25:
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
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
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
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
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
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
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
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges31:
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
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v039_codegen/v039_exact_case1_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=94
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=115
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=125
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=139
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=145
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=161
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=179
.Linfo_string9:
	.asciz	"continuous_pipeline_memcpy_async<16UL>" ; string offset=197
.Linfo_string10:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=236
.Linfo_string11:
	.asciz	"moe_memcpy_sync_16"            ; string offset=263
.Linfo_string12:
	.asciz	"kernel_kernel"                 ; string offset=282
.Linfo_string13:
	.asciz	"kernel_kernel_1"               ; string offset=296
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
    .mtreg_count:    222
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
