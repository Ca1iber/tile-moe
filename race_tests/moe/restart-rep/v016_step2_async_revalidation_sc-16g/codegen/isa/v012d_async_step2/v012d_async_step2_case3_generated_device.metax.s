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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s6, s5
.Ltmp4:
	.loc	2 17 23 prologue_end            ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:17:23
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
	.loc	2 33 495                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:495
	add_u32 r8, 0x38000, r0
	.loc	2 33 374 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:374
	mad_i32 r10, r0, 2, s10
	mad_i32 r12, r8, 2, s10
	.loc	2 33 495                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:495
	add_u32 r9, 0x70000, r0
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:343
	ldg_b128 r38, r10, 0x0
	ldg_b128 r42, r12, 0x0
	.loc	2 33 495                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:495
	add_u32 r12, 0xa8000, r0
	.loc	2 33 374                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:374
	mad_i32 r14, r9, 2, s10
	mad_i32 r16, r12, 2, s10
	.loc	2 37 381 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:381
	mad_i32 r24, r8, 2, s12
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:343
	ldg_b128 r46, r14, 0x0
	ldg_b128 r50, r16, 0x0
	.loc	2 37 381                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:381
	mad_i32 r16, r0, 2, s12
	mad_i32 r26, r9, 2, s12
	mad_i32 r28, r12, 2, s12
	.loc	2 37 352 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:352
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
	.loc	2 33 95 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:95
	or_b32 r7, r5, r6
	.loc	2 33 265 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:265
	or3_b32 r7, r7, r3, r2
	.loc	2 33 59                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:59
	or_b32 r3, r3, r5
	.loc	2 33 180                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:180
	or3_b32 r2, r3, r2, r6
	.loc	2 17 23 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:17:23
	sashr_i32 s17, 31, s16
	.loc	2 33 265                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:265
	shl_b32 r3, 1, r2
	.loc	2 18 24                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:18:24
	sshl_b64 s0, 2, s16
	.loc	2 33 40                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:40
	add_u32 r2, 0, r3
	.loc	2 18 24                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:18:24
	sadd_co_u32 s16, s22, s0
	saddc_co_u32 s17, s23, s1
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:343
	add_i32 r6, 0x1000, r2
	add_i32 r11, 0x2000, r2
	add_i32 r14, 0x3000, r2
	shr_b32 r8, 1, r1
	and_b32 r2, r1, 15
	smov_b32 s7, 0x1e0
	.loc	2 19 38                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:19:38
	sshl_b32 s6, 7, s6
	and_or_b32 r0, r8, s7, r2
	.loc	2 18 24                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:18:24
	ldu_b32 s7, s16, 0x0
	.loc	2 19 47                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:19:47
	sadd_co_u32 s16, s18, s0
	saddc_co_u32 s17, s19, s1
	shr_b32 r9, 6, r1
	.loc	2 19 79 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:19:79
	sadd_co_u32 s18, s20, s0
	shr_b32 r15, 5, r1
	saddc_co_u32 s19, s21, s1
	mul_u24 r9, 0x38000, r9
	and_b32 r24, r8, 24
	add_shl_u32 r8, r15, r8, 4
	shr_b32 r15, 4, r1
	.loc	2 19 47                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:19:47
	ldu_b32 s16, s16, 0x0
	.loc	2 37 40 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:40
	sadd_co_i32 s1, 0x4000, 0
	.loc	2 33 40                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:40
	shl_b32 r7, 1, r7
	add_u32 r5, 0x1000, r3
	add_u32 r10, 0x2000, r3
	add_u32 r13, 0x3000, r3
	mad_u24 r23, r2, s5, r9
	shl_b32 r2, 6, r1
	and_b32 r8, r8, 16
	add_shl_u32 r15, r15, r1, 3
	.loc	2 19 79                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:19:79
	ldu_b32 s0, s18, 0x0
	.loc	2 37 40                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:40
	add_u32 r3, s1, r3
	and_b32 r9, 0x3c0, r2
	.loc	2 33 40                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:40
	add_u32 r19, 0, r7
	and_or_b32 r33, r15, 8, r8
	add_u32 r20, 0, r5
	.loc	2 37 40                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:40
	add_u32 r25, s1, r7
	add_u32 r26, s1, r5
	.loc	2 37 352 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:352
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
	.loc	2 37 40                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:40
	add_u32 r27, s1, r10
	add_u32 r28, s1, r13
	.loc	2 20 54 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:20:54
	arrive slcnt(0)
	ssub_co_i32 s1, s7, s6
	.loc	2 19 45                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:19:45
	sadd_co_i32 s6, s16, s6
	.loc	2 19 77 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:19:77
	ssub_co_i32 s16, s6, s0
	.loc	2 33 40 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:40
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
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:39:3
	sadd_co_i32 s2, s3, s2
	shr_b32 r2, 2, r1
	shl_add_u32 r15, 1, r15, 0
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:33:343
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
	.loc	2 37 352                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:37:352
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
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:39:3
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
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:0
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
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r178, r18, 0x0
	lds_b128 r182, r17, 0x0
	lds_b128 r186, r16, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r178, r170, r154
	mma_16x16x16f16 r90, r178, r174, r90
	mma_16x16x16f16 r154, r180, r172, r154
	mma_16x16x16f16 r90, r180, r176, r90
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r178, r15, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r182, r170, r146
	mma_16x16x16f16 r82, r182, r174, r82
	mma_16x16x16f16 r146, r184, r172, r146
	mma_16x16x16f16 r82, r184, r176, r82
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r182, r14, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r74, r186, r174, r74
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r74, r188, r176, r74
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r186, r13, 0x0
	lds_b128 r190, r12, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(3)
	mma_16x16x16f16 r130, r178, r170, r130
	mma_16x16x16f16 r66, r178, r174, r66
	mma_16x16x16f16 r130, r180, r172, r130
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	add_i32 r178, 0x4000, r18
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r66, r180, r176, r66
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r182, r170, r122
	mma_16x16x16f16 r58, r182, r174, r58
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r180, r11, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r122, r184, r172, r122
	mma_16x16x16f16 r58, r184, r176, r58
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r186, r170, r114
	mma_16x16x16f16 r50, r186, r174, r50
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r17
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r114, r188, r172, r114
	mma_16x16x16f16 r50, r188, r176, r50
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r190, r170, r106
	mma_16x16x16f16 r42, r190, r174, r42
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r16
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r106, r192, r172, r106
	mma_16x16x16f16 r42, r192, r176, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r180, r170, r98
	mma_16x16x16f16 r34, r180, r174, r34
	mma_16x16x16f16 r98, r182, r172, r98
	mma_16x16x16f16 r34, r182, r176, r34
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r15
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r184, r170, r158
	mma_16x16x16f16 r94, r184, r174, r94
	mma_16x16x16f16 r158, r186, r172, r158
	mma_16x16x16f16 r94, r186, r176, r94
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r14
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r188, r170, r150
	mma_16x16x16f16 r86, r188, r174, r86
	mma_16x16x16f16 r150, r190, r172, r150
	mma_16x16x16f16 r86, r190, r176, r86
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r13
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r180, r170, r142
	mma_16x16x16f16 r78, r180, r174, r78
	mma_16x16x16f16 r142, r182, r172, r142
	mma_16x16x16f16 r78, r182, r176, r78
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r12
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r184, r170, r134
	mma_16x16x16f16 r70, r184, r174, r70
	mma_16x16x16f16 r134, r186, r172, r134
	mma_16x16x16f16 r70, r186, r176, r70
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r11
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r170, r126
	mma_16x16x16f16 r62, r188, r174, r62
	mma_16x16x16f16 r126, r190, r172, r126
	mma_16x16x16f16 r62, r190, r176, r62
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r188, r178, 0x0
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r180, r170, r118
	mma_16x16x16f16 r54, r180, r174, r54
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r178, r10, 0x0
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	mma_16x16x16f16 r118, r182, r172, r118
	mma_16x16x16f16 r54, r182, r176, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r184, r170, r110
	mma_16x16x16f16 r46, r184, r174, r46
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r182, r9, 0x0
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	mma_16x16x16f16 r110, r186, r172, r110
	mma_16x16x16f16 r46, r186, r176, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r188, r170, r102
	mma_16x16x16f16 r38, r188, r174, r38
	mma_16x16x16f16 r102, r190, r172, r102
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r170, r8, 0x0
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	mma_16x16x16f16 r38, r190, r176, r38
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r174, r7, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(3)
	mma_16x16x16f16 r154, r178, r162, r154
	mma_16x16x16f16 r90, r178, r166, r90
	mma_16x16x16f16 r154, r180, r164, r154
	mma_16x16x16f16 r90, r180, r168, r90
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r178, r6, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
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
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r170, r5, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r174, r162, r130
	mma_16x16x16f16 r66, r174, r166, r66
	mma_16x16x16f16 r130, r176, r164, r130
	mma_16x16x16f16 r66, r176, r168, r66
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r174, r4, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r178, r162, r122
	mma_16x16x16f16 r58, r178, r166, r58
	mma_16x16x16f16 r122, r180, r164, r122
	mma_16x16x16f16 r58, r180, r168, r58
	.loc	2 54 50                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:54:50
	lds_b128 r178, r3, 0x0
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r170, r162, r114
	mma_16x16x16f16 r50, r170, r166, r50
	mma_16x16x16f16 r114, r172, r164, r114
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	add_i32 r170, 0x4000, r10
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r50, r172, r168, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r174, r162, r106
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r182, r170, 0x0
	add_i32 r170, 0x4000, r9
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r42, r174, r166, r42
	mma_16x16x16f16 r106, r176, r164, r106
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r8
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r42, r176, r168, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r178, r162, r98
	mma_16x16x16f16 r34, r178, r166, r34
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r7
	.loc	2 60 64                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:60:64
	mma_16x16x16f16 r98, r180, r164, r98
	mma_16x16x16f16 r34, r180, r168, r34
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r182, r162, r158
	mma_16x16x16f16 r94, r182, r166, r94
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r6
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	mma_16x16x16f16 r158, r184, r164, r158
	mma_16x16x16f16 r94, r184, r168, r94
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r172, r162, r150
	mma_16x16x16f16 r86, r172, r166, r86
	mma_16x16x16f16 r150, r174, r164, r150
	mma_16x16x16f16 r86, r174, r168, r86
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r5
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r176, r162, r142
	mma_16x16x16f16 r78, r176, r166, r78
	mma_16x16x16f16 r142, r178, r164, r142
	mma_16x16x16f16 r78, r178, r168, r78
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r4
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r180, r162, r134
	mma_16x16x16f16 r70, r180, r166, r70
	mma_16x16x16f16 r134, r182, r164, r134
	mma_16x16x16f16 r70, r182, r168, r70
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r3
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r172, r162, r126
	mma_16x16x16f16 r62, r172, r166, r62
	.loc	2 68 52                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:68:52
	lds_b128 r170, r170, 0x0
	.loc	2 74 62                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:74:62
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
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 85 376                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:85:376
	mad_i32 r164, r31, 2, s18
	add_u32 r162, 0x38000, r31
	mad_i32 r166, r162, 2, s18
	.loc	2 85 345 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:85:345
	ldg_b128 r168, r164, 0x0
	.loc	2 85 376                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:85:376
	add_u32 r164, 0xa8000, r31
	add_u32 r163, 0x70000, r31
	mad_i32 r176, r164, 2, s18
	.loc	2 85 345                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:85:345
	ldg_b128 r172, r166, 0x0
	.loc	2 85 376                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:85:376
	mad_i32 r166, r163, 2, s18
	.loc	2 89 383 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:89:383
	mad_i32 r164, r164, 2, s12
	.loc	2 39 21                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:39:21
	sadd_co_u32 s2, 0x80, s2
	.loc	2 85 345                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:85:345
	ldg_b128 r178, r166, 0x0
	ldg_b128 r182, r176, 0x0
	.loc	2 89 383                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:89:383
	mad_i32 r166, r31, 2, s12
	mad_i32 r176, r162, 2, s12
	mad_i32 r162, r163, 2, s12
	.loc	2 89 354 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:89:354
	ldg_b128 r186, r166, 0x0
	ldg_b128 r190, r176, 0x0
	ldg_b128 r194, r162, 0x0
	ldg_b128 r162, r164, 0x0
	.loc	2 39 21 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:39:21
	saddc_co_u32 s3, s3, 0
	scmp_eq_u64 0x3780, s2
	add_u32 r31, r31, 64
	.loc	2 85 345                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:85:345
	arrive gvmcnt(7)
	sts_b128 r19, 0x0, r168
	arrive gvmcnt(6)
	sts_b128 r20, 0x0, r172
	arrive gvmcnt(5)
	sts_b128 r21, 0x0, r178
	arrive gvmcnt(4)
	sts_b128 r22, 0x0, r182
	.loc	2 89 354                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:89:354
	arrive gvmcnt(3)
	sts_b128 r25, 0x0, r186
	arrive gvmcnt(2)
	sts_b128 r26, 0x0, r190
	arrive gvmcnt(1)
	sts_b128 r27, 0x0, r194
	arrive gvmcnt(0)
	sts_b128 r28, 0x0, r162
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:39:3
	bra_smsks LBB2_10
LBB2_2:                                 ; %for.cond164.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:3
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 44 117 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:44:117
	and_xmsk s20, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 45 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:45:17
	snop 1
	ldg_b128 r170, r164, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 44 117 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:44:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:117
	add_co_u32 r162, r32, s2
	mov_b32 r163, s3
	addc_co_u32 r163, r33, r163
	.loc	2 45 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:45:17
	add_co_u32 r162, 0x38000, r162
	addc_co_u32 r163, r163, 0
	snop 1
	ldg_b128 r174, r162, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 44 117 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:44:117
	and_xmsk s20, s10
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 45 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:45:17
	snop 1
	ldg_b128 r162, r164, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r166, 0, 0
	shl_b64 r168, 0, 0
	.loc	2 44 117 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:44:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:117
	add_co_u32 r166, r32, s2
	mov_b32 r167, s3
	addc_co_u32 r167, r33, r167
	.loc	2 45 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:45:17
	add_co_u32 r166, 0x38040, r166
	addc_co_u32 r167, r167, 0
	snop 1
	ldg_b128 r166, r166, 0x0
	bra LBB2_1
LBB2_10:                                ; %for.cond556.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	or_b32 r19, r23, r24
	add_co_u32 r32, r30, r19
	addc_co_u32 r33, r29, 0
	shl_b64 r28, 0, 0
	shl_b64 r30, 0, 0
	.loc	2 96 115 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:96:115
	and_xmsk s2, s10
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %if.then583
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r20, 1, r32
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x3780, r19
	addc_co_u32 r23, r20, 0
	.loc	2 97 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:97:17
	snop 1
	ldg_b128 r28, r22, 0x0
LBB2_12:                                ; %if.end635
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 96 115 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:96:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then583.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r20, 1, r32
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x3b780, r19
	addc_co_u32 r23, r20, 0
	.loc	2 97 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:97:17
	snop 1
	ldg_b128 r162, r22, 0x0
LBB2_14:                                ; %if.end635.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r20, 0, 0
	shl_b64 r22, 0, 0
	.loc	2 96 115 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:96:115
	and_xmsk s2, s10
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then583.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r20, 1, r32
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x37c0, r19
	addc_co_u32 r23, r20, 0
	.loc	2 97 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:97:17
	snop 1
	ldg_b128 r20, r22, 0x0
LBB2_16:                                ; %if.end635.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	sadd_co_i32 s0, s1, s0
	shl_b64 r24, 0, 0
	shl_b64 r26, 0, 0
	.loc	2 96 115 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:96:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then583.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r24, 1, r32
	add_co_u32 r19, s8, r24
	mov_b32 r24, s9
	addc_co_u32 r24, r24, r25
	add_co_u32 r26, 0x3b7c0, r19
	addc_co_u32 r27, r24, 0
	.loc	2 97 17 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:97:17
	snop 1
	ldg_b128 r24, r26, 0x0
LBB2_18:                                ; %if.end635.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r166, r18, 0x0
	lds_b128 r170, r17, 0x0
	lds_b128 r174, r16, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r18, 0x4000, r18
	add_i32 r17, 0x4000, r17
	add_i32 r16, 0x4000, r16
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r166, r28, r154
.Ltmp11:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp12:
	.loc	2 176 95                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:95
	cmp_gt_i32 s2, s0, r0
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	mma_16x16x16f16 r90, r166, r162, r90
	mma_16x16x16f16 r154, r168, r30, r154
	mma_16x16x16f16 r90, r168, r164, r90
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r166, r15, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r15, 0x4000, r15
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	sand_b64 s2, s2, s10
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r170, r28, r146
	mma_16x16x16f16 r82, r170, r162, r82
	mma_16x16x16f16 r146, r172, r30, r146
	mma_16x16x16f16 r82, r172, r164, r82
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r170, r14, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r14, 0x4000, r14
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r174, r28, r138
	mma_16x16x16f16 r74, r174, r162, r74
	mma_16x16x16f16 r138, r176, r30, r138
	mma_16x16x16f16 r74, r176, r164, r74
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r174, r13, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r13, 0x4000, r13
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r166, r28, r130
	mma_16x16x16f16 r66, r166, r162, r66
	mma_16x16x16f16 r130, r168, r30, r130
	mma_16x16x16f16 r66, r168, r164, r66
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r166, r12, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r12, 0x4000, r12
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r170, r28, r122
	mma_16x16x16f16 r58, r170, r162, r58
	mma_16x16x16f16 r122, r172, r30, r122
	mma_16x16x16f16 r58, r172, r164, r58
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r170, r11, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r11, 0x4000, r11
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r174, r28, r114
	mma_16x16x16f16 r50, r174, r162, r50
	mma_16x16x16f16 r114, r176, r30, r114
	mma_16x16x16f16 r50, r176, r164, r50
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r174, r18, 0x0
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r166, r28, r106
	mma_16x16x16f16 r42, r166, r162, r42
	mma_16x16x16f16 r106, r168, r30, r106
	mma_16x16x16f16 r42, r168, r164, r42
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r166, r17, 0x0
	lds_b128 r16, r16, 0x0
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(3)
	mma_16x16x16f16 r98, r170, r28, r98
	mma_16x16x16f16 r34, r170, r162, r34
	mma_16x16x16f16 r98, r172, r30, r98
	mma_16x16x16f16 r34, r172, r164, r34
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r170, r15, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
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
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r166, r14, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r16, r28, r142
	mma_16x16x16f16 r78, r16, r162, r78
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r14, r13, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	mma_16x16x16f16 r142, r18, r30, r142
	mma_16x16x16f16 r78, r18, r164, r78
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r170, r28, r134
	mma_16x16x16f16 r70, r170, r162, r70
	mma_16x16x16f16 r134, r172, r30, r134
	mma_16x16x16f16 r70, r172, r164, r70
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r170, r12, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r166, r28, r126
	mma_16x16x16f16 r62, r166, r162, r62
	mma_16x16x16f16 r126, r168, r30, r126
	mma_16x16x16f16 r62, r168, r164, r62
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r166, r11, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r14, r28, r118
	mma_16x16x16f16 r54, r14, r162, r54
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r12, r10, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r10, 0x4000, r10
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	mma_16x16x16f16 r118, r16, r30, r118
	mma_16x16x16f16 r54, r16, r164, r54
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r16, r9, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r9, 0x4000, r9
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(3)
	mma_16x16x16f16 r110, r170, r28, r110
	mma_16x16x16f16 r46, r170, r162, r46
	mma_16x16x16f16 r110, r172, r30, r110
	mma_16x16x16f16 r46, r172, r164, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r166, r28, r102
	mma_16x16x16f16 r38, r166, r162, r38
	mma_16x16x16f16 r102, r168, r30, r102
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r28, r8, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r8, 0x4000, r8
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	mma_16x16x16f16 r38, r168, r164, r38
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r12, r20, r154
	mma_16x16x16f16 r90, r12, r24, r90
	mma_16x16x16f16 r154, r14, r22, r154
	mma_16x16x16f16 r90, r14, r26, r90
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r12, r7, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r7, 0x4000, r7
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r16, r20, r146
	mma_16x16x16f16 r82, r16, r24, r82
	mma_16x16x16f16 r146, r18, r22, r146
	mma_16x16x16f16 r82, r18, r26, r82
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r16, r6, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r6, 0x4000, r6
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r28, r20, r138
	mma_16x16x16f16 r74, r28, r24, r74
	mma_16x16x16f16 r138, r30, r22, r138
	mma_16x16x16f16 r74, r30, r26, r74
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r28, r5, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r5, 0x4000, r5
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r12, r20, r130
	mma_16x16x16f16 r66, r12, r24, r66
	mma_16x16x16f16 r130, r14, r22, r130
	mma_16x16x16f16 r66, r14, r26, r66
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r12, r4, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r4, 0x4000, r4
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r16, r20, r122
	mma_16x16x16f16 r58, r16, r24, r58
	mma_16x16x16f16 r122, r18, r22, r122
	mma_16x16x16f16 r58, r18, r26, r58
	.loc	2 106 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:106:50
	lds_b128 r16, r3, 0x0
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	add_i32 r3, 0x4000, r3
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r28, r20, r114
	mma_16x16x16f16 r50, r28, r24, r50
	mma_16x16x16f16 r114, r30, r22, r114
	mma_16x16x16f16 r50, r30, r26, r50
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r28, r10, 0x0
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r12, r20, r106
	mma_16x16x16f16 r42, r12, r24, r42
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r10, r9, 0x0
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	mma_16x16x16f16 r106, r14, r22, r106
	mma_16x16x16f16 r42, r14, r26, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r16, r20, r98
	mma_16x16x16f16 r34, r16, r24, r34
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r14, r8, 0x0
	.loc	2 112 65                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:112:65
	mma_16x16x16f16 r98, r18, r22, r98
	mma_16x16x16f16 r34, r18, r26, r34
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r28, r20, r158
	mma_16x16x16f16 r94, r28, r24, r94
	mma_16x16x16f16 r158, r30, r22, r158
	mma_16x16x16f16 r94, r30, r26, r94
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r28, r7, 0x0
	lds_b128 r6, r6, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(3)
	mma_16x16x16f16 r150, r10, r20, r150
	mma_16x16x16f16 r86, r10, r24, r86
	mma_16x16x16f16 r150, r12, r22, r150
	mma_16x16x16f16 r86, r12, r26, r86
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r10, r5, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(3)
	mma_16x16x16f16 r142, r14, r20, r142
	mma_16x16x16f16 r78, r14, r24, r78
	mma_16x16x16f16 r142, r16, r22, r142
	mma_16x16x16f16 r78, r16, r26, r78
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r14, r4, 0x0
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	arrive bsmcnt(3)
	mma_16x16x16f16 r134, r28, r20, r134
	mma_16x16x16f16 r70, r28, r24, r70
	mma_16x16x16f16 r134, r30, r22, r134
	mma_16x16x16f16 r70, r30, r26, r70
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r6, r20, r126
	mma_16x16x16f16 r62, r6, r24, r62
	.loc	2 120 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:120:50
	lds_b128 r4, r3, 0x0
	shl_b32 r3, 10, r1
	shl_b32 r1, 11, r1
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
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
	.loc	2 135 3                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:135:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	.loc	2 126 63                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:126:63
	mma_16x16x16f16 r38, r6, r26, r38
	.loc	2 135 3                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:135:3
	addc_co_u32 r2, r2, 0
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_36
; %bb.19:                               ; %if.end1030
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_37
LBB2_20:                                ; %if.end1030.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_38
LBB2_21:                                ; %if.end1030.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_39
LBB2_22:                                ; %if.end1030.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_40
LBB2_23:                                ; %if.end1030.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_41
LBB2_24:                                ; %if.end1030.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_42
LBB2_25:                                ; %if.end1030.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_27
LBB2_26:                                ; %if.then962.7
	.loc	2 158 27 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r101
.Ltmp13:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s2
	fmka_f32 r9, r101, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s2
	exp_f32 r9, r9
.Ltmp14:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r100
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r9
.Ltmp16:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r101, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r105
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s2
	fmka_f32 r10, r100, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s2
	exp_f32 r10, r10
.Ltmp18:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r99
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r10
.Ltmp20:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r100, r9
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s2
	fmka_f32 r11, r99, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s2
	exp_f32 r11, r11
.Ltmp22:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r98
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r11
.Ltmp24:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r99, r10
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s2
	fmka_f32 r8, r98, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s2
	exp_f32 r8, r8
.Ltmp26:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r98, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r102
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r103
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r104
.Ltmp27:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp28:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp29:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp30:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp31:
	.loc	2 189 314 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xe0, r6 devc
LBB2_27:                                ; %if.end1030.7
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 66 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:66
	or_b32 r0, r0, 16
	.loc	2 176 95 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	snop 3
	sand_b64 s0, s0, s6
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_43
; %bb.28:                               ; %if.end1030.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_44
LBB2_29:                                ; %if.end1030.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_45
LBB2_30:                                ; %if.end1030.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_46
LBB2_31:                                ; %if.end1030.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_47
LBB2_32:                                ; %if.end1030.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_48
LBB2_33:                                ; %if.end1030.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_49
LBB2_34:                                ; %if.end1030.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_50
LBB2_35:                                ; %if.end1030.15
	.loc	2 194 1 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:194:1
	snop 1
	endk
LBB2_36:                                ; %if.then962
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r157
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r157, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp33:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r156
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp35:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r157, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r161
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r156, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp37:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r155
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp39:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r156, r9
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r155, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp41:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r154
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp43:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r155, r10
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r154, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp45:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r154, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r158
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r159
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r160
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp47:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp48:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp49:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp50:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_20
LBB2_37:                                ; %if.then962.1
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r149
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r149, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp52:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r148
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp54:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r149, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r153
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r148, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp56:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r147
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp58:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r148, r9
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r147, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp60:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r146
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp62:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r147, r10
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r146, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp64:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r146, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r150
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r151
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r152
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp66:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp68:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp69:
	.loc	2 189 314 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x20, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_21
LBB2_38:                                ; %if.then962.2
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r141
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r141, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp71:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r140
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp73:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r141, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r145
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r140, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp75:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r139
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp77:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r140, r9
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r139, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp79:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r138
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp81:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r139, r10
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r138, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp83:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r138, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r142
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r143
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r144
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp85:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp87:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp88:
	.loc	2 189 314 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x40, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_22
LBB2_39:                                ; %if.then962.3
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r133
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r133, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp90:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r132
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp92:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r133, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r137
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r132, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp94:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r131
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp96:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r132, r9
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r131, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp98:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r130
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp100:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r131, r10
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r130, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp102:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r130, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r134
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r135
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r136
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp104:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp106:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp107:
	.loc	2 189 314 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x60, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_23
LBB2_40:                                ; %if.then962.4
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r125
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r125, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp109:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r124
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp111:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r125, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r129
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r124, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp113:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r123
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp115:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r124, r9
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r123, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp117:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r122
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp119:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r123, r10
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r122, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp121:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r122, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r126
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r127
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r128
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp123:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp125:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp126:
	.loc	2 189 314 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x80, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_24
LBB2_41:                                ; %if.then962.5
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r117
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r117, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp128:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r116
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp130:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r117, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r121
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r116, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp132:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r115
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp134:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r116, r9
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r115, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp136:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r114
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp138:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r115, r10
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r114, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp140:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r114, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r118
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r119
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r120
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp142:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp144:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp145:
	.loc	2 189 314 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xa0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_25
LBB2_42:                                ; %if.then962.6
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r3, 0xbfb8aa3b, r109
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r109, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp147:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r9, 0xbfb8aa3b, r108
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp149:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r7, r109, r7
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r7, r7, r113
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r108, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp151:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r10, 0xbfb8aa3b, r107
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp153:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r9, r108, r9
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r107, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp155:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r11, 0xbfb8aa3b, r106
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp157:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r10, r107, r10
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r106, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp159:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r3, r106, r3
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r3, r3, r110
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r6, r10, r111
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r8, r9, r112
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp161:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp163:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp164:
	.loc	2 189 314 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	add_co_u32 r10, r1, r10
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r2, r11
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xc0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_26
	bra LBB2_27
LBB2_43:                                ; %if.then962.8
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r93
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r93, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp166:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r92
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp168:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r93, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r97
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r92, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp170:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r91
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp172:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r92, r8
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r91, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp174:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r90
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp176:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r91, r9
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r90, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp178:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r90, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r94
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r95
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r96
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp182:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp183:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10000, r6
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r7, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_29
LBB2_44:                                ; %if.then962.9
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r85
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r85, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp185:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r84
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp187:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r85, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r89
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r84, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp189:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r83
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp191:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r84, r8
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r83, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp193:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r82
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp195:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r83, r9
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r82, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp197:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r82, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r86
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r87
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r88
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp199:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp201:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp202:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10020, r6
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r7, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_30
LBB2_45:                                ; %if.then962.10
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r77
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r77, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp204:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r76
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp206:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r77, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r81
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r76, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp208:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r75
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp210:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r76, r8
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r75, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp212:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r74
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp214:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r75, r9
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r74, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp216:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r74, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r78
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r79
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r80
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp218:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp220:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp221:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10040, r6
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r7, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_31
LBB2_46:                                ; %if.then962.11
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r69
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r69, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp223:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r68
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp225:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r69, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r73
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r68, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp227:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r67
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp229:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r68, r8
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r67, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp231:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r66
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp233:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r67, r9
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r66, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp235:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r66, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r70
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r71
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r72
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp237:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp239:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp240:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10060, r6
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r7, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_32
LBB2_47:                                ; %if.then962.12
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r61
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r61, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp242:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r60
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp244:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r61, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r65
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r60, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp246:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r59
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp248:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r60, r8
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r59, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp250:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r58
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp252:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r59, r9
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r58, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp254:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r58, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r62
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r63
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r64
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp256:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp258:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp259:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10080, r6
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r7, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_33
LBB2_48:                                ; %if.then962.13
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r53
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r53, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp261:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r52
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp263:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r53, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r57
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r52, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp265:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r51
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp267:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r52, r8
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r51, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp269:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r50
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp271:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r51, r9
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r50, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp273:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r50, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r54
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r55
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r56
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp275:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp277:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp278:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100a0, r6
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r7, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_34
LBB2_49:                                ; %if.then962.14
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r45
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r45, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp280:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r44
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp282:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r45, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r49
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r44, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp284:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r43
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp286:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r44, r8
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r43, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp288:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r42
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp290:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r43, r9
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r42, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp292:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r42, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r46
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r47
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r48
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp294:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp296:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp297:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100c0, r6
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r11, r7, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 176 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:176:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_35
LBB2_50:                                ; %if.then962.15
	.loc	2 158 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:158:27
	mul_f32 r0, 0xbfb8aa3b, r37
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r7, 0, s0
	fmka_f32 r8, r37, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s0
	exp_f32 r8, r8
.Ltmp299:
	.loc	2 166 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:166:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
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
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:157:27
	mul_f32 r8, 0xbfb8aa3b, r36
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp301:
	.loc	2 170 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:170:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s2
	.loc	2 174 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:174:20
	mul_f32 r6, r37, r6
	.loc	2 186 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:186:28
	mul_f32 r6, r6, r41
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s0
	fmka_f32 r9, r36, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
.Ltmp303:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r35
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r9
.Ltmp305:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:173:20
	mul_f32 r8, r36, r8
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s0
	fmka_f32 r10, r35, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
.Ltmp307:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r34
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r10
.Ltmp309:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:172:20
	mul_f32 r9, r35, r9
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s0
	fmka_f32 r7, r34, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s0
	exp_f32 r7, r7
.Ltmp311:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:167:24
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
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:171:20
	mul_f32 r0, r34, r0
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:183:28
	mul_f32 r0, r0, r38
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:184:28
	mul_f32 r3, r9, r39
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:185:28
	mul_f32 r7, r8, r40
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp313:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp314:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp315:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp316:
	.loc	2 189 31 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	snop 0
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
	addc_co_u32 r2, r2, r5
	add_co_u32 r4, 0x100e0, r1
	.loc	2 189 445 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	shl_b32 r1, 16, r6
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	.loc	2 189 31                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:31
	addc_co_u32 r5, r2, 0
	.loc	2 189 445                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:189:445
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r4, 0x0, r2 devc
	.loc	2 194 1 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:194:1
	snop 2
	endk
.Ltmp317:
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
.Lfunc_begin3:
	.loc	2 196 0                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:196:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x0
	smov_b32 s2, s5
.Ltmp318:
	.loc	2 207 23 prologue_end           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:207:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s16, s0, 0x20
	and_b32 r2, 0x3ff, r0
	shl_b32 r0, 3, r2
	arrive slcnt(0)
	sadd_co_u32 s6, s8, s6
	saddc_co_u32 s7, s9, s7
	ldu_b32 s6, s6, 0x0
	and_b32 r3, r0, 32
	and_b32 r4, r0, 16
	shl_b32 r6, 8, r2
	and_b32 r1, 0x1fc0, r0
	xor_b32 r0, r0, r2
	add_u32 r3, r3, r2
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 208 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:208:24
	sshl_b64 s8, 2, s6
	sadd_co_u32 s14, s14, s8
	saddc_co_u32 s15, s15, s9
	.loc	2 209 38                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:209:38
	sshl_b32 s3, 7, s5
	.loc	2 209 47 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:209:47
	sadd_co_u32 s0, s10, s8
	saddc_co_u32 s1, s11, s9
	.loc	2 209 79                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:209:79
	sadd_co_u32 s8, s12, s8
	saddc_co_u32 s9, s13, s9
	.loc	2 209 47                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:209:47
	ldu_b32 s1, s0, 0x0
	.loc	2 209 79                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:209:79
	ldu_b32 s0, s8, 0x0
	mul_u24 r5, r2, 9
	sshl_b32 s2, 19, s4
	and_b32 r31, 0x3f800, r6
	and_b32 r32, r0, 56
	add_u32 r4, r4, r2
	.loc	2 209 45                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:209:45
	arrive slcnt(0)
	sadd_co_i32 s1, s1, s3
	.loc	2 209 77                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:209:77
	ssub_co_i32 s10, s1, s0
	smul_i32 s1, 0xe00000, s6
	and_b32 r3, r3, 32
	and_b32 r5, r5, 8
	or3_b32 r0, r31, s2, r32
	add_u32 r6, r0, s1
	and_b32 r4, r4, 16
	.loc	2 222 153 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:153
	or_b32 r0, r3, r5
	.loc	2 222 323 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:323
	or3_b32 r25, r0, r1, r4
	.loc	2 222 427                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:427
	mad_i32 r8, r6, 2, s18
	.loc	2 222 117                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:117
	or_b32 r1, r1, r3
	.loc	2 222 238                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:238
	or3_b32 r1, r1, r4, r5
	.loc	2 223 436 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:223:436
	add_co_u32 r6, 0x80000, r8
	.loc	2 222 73                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:73
	shl_add_u32 r0, 1, r25, 0
	.loc	2 223 436                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:223:436
	addc_co_u32 r7, r9, 0
	.loc	2 222 323                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:323
	add_u32 r26, 0x800, r1
.Ltmp319:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r0
.Ltmp320:
	.loc	2 222 427                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:427
	add_co_u32 r4, 0x20000, r8
.Ltmp321:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s6, md
.Ltmp322:
	.loc	2 222 73                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:73
	shl_add_u32 r3, 1, r26, 0
	.loc	2 208 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:208:24
	ldu_b32 s5, s14, 0x0
.Ltmp323:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp324:
	.loc	2 222 427                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:427
	addc_co_u32 r5, r9, 0
.Ltmp325:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp326:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp327:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r3
.Ltmp328:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp329:
	.loc	2 222 323 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:323
	add_u32 r27, 0x1000, r1
	.loc	2 222 73 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:73
	shl_add_u32 r6, 1, r27, 0
	.loc	2 222 323                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:323
	add_u32 r28, 0x1800, r1
.Ltmp330:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	rfl_b32 s7, r6
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp331:
	.loc	2 223 436                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:223:436
	add_co_u32 r4, 0xa0000, r8
	addc_co_u32 r5, r9, 0
.Ltmp332:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp333:
	.loc	2 222 73                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:73
	shl_add_u32 r7, 1, r28, 0
.Ltmp334:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp335:
	.loc	2 222 427                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:427
	add_co_u32 r4, 0x40000, r8
	addc_co_u32 r5, r9, 0
.Ltmp336:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	rfl_b32 s7, r7
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp337:
	.loc	2 223 436                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:223:436
	add_co_u32 r4, 0xc0000, r8
	addc_co_u32 r5, r9, 0
.Ltmp338:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	shl_b32 r10, 10, r2
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp339:
	.loc	2 222 427                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:222:427
	add_co_u32 r4, 0x60000, r8
	addc_co_u32 r5, r9, 0
.Ltmp340:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
	and_b32 r29, 0xf0000, r10
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp341:
	.loc	2 223 436                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:223:436
	add_co_u32 r4, 0xe0000, r8
	addc_co_u32 r5, r9, 0
.Ltmp342:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	shr_b32 r9, 1, r2
	ldg_b128 r0, r4, 0x0 bsm
	and_b32 r5, 0x1e0, r9
	and_b32 r4, r2, 15
	or_b32 r1, r5, r4
	add_u32 r8, s10, r1
	shl_b32 r10, 11, r2
.Ltmp343:
	.loc	2 229 115                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:229:115
	cmp_gt_u32 s8, 0x2380, r8
	and_b32 r30, 0x7800, r10
	and_b32 r10, r9, 24
	or3_b32 r12, r30, r29, r10
	mov_b32 r13, 0
	mov_b32 r10, 0x800
	mad_i32 r10, s10, r10, r12
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, 0
.Ltmp344:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s6
.Ltmp345:
	.loc	2 229 115                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:229:115
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_2
; %bb.1:                                ; %if.then
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r12, 1, r10
	add_co_u32 r14, s22, r12
	mov_b32 r12, s23
	addc_co_u32 r15, r12, r13
	.loc	2 230 15 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:230:15
	snop 1
	ldg_b128 r152, r14, 0x0
LBB3_2:                                 ; %if.end
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s6
	.loc	2 229 78 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:229:78
	add_u32 r8, r8, 16
	.loc	2 229 115 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:229:115
	cmp_gt_u32 s6, 0x2380, r8
	shl_b64 r160, 0, 0
	shl_b64 r162, 0, 0
	snop 1
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then.1
	.loc	2 0 115                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r12, 1, r10
	add_co_u32 r8, s22, r12
	mov_b32 r12, s23
	addc_co_u32 r12, r12, r13
	add_co_u32 r14, 0x10000, r8
	addc_co_u32 r15, r12, 0
	.loc	2 230 15 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:230:15
	snop 1
	ldg_b128 r160, r14, 0x0
LBB3_4:                                 ; %if.end.1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s12
	sashr_i32 s11, 31, s10
	shl_b64 r168, 0, 0
	shl_b64 r170, 0, 0
	.loc	2 229 115 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:229:115
	and_xmsk s12, s8
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r12, 1, r10
	add_co_u32 r12, s22, r12
	mov_b32 r8, s23
	addc_co_u32 r13, r8, r13
	.loc	2 230 15 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:230:15
	snop 1
	ldg_b128 r168, r12, 0x40
LBB3_6:                                 ; %if.end.2
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s12
	arrive slcnt(0)
	ssub_co_i32 s3, s5, s3
	shl_b64 r172, 0, 0
	shl_b64 r174, 0, 0
	.loc	2 229 115 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:229:115
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:115
	shl_b64 r10, 1, r10
	add_co_u32 r8, s22, r10
	mov_b32 r10, s23
	addc_co_u32 r10, r10, r11
	add_co_u32 r12, 0x10040, r8
	addc_co_u32 r13, r10, 0
	.loc	2 230 15 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:230:15
	snop 1
	ldg_b128 r172, r12, 0x0
LBB3_8:                                 ; %if.end.3
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s12
	sadd_co_i32 s0, s3, s0
.Ltmp346:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(5)
	barrier
.Ltmp347:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	shr_b32 r10, 5, r2
	add_shl_u32 r9, r10, r9, 4
	shr_b32 r10, 4, r2
	sadd_co_u32 s12, 0x80, s18
	saddc_co_u32 s13, s19, 0
	shl_b32 r8, 6, r2
	shl_b32 r11, 3, r2
	and_b32 r9, r9, 16
	add_shl_u32 r10, r10, r2, 3
	and_b32 r16, 0x3c0, r8
	sadd_co_u32 s14, 0x80080, s18
	and_b32 r17, r11, 32
	and_or_b32 r24, r10, 8, r9
	saddc_co_u32 s15, s19, 0
	or_b32 r19, 0x400, r16
	or_b32 r20, r24, r17
	or_b32 r21, 0x800, r16
	or_b32 r22, 0xc00, r16
	or_b32 r23, 0x1000, r16
	or_b32 r33, 0x1400, r16
	or_b32 r34, 0x1800, r16
	or_b32 r35, 0x1c00, r16
	xor_b32 r36, r17, 32
	sadd_co_i32 s3, 0x4000, 0
	or_b32 r10, r20, r19
	or_b32 r11, r20, r21
	or_b32 r12, r20, r22
	or_b32 r13, r20, r23
	or_b32 r14, r20, r33
	or_b32 r15, r20, r34
	or_b32 r18, r24, r16
	or_b32 r16, r20, r35
	or3_b32 r20, r24, r22, r36
	or3_b32 r22, r24, r33, r36
	mov_b32 r33, s3
.Ltmp348:
	.loc	2 238 3                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:238:3
	sshl_b64 s18, 12, s10
	shl_add_u32 r25, 1, r25, r33
	shl_add_u32 r26, 1, r26, r33
	shl_add_u32 r27, 1, r27, r33
	shl_add_u32 r28, 1, r28, r33
	mov_b32 r33, s18
	and_or_b32 r33, r2, 48, r33
	add_shl_u32 r30, r29, r30, 1
	or_b32 r9, r18, r17
	or_b32 r17, r18, r36
	or3_b32 r18, r24, r19, r36
	or3_b32 r19, r24, r21, r36
	or3_b32 r21, r24, r23, r36
	or3_b32 r23, r24, r34, r36
	or3_b32 r24, r24, r35, r36
	add_co_u32 r29, r33, r30
	mov_b32 r34, s19
	mov_b32 r35, 0
	addc_co_u32 r30, r34, r35
	sadd_co_i32 s1, s1, s2
	add_u32 r31, s1, r31
	add_co_u32 r29, s22, r29
	mov_b32 r33, s23
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:0
	shl_b64 r96, 0, 0
	.loc	2 238 3                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:238:3
	addc_co_u32 r30, r33, r30
	add_u32 r31, r31, r32
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:0
	shl_b64 r98, 0, 0
	shl_b64 r100, 0, r96
	shl_b64 r104, 0, r96
	shl_b64 r108, 0, r96
	shl_b64 r112, 0, r96
	shl_b64 r116, 0, r96
	shl_b64 r120, 0, r96
	shl_b64 r124, 0, r96
	shl_b64 r128, 0, r96
	shl_b64 r132, 0, r96
	shl_b64 r136, 0, r96
	shl_b64 r140, 0, r96
	shl_b64 r144, 0, r96
	shl_b64 r148, 0, r96
	shl_b64 r156, 0, r96
	shl_b64 r164, 0, r96
	shl_b64 r32, 0, r96
	shl_b64 r36, 0, r96
	shl_b64 r40, 0, r96
	shl_b64 r44, 0, r96
	shl_b64 r48, 0, r96
	shl_b64 r52, 0, r96
	shl_b64 r56, 0, r96
	shl_b64 r60, 0, r96
	shl_b64 r64, 0, r96
	shl_b64 r68, 0, r96
	shl_b64 r72, 0, r96
	shl_b64 r76, 0, r96
	shl_b64 r80, 0, r96
	shl_b64 r84, 0, r96
	shl_b64 r88, 0, r96
	shl_b64 r92, 0, r96
	shr_b32 r8, 2, r2
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
	smov_b64 s2, 0
	shl_b64 r102, 0, r98
	shl_b64 r106, 0, r98
	shl_b64 r110, 0, r98
	shl_b64 r114, 0, r98
	shl_b64 r118, 0, r98
	shl_b64 r122, 0, r98
	shl_b64 r126, 0, r98
	shl_b64 r130, 0, r98
	shl_b64 r134, 0, r98
	shl_b64 r138, 0, r98
	shl_b64 r142, 0, r98
	shl_b64 r146, 0, r98
	shl_b64 r150, 0, r98
	shl_b64 r158, 0, r98
	shl_b64 r166, 0, r98
	shl_b64 r34, 0, r98
	shl_b64 r38, 0, r98
	shl_b64 r42, 0, r98
	shl_b64 r46, 0, r98
	shl_b64 r50, 0, r98
	shl_b64 r54, 0, r98
	shl_b64 r58, 0, r98
	shl_b64 r62, 0, r98
	shl_b64 r66, 0, r98
	shl_b64 r70, 0, r98
	shl_b64 r74, 0, r98
	shl_b64 r78, 0, r98
	shl_b64 r82, 0, r98
	shl_b64 r86, 0, r98
	shl_b64 r90, 0, r98
	shl_b64 r94, 0, r98
	bra LBB3_11
	.p2align	5
LBB3_9:                                 ; %if.end664.3
                                        ;   in Loop: Header=BB3_11 Depth=1
	sor_b64 xmsk, xmsk, s18
LBB3_10:                                ; %for.inc673
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 238 21                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:238:21
	sadd_co_u32 s2, 0x80, s2
	saddc_co_u32 s3, s3, 0
	scmp_eq_u64 0x1000, s2
	add_u32 r31, r31, 64
	.loc	2 238 3                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:238:3
	bra_smsks LBB3_22
LBB3_11:                                ; %for.cond249.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 241 48 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r176, r9, 0x0
	lds_b128 r180, r10, 0x0
	lds_b128 r184, r11, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive gvmcnt(0) & bsmcnt(2)
	mma_16x16x16f16 r164, r176, r152, r164
	mma_16x16x16f16 r124, r176, r160, r124
	mma_16x16x16f16 r164, r178, r154, r164
	mma_16x16x16f16 r124, r178, r162, r124
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r176, r12, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r180, r152, r156
	mma_16x16x16f16 r120, r180, r160, r120
	mma_16x16x16f16 r156, r182, r154, r156
	mma_16x16x16f16 r120, r182, r162, r120
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r180, r13, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r184, r152, r148
	mma_16x16x16f16 r116, r184, r160, r116
	mma_16x16x16f16 r148, r186, r154, r148
	mma_16x16x16f16 r116, r186, r162, r116
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r184, r14, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r176, r152, r144
	mma_16x16x16f16 r112, r176, r160, r112
	mma_16x16x16f16 r144, r178, r154, r144
	mma_16x16x16f16 r112, r178, r162, r112
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r176, r15, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r180, r152, r140
	mma_16x16x16f16 r108, r180, r160, r108
	mma_16x16x16f16 r140, r182, r154, r140
	mma_16x16x16f16 r108, r182, r162, r108
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r180, r16, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r184, r152, r136
	mma_16x16x16f16 r104, r184, r160, r104
	mma_16x16x16f16 r136, r186, r154, r136
	mma_16x16x16f16 r104, r186, r162, r104
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r184, r17, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r176, r152, r132
	mma_16x16x16f16 r100, r176, r160, r100
	mma_16x16x16f16 r132, r178, r154, r132
	mma_16x16x16f16 r100, r178, r162, r100
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r176, r18, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r180, r152, r128
	mma_16x16x16f16 r96, r180, r160, r96
	mma_16x16x16f16 r128, r182, r154, r128
	mma_16x16x16f16 r96, r182, r162, r96
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r180, r19, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r184, r168, r164
	mma_16x16x16f16 r124, r184, r172, r124
	mma_16x16x16f16 r164, r186, r170, r164
	mma_16x16x16f16 r124, r186, r174, r124
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r184, r20, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r176, r168, r156
	mma_16x16x16f16 r120, r176, r172, r120
	mma_16x16x16f16 r156, r178, r170, r156
	mma_16x16x16f16 r120, r178, r174, r120
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r176, r21, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r180, r168, r148
	mma_16x16x16f16 r116, r180, r172, r116
	mma_16x16x16f16 r148, r182, r170, r148
	mma_16x16x16f16 r116, r182, r174, r116
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r180, r22, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r184, r168, r144
	mma_16x16x16f16 r112, r184, r172, r112
	mma_16x16x16f16 r144, r186, r170, r144
	mma_16x16x16f16 r112, r186, r174, r112
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r184, r23, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r176, r168, r140
	mma_16x16x16f16 r108, r176, r172, r108
	mma_16x16x16f16 r140, r178, r170, r140
	mma_16x16x16f16 r108, r178, r174, r108
	.loc	2 241 48                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:241:48
	lds_b128 r176, r24, 0x0
	.loc	2 247 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:247:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r180, r168, r136
	mma_16x16x16f16 r104, r180, r172, r104
	mma_16x16x16f16 r136, r182, r170, r136
	mma_16x16x16f16 r104, r182, r174, r104
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r184, r168, r132
	mma_16x16x16f16 r100, r184, r172, r100
	mma_16x16x16f16 r132, r186, r170, r132
	mma_16x16x16f16 r100, r186, r174, r100
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r176, r168, r128
	mma_16x16x16f16 r96, r176, r172, r96
	mma_16x16x16f16 r128, r178, r170, r128
	mma_16x16x16f16 r96, r178, r174, r96
.Ltmp349:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp350:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp351:
	.loc	2 257 11                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:257:11
	mov_b32 r176, 0xf80
	mov_b32 r177, 0
	cmp_lg_u64 s18, s2, r176
	.loc	2 257 9 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:257:9
	snop 3
	sand_b64 cmsk, xmsk, s18
	snop 0
	bra_cmskz LBB3_13
; %bb.12:                               ; %for.cond346.preheader
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 259 433 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:259:433
	mad_i32 r176, r31, 2, s12
.Ltmp352:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s5, r0
	smov_b32 s1, md
	snop 2
	smov_b32 md, s5
	rfl_b32 s5, r3
	ldg_b128 r0, r176, 0x0 bsm
.Ltmp353:
	.loc	2 259 433                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:259:433
	add_u32 r176, 0x10000, r31
	mad_i32 r176, r176, 2, s12
.Ltmp354:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	rfl_b32 s5, r6
	ldg_b128 r0, r176, 0x0 bsm
.Ltmp355:
	.loc	2 259 433                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:259:433
	add_u32 r176, 0x20000, r31
	mad_i32 r176, r176, 2, s12
.Ltmp356:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	rfl_b32 s5, r7
	ldg_b128 r0, r176, 0x0 bsm
.Ltmp357:
	.loc	2 259 433                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:259:433
	add_u32 r176, 0x30000, r31
	mad_i32 r176, r176, 2, s12
.Ltmp358:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s1
.Ltmp359:
LBB3_13:                                ; %if.end414
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	add_i32 r176, 0x4000, r9
	add_i32 r177, 0x4000, r10
	.loc	2 278 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:278:9
	sandn_b64 cmsk, xmsk, s18
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r178, r176, 0x0
	lds_b128 r182, r177, 0x0
	add_i32 r176, 0x4000, r11
	add_i32 r177, 0x4000, r12
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(1)
	mma_16x16x16f16 r92, r178, r152, r92
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r186, r176, 0x0
	add_i32 r176, 0x4000, r13
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	mma_16x16x16f16 r60, r178, r160, r60
	mma_16x16x16f16 r92, r180, r154, r92
	mma_16x16x16f16 r60, r180, r162, r60
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r178, r177, 0x0
	add_i32 r177, 0x4000, r14
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r182, r152, r88
	mma_16x16x16f16 r56, r182, r160, r56
	mma_16x16x16f16 r88, r184, r154, r88
	mma_16x16x16f16 r56, r184, r162, r56
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r182, r176, 0x0
	add_i32 r176, 0x4000, r15
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r186, r152, r84
	mma_16x16x16f16 r52, r186, r160, r52
	mma_16x16x16f16 r84, r188, r154, r84
	mma_16x16x16f16 r52, r188, r162, r52
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r186, r177, 0x0
	add_i32 r177, 0x4000, r16
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r178, r152, r80
	mma_16x16x16f16 r48, r178, r160, r48
	mma_16x16x16f16 r80, r180, r154, r80
	mma_16x16x16f16 r48, r180, r162, r48
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r178, r176, 0x0
	add_i32 r176, 0x4000, r17
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r182, r152, r76
	mma_16x16x16f16 r44, r182, r160, r44
	mma_16x16x16f16 r76, r184, r154, r76
	mma_16x16x16f16 r44, r184, r162, r44
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r182, r177, 0x0
	add_i32 r177, 0x4000, r20
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r186, r152, r72
	mma_16x16x16f16 r40, r186, r160, r40
	mma_16x16x16f16 r72, r188, r154, r72
	mma_16x16x16f16 r40, r188, r162, r40
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r186, r176, 0x0
	add_i32 r176, 0x4000, r18
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r178, r152, r68
	mma_16x16x16f16 r36, r178, r160, r36
	mma_16x16x16f16 r68, r180, r154, r68
	mma_16x16x16f16 r36, r180, r162, r36
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r178, r176, 0x0
	add_i32 r176, 0x4000, r19
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r182, r152, r64
	mma_16x16x16f16 r32, r182, r160, r32
	mma_16x16x16f16 r64, r184, r154, r64
	mma_16x16x16f16 r32, r184, r162, r32
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r182, r176, 0x0
	add_i32 r176, 0x4000, r21
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r186, r168, r92
	mma_16x16x16f16 r60, r186, r172, r60
	mma_16x16x16f16 r92, r188, r170, r92
	mma_16x16x16f16 r60, r188, r174, r60
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r186, r177, 0x0
	add_i32 r177, 0x4000, r22
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r178, r168, r88
	mma_16x16x16f16 r56, r178, r172, r56
	mma_16x16x16f16 r88, r180, r170, r88
	mma_16x16x16f16 r56, r180, r174, r56
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r178, r176, 0x0
	add_i32 r176, 0x4000, r23
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r182, r168, r84
	mma_16x16x16f16 r52, r182, r172, r52
	mma_16x16x16f16 r84, r184, r170, r84
	mma_16x16x16f16 r52, r184, r174, r52
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r182, r177, 0x0
	add_i32 r177, 0x4000, r24
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r186, r168, r80
	mma_16x16x16f16 r48, r186, r172, r48
	mma_16x16x16f16 r80, r188, r170, r80
	mma_16x16x16f16 r48, r188, r174, r48
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r186, r176, 0x0
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r178, r168, r76
	mma_16x16x16f16 r44, r178, r172, r44
	.loc	2 264 50                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:264:50
	lds_b128 r176, r177, 0x0
	.loc	2 270 61                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:270:61
	mma_16x16x16f16 r76, r180, r170, r76
	mma_16x16x16f16 r44, r180, r174, r44
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r182, r168, r72
	mma_16x16x16f16 r40, r182, r172, r40
	mma_16x16x16f16 r72, r184, r170, r72
	mma_16x16x16f16 r40, r184, r174, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r186, r168, r68
	mma_16x16x16f16 r36, r186, r172, r36
	mma_16x16x16f16 r68, r188, r170, r68
	mma_16x16x16f16 r36, r188, r174, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r176, r168, r64
	mma_16x16x16f16 r32, r176, r172, r32
	mma_16x16x16f16 r64, r178, r170, r64
	mma_16x16x16f16 r32, r178, r174, r32
	.loc	2 278 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:278:9
	bra_cmsks LBB3_10
; %bb.14:                               ; %if.then511
                                        ;   in Loop: Header=BB3_11 Depth=1
.Ltmp360:
	.loc	3 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp361:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp362:
	.loc	2 282 442                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:282:442
	mad_i32 r152, r31, 2, s14
.Ltmp363:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s5, r25
	smov_b32 s1, md
	shl_b64 r154, 0, 0
	snop 1
	smov_b32 md, s5
	rfl_b32 s5, r26
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp364:
	.loc	2 282 442                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:282:442
	add_u32 r152, 0x10000, r31
	mad_i32 r152, r152, 2, s14
.Ltmp365:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	rfl_b32 s5, r27
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp366:
	.loc	2 282 442                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:282:442
	add_u32 r152, 0x20000, r31
	mad_i32 r152, r152, 2, s14
.Ltmp367:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	rfl_b32 s5, r28
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp368:
	.loc	2 282 442                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:282:442
	add_u32 r152, 0x30000, r31
	mad_i32 r152, r152, 2, s14
.Ltmp369:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r152, 0x0 bsm
	shl_b64 r152, 0, 0
	smov_b32 md, s1
.Ltmp370:
	.loc	2 288 119                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:288:119
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then609
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:119
	add_co_u32 r154, r29, s2
	mov_b32 r152, s3
	addc_co_u32 r155, r30, r152
	.loc	2 289 21 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:289:21
	snop 1
	ldg_b128 r152, r154, 0x80
LBB3_16:                                ; %if.end664
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s18
	shl_b64 r160, 0, 0
	shl_b64 r162, 0, 0
	.loc	2 288 119 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:288:119
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then609.1
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:119
	add_co_u32 r160, r29, s2
	mov_b32 r161, s3
	addc_co_u32 r161, r30, r161
	.loc	2 289 21 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:289:21
	add_co_u32 r160, 0x10080, r160
	addc_co_u32 r161, r161, 0
	snop 1
	ldg_b128 r160, r160, 0x0
LBB3_18:                                ; %if.end664.1
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s18
	shl_b64 r168, 0, 0
	shl_b64 r170, 0, 0
	.loc	2 288 119 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:288:119
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then609.2
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:119
	add_co_u32 r170, r29, s2
	mov_b32 r168, s3
	addc_co_u32 r171, r30, r168
	.loc	2 289 21 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:289:21
	snop 1
	ldg_b128 r168, r170, 0xc0
LBB3_20:                                ; %if.end664.2
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s18
	shl_b64 r172, 0, 0
	shl_b64 r174, 0, 0
	.loc	2 288 119 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:288:119
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_9
; %bb.21:                               ; %if.then609.3
                                        ;   in Loop: Header=BB3_11 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:119
	add_co_u32 r172, r29, s2
	mov_b32 r173, s3
	addc_co_u32 r173, r30, r173
	.loc	2 289 21 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:289:21
	add_co_u32 r172, 0x100c0, r172
	addc_co_u32 r173, r173, 0
	snop 1
	ldg_b128 r172, r172, 0x0
	bra LBB3_9
LBB3_22:                                ; %for.cond676.preheader
.Ltmp371:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp372:
	.loc	2 297 3                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:297:3
	shl_b64 r6, 0, s20
	.loc	2 299 92                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:299:92
	cmp_gt_i32 s2, s0, r1
	.loc	2 297 3                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:297:3
	mad_i32 r6, s10, 2, r6
	shl_b32 r0, 1, r4
	add_co_u32 r6, r6, r0
	addc_co_u32 r7, r7, 0
	add_u16 r3_lo, 0, 0
	.loc	2 299 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:299:9
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then692
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	add_u16 r3_lo, 0, 0
	.loc	2 301 114 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:301:114
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then714
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:114
	shl_b32 r0, 1, r5
	add_co_u32 r10, r6, r0
	addc_co_u32 r11, r7, 0
	.loc	2 302 19 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:302:19
	snop 1
	ldg_u16 r3, r10, 0x0
LBB3_25:                                ; %Flow450
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_26:                                ; %for.inc735
	sor_b64 xmsk, xmsk, s12
	.loc	2 299 63 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:299:63
	or_b32 r10, r5, 16
	.loc	2 299 92 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:299:92
	or_b32 r0, r4, r10
	cmp_gt_i32 s14, s0, r0
	add_u16 r0_lo, 0, 0
	.loc	2 299 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:299:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.27:                               ; %if.then692.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	add_u16 r0_lo, 0, 0
	.loc	2 301 114 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:301:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_29
; %bb.28:                               ; %if.then714.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:114
	shl_b32 r0, 1, r10
	add_co_u32 r6, r6, r0
	addc_co_u32 r7, r7, 0
	.loc	2 302 19 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:302:19
	snop 1
	ldg_u16 r0, r6, 0x0
LBB3_29:                                ; %Flow449
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_30:                                ; %for.inc735.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r2, 6, r2
	mul_u24 r6, 0x38000, r2
	mul_u24 r2, 0x1c00, r4
	mov_b32 r7, 0
	mov_b32 r4, 0x100
	mad_u32 r4, s4, r4, r6
	add_co_u32 r4, r4, r2
	addc_co_u32 r5, r5, 0
	mov_b32 r2, 0x1c00
	mad_i32 r6, s10, r2, r4
	and_b32 r2, r8, 12
	.loc	2 310 3 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:310:3
	shl_b32 r2, 1, r2
	add_co_u32 r2, s16, r2
	mov_b32 r4, s17
	addc_co_u32 r4, r4, 0
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_38
; %bb.31:                               ; %for.inc858
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_41
LBB3_32:                                ; %for.inc858.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_44
LBB3_33:                                ; %for.inc858.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_47
LBB3_34:                                ; %for.inc858.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_50
LBB3_35:                                ; %for.inc858.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_53
LBB3_36:                                ; %for.inc858.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_56
LBB3_37:                                ; %for.inc858.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_59
	bra LBB3_62
LBB3_38:                                ; %if.then752
.Ltmp373:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp374:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp377:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then821
.Ltmp378:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp379:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r167, r5
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp381:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r166, r5
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp383:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r165, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r164, r5
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp385:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp386:
	.loc	2 325 28 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r2, r10
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_40:                                ; %Flow448
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_32
LBB3_41:                                ; %if.then752.1
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp388:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp391:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_43
; %bb.42:                               ; %if.then821.1
.Ltmp392:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp393:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r159, r5
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp395:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r158, r5
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp397:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r157, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r156, r5
.Ltmp398:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp399:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp400:
	.loc	2 325 312 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:312
	shl_b64 r10, 1, r6
	.loc	2 325 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r10, r2, r10
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_43:                                ; %Flow447
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_33
LBB3_44:                                ; %if.then752.2
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp402:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp405:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then821.2
.Ltmp406:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp407:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r151, r5
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp409:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r150, r5
.Ltmp410:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp411:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r149, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r148, r5
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp413:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp414:
	.loc	2 325 312 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:312
	shl_b64 r10, 1, r6
	.loc	2 325 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r10, r2, r10
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_46:                                ; %Flow446
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_34
LBB3_47:                                ; %if.then752.3
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp416:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp419:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_49
; %bb.48:                               ; %if.then821.3
.Ltmp420:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp421:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r147, r5
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp423:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r146, r5
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp425:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r145, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r144, r5
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp427:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp428:
	.loc	2 325 312 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:312
	shl_b64 r10, 1, r6
	.loc	2 325 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r10, r2, r10
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_49:                                ; %Flow445
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_35
LBB3_50:                                ; %if.then752.4
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp430:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp433:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then821.4
.Ltmp434:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp435:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r143, r5
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp437:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r142, r5
.Ltmp438:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp439:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r141, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r140, r5
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp441:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp442:
	.loc	2 325 312 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:312
	shl_b64 r10, 1, r6
	.loc	2 325 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r10, r2, r10
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_52:                                ; %Flow444
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_36
LBB3_53:                                ; %if.then752.5
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp444:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp447:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_55
; %bb.54:                               ; %if.then821.5
.Ltmp448:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp449:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r139, r5
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp451:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r138, r5
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp453:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r137, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r136, r5
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp455:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp456:
	.loc	2 325 312 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:312
	shl_b64 r10, 1, r6
	.loc	2 325 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r10, r2, r10
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_55:                                ; %Flow443
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_37
LBB3_56:                                ; %if.then752.6
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp458:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp461:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.then821.6
.Ltmp462:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp463:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r135, r5
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp465:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r134, r5
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp467:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r133, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r132, r5
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp469:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp470:
	.loc	2 325 312 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:312
	shl_b64 r10, 1, r6
	.loc	2 325 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r10, r2, r10
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_58:                                ; %Flow442
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_62
LBB3_59:                                ; %if.then752.7
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp472:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp473:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp475:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_61
; %bb.60:                               ; %if.then821.7
.Ltmp476:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r5, r3_lo
.Ltmp477:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r8, r131, r5
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp479:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r9, r130, r5
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp481:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r8, 16, r8
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r8, r129, r5
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r5, r128, r5
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp483:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp484:
	.loc	2 325 312 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:312
	shl_b64 r10, 1, r6
	.loc	2 325 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r10, r2, r10
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r8, 16, r8
	and_b32 r5, 0xffff, r5
	or_b32 r8, r8, r5
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	addc_co_u32 r11, r4, r11
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_61:                                ; %Flow441
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
LBB3_62:                                ; %for.inc858.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 65 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:65
	or_b32 r1, r1, 16
	.loc	2 311 94 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:94
	cmp_gt_i32 s0, s0, r1
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_70
; %bb.63:                               ; %for.inc858.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_73
LBB3_64:                                ; %for.inc858.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_76
LBB3_65:                                ; %for.inc858.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_79
LBB3_66:                                ; %for.inc858.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_82
LBB3_67:                                ; %for.inc858.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_85
LBB3_68:                                ; %for.inc858.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_88
LBB3_69:                                ; %for.inc858.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_91
	bra LBB3_94
LBB3_70:                                ; %if.then752.8
.Ltmp485:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp486:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp487:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp489:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then821.8
.Ltmp490:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp491:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r127, r1
.Ltmp492:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp493:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r126, r1
.Ltmp494:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp495:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r125, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r124, r1
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp497:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp498:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x38000, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_72:                                ; %Flow440
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_64
LBB3_73:                                ; %if.then752.9
.Ltmp499:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp500:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp502:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp503:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_75
; %bb.74:                               ; %if.then821.9
.Ltmp504:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp505:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r123, r1
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp507:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r122, r1
.Ltmp508:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp509:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r121, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r120, r1
.Ltmp510:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp511:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp512:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x38020, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_75:                                ; %Flow439
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_65
LBB3_76:                                ; %if.then752.10
.Ltmp513:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp514:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp515:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp517:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.then821.10
.Ltmp518:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp519:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r119, r1
.Ltmp520:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp521:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r118, r1
.Ltmp522:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp523:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r117, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r116, r1
.Ltmp524:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp525:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp526:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x38040, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_78:                                ; %Flow438
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_66
LBB3_79:                                ; %if.then752.11
.Ltmp527:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp528:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp529:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp530:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp531:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_81
; %bb.80:                               ; %if.then821.11
.Ltmp532:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp533:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r115, r1
.Ltmp534:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp535:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r114, r1
.Ltmp536:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp537:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r113, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r112, r1
.Ltmp538:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp539:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp540:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x38060, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_81:                                ; %Flow437
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_67
LBB3_82:                                ; %if.then752.12
.Ltmp541:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp542:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp543:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp544:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp545:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_84
; %bb.83:                               ; %if.then821.12
.Ltmp546:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp547:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r111, r1
.Ltmp548:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp549:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r110, r1
.Ltmp550:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp551:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r109, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r108, r1
.Ltmp552:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp553:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp554:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x38080, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_84:                                ; %Flow436
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_68
LBB3_85:                                ; %if.then752.13
.Ltmp555:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp556:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp557:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp558:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp559:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_87
; %bb.86:                               ; %if.then821.13
.Ltmp560:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp561:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r107, r1
.Ltmp562:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp563:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r106, r1
.Ltmp564:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp565:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r105, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r104, r1
.Ltmp566:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp567:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp568:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x380a0, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_87:                                ; %Flow435
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_69
LBB3_88:                                ; %if.then752.14
.Ltmp569:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp570:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp571:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp572:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp573:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_90
; %bb.89:                               ; %if.then821.14
.Ltmp574:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp575:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r103, r1
.Ltmp576:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp577:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r102, r1
.Ltmp578:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp579:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r101, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r100, r1
.Ltmp580:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp581:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp582:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x380c0, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_90:                                ; %Flow434
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 311 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:311:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_94
LBB3_91:                                ; %if.then752.15
.Ltmp583:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp584:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp585:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp586:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp587:
	.loc	2 323 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:323:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_93
; %bb.92:                               ; %if.then821.15
.Ltmp588:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r1, r0_lo
.Ltmp589:
	.loc	2 319 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:319:22
	mul_f32 r5, r99, r1
.Ltmp590:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp591:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	mul_f32 r8, r98, r1
.Ltmp592:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp593:
	.loc	2 318 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:318:22
	shl_b32 r5, 16, r5
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 317 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:317:22
	mul_f32 r5, r97, r1
	.loc	2 316 22                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:316:22
	mul_f32 r1, r96, r1
.Ltmp594:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp595:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp596:
	.loc	2 322 40 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	shl_b32 r5, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	shl_b64 r10, 1, r6
	.loc	2 322 40                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:322:40
	or_b32 r8, r5, r1
	.loc	2 325 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:28
	add_co_u32 r1, r2, r10
	addc_co_u32 r5, r4, r11
	add_co_u32 r10, 0x380e0, r1
	addc_co_u32 r11, r5, 0
	.loc	2 325 442 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:325:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_93:                                ; %Flow433
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s10
LBB3_94:                                ; %for.inc858.15
	sor_b64 xmsk, xmsk, s4
	.loc	2 331 3 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:331:3
	add_co_u32 r1, 0x100, r2
	addc_co_u32 r2, r4, 0
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_111
; %bb.95:                               ; %for.inc986
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_114
LBB3_96:                                ; %for.inc986.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_117
LBB3_97:                                ; %for.inc986.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_120
LBB3_98:                                ; %for.inc986.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_123
LBB3_99:                                ; %for.inc986.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_126
LBB3_100:                               ; %for.inc986.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_129
LBB3_101:                               ; %for.inc986.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_132
LBB3_102:                               ; %for.inc986.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_135
LBB3_103:                               ; %for.inc986.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_138
LBB3_104:                               ; %for.inc986.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_141
LBB3_105:                               ; %for.inc986.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_144
LBB3_106:                               ; %for.inc986.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_147
LBB3_107:                               ; %for.inc986.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_150
LBB3_108:                               ; %for.inc986.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_153
LBB3_109:                               ; %for.inc986.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_156
LBB3_110:                               ; %for.inc986.15
	.loc	2 351 1 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:351:1
	snop 0
	endk
LBB3_111:                               ; %if.then875
.Ltmp597:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp598:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp599:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp600:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp601:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_113
; %bb.112:                              ; %if.then948
.Ltmp602:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
.Ltmp603:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r5, r95, r4
.Ltmp604:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp605:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r8, r94, r4
.Ltmp606:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp607:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r5, 16, r5
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r5, r93, r4
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r4, r92, r4
.Ltmp608:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp609:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp610:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r4, 0x0, r8 devc
LBB3_113:                               ; %Flow432
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_96
LBB3_114:                               ; %if.then875.1
.Ltmp611:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp612:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp613:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp614:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp615:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_116
; %bb.115:                              ; %if.then948.1
.Ltmp616:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
.Ltmp617:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r5, r91, r4
.Ltmp618:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp619:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r8, r90, r4
.Ltmp620:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp621:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r5, 16, r5
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r5, r89, r4
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r4, r88, r4
.Ltmp622:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp623:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp624:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 346 313                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:313
	shl_b64 r4, 1, r6
	.loc	2 346 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 346 459                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r4, 0x20, r8 devc
LBB3_116:                               ; %Flow431
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_97
LBB3_117:                               ; %if.then875.2
.Ltmp625:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp626:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp627:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp628:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp629:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_119
; %bb.118:                              ; %if.then948.2
.Ltmp630:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
.Ltmp631:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r5, r87, r4
.Ltmp632:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp633:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r8, r86, r4
.Ltmp634:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp635:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r5, 16, r5
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r5, r85, r4
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r4, r84, r4
.Ltmp636:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp637:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp638:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 346 313                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:313
	shl_b64 r4, 1, r6
	.loc	2 346 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 346 459                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r4, 0x40, r8 devc
LBB3_119:                               ; %Flow430
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_98
LBB3_120:                               ; %if.then875.3
.Ltmp639:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp640:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp641:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp642:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp643:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_122
; %bb.121:                              ; %if.then948.3
.Ltmp644:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
.Ltmp645:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r5, r83, r4
.Ltmp646:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp647:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r8, r82, r4
.Ltmp648:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp649:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r5, 16, r5
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r5, r81, r4
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r4, r80, r4
.Ltmp650:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp651:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp652:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 346 313                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:313
	shl_b64 r4, 1, r6
	.loc	2 346 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 346 459                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r4, 0x60, r8 devc
LBB3_122:                               ; %Flow429
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_99
LBB3_123:                               ; %if.then875.4
.Ltmp653:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp654:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp655:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp656:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp657:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_125
; %bb.124:                              ; %if.then948.4
.Ltmp658:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
.Ltmp659:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r5, r79, r4
.Ltmp660:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp661:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r8, r78, r4
.Ltmp662:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp663:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r5, 16, r5
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r5, r77, r4
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r4, r76, r4
.Ltmp664:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp665:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp666:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 346 313                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:313
	shl_b64 r4, 1, r6
	.loc	2 346 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 346 459                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r4, 0x80, r8 devc
LBB3_125:                               ; %Flow428
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_100
LBB3_126:                               ; %if.then875.5
.Ltmp667:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp668:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp669:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp670:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp671:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_128
; %bb.127:                              ; %if.then948.5
.Ltmp672:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
.Ltmp673:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r5, r75, r4
.Ltmp674:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp675:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r8, r74, r4
.Ltmp676:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp677:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r5, 16, r5
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r5, r73, r4
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r4, r72, r4
.Ltmp678:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp679:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp680:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 346 313                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:313
	shl_b64 r4, 1, r6
	.loc	2 346 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 346 459                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r4, 0xa0, r8 devc
LBB3_128:                               ; %Flow427
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_101
LBB3_129:                               ; %if.then875.6
.Ltmp681:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp682:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp683:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp684:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp685:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_131
; %bb.130:                              ; %if.then948.6
.Ltmp686:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
.Ltmp687:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r5, r71, r4
.Ltmp688:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp689:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r8, r70, r4
.Ltmp690:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp691:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r5, 16, r5
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r5, r69, r4
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r4, r68, r4
.Ltmp692:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp693:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp694:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 346 313                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:313
	shl_b64 r4, 1, r6
	.loc	2 346 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 346 459                       ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r4, 0xc0, r8 devc
LBB3_131:                               ; %Flow426
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_102
LBB3_132:                               ; %if.then875.7
.Ltmp695:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp696:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp697:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp698:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp699:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_134
; %bb.133:                              ; %if.then948.7
.Ltmp700:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r3_lo
.Ltmp701:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r67, r3
.Ltmp702:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp703:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r66, r3
.Ltmp704:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp705:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r5, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r65, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r64, r3
.Ltmp706:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp707:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp708:
	.loc	2 346 313 is_stmt 1             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:313
	shl_b64 r8, 1, r6
	.loc	2 346 28 is_stmt 0              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r8, r1, r8
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r4, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	addc_co_u32 r9, r2, r9
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r8, 0xe0, r4 devc
LBB3_134:                               ; %Flow425
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s2
	sor_b64 xmsk, xmsk, s4
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_103
LBB3_135:                               ; %if.then875.8
.Ltmp709:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp710:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp711:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp712:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp713:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_137
; %bb.136:                              ; %if.then948.8
.Ltmp714:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r0_lo
.Ltmp715:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r63, r3
.Ltmp716:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp717:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r62, r3
.Ltmp718:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp719:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r61, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r60, r3
.Ltmp720:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp721:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp722:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r8, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r3, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38000, r3
	addc_co_u32 r11, r4, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_137:                               ; %Flow424
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_138:                               ; %if.then875.9
.Ltmp723:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp724:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp725:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp726:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp727:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_140
; %bb.139:                              ; %if.then948.9
.Ltmp728:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r0_lo
.Ltmp729:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r59, r3
.Ltmp730:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp731:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r58, r3
.Ltmp732:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp733:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r57, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r56, r3
.Ltmp734:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp735:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp736:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r8, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r3, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38020, r3
	addc_co_u32 r11, r4, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_140:                               ; %Flow423
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_105
LBB3_141:                               ; %if.then875.10
.Ltmp737:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp738:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp739:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp740:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp741:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_143
; %bb.142:                              ; %if.then948.10
.Ltmp742:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r0_lo
.Ltmp743:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r55, r3
.Ltmp744:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp745:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r54, r3
.Ltmp746:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp747:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r53, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r52, r3
.Ltmp748:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp749:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp750:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r8, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r3, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38040, r3
	addc_co_u32 r11, r4, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_143:                               ; %Flow422
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_106
LBB3_144:                               ; %if.then875.11
.Ltmp751:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp752:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp753:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp754:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp755:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_146
; %bb.145:                              ; %if.then948.11
.Ltmp756:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r0_lo
.Ltmp757:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r51, r3
.Ltmp758:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp759:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r50, r3
.Ltmp760:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp761:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r49, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r48, r3
.Ltmp762:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp763:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp764:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r8, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r3, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38060, r3
	addc_co_u32 r11, r4, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_146:                               ; %Flow421
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_107
LBB3_147:                               ; %if.then875.12
.Ltmp765:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp766:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp767:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp768:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp769:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_149
; %bb.148:                              ; %if.then948.12
.Ltmp770:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r0_lo
.Ltmp771:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r47, r3
.Ltmp772:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp773:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r46, r3
.Ltmp774:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp775:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r45, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r44, r3
.Ltmp776:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp777:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp778:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r8, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r3, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38080, r3
	addc_co_u32 r11, r4, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_149:                               ; %Flow420
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_108
LBB3_150:                               ; %if.then875.13
.Ltmp779:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp780:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp781:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp782:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp783:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_152
; %bb.151:                              ; %if.then948.13
.Ltmp784:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r0_lo
.Ltmp785:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r43, r3
.Ltmp786:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp787:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r42, r3
.Ltmp788:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp789:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r41, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r40, r3
.Ltmp790:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp791:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp792:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r8, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r3, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x380a0, r3
	addc_co_u32 r11, r4, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_152:                               ; %Flow419
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_109
LBB3_153:                               ; %if.then875.14
.Ltmp793:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp794:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp795:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp796:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp797:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_155
; %bb.154:                              ; %if.then948.14
.Ltmp798:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r0_lo
.Ltmp799:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r4, r39, r3
.Ltmp800:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp801:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r5, r38, r3
.Ltmp802:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp803:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r4, 16, r4
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r4, r37, r3
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r3, r36, r3
.Ltmp804:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp805:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp806:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r4, 16, r4
	and_b32 r3, 0xffff, r3
	or_b32 r8, r4, r3
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r4, 1, r6
	add_co_u32 r3, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x380c0, r3
	addc_co_u32 r11, r4, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_155:                               ; %Flow418
	.loc	2 0 459                         ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:0:459
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 332 9 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:332:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_110
LBB3_156:                               ; %if.then875.15
.Ltmp807:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp808:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp809:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp810:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp811:
	.loc	2 344 11 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:344:11
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_110
; %bb.157:                              ; %if.then948.15
.Ltmp812:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r0_lo
.Ltmp813:
	.loc	2 340 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:340:24
	mul_f32 r3, r35, r0
.Ltmp814:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp815:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	mul_f32 r4, r34, r0
.Ltmp816:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp817:
	.loc	2 339 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:339:24
	shl_b32 r3, 16, r3
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 338 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:338:24
	mul_f32 r3, r33, r0
	.loc	2 337 24                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:337:24
	mul_f32 r0, r32, r0
.Ltmp818:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp819:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp820:
	.loc	2 343 42 is_stmt 1              ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	shl_b64 r6, 1, r6
	.loc	2 343 42                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:343:42
	or_b32 r4, r3, r0
	.loc	2 346 28                        ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:28
	add_co_u32 r0, r1, r6
	addc_co_u32 r1, r2, r7
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 346 459 is_stmt 0             ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:346:459
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 351 1 is_stmt 1               ; race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp:351:1
	snop 2
	endk
.Ltmp821:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 24
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 19408
; NumMTRegsForWarps/PEU: 190
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 2
	.protected	buf_dyn_shmem
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
	.byte	11                              ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x3bb DW_TAG_compile_unit
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
	.byte	2                               ; Abbrev [2] 0x4e:0x6 DW_TAG_subprogram
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x54:0x13b DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x65:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	51                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x79:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x8e:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	82                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa2:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb7:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	103                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xcb:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xe0:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	20                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xf4:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	162                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x100:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	161                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10c:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	160                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x118:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	159                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x124:0x35 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	187                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x130:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x13d:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x14a:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x159:0x35 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	188                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x165:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x172:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x17f:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x18f:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x195:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x19b:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1a1:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x1a7:0x21e DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	6                               ; Abbrev [6] 0x1b8:0xc DW_TAG_inlined_subroutine
	.long	399                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	222                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x1c4:0xc DW_TAG_inlined_subroutine
	.long	399                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	223                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1d0:0x14 DW_TAG_inlined_subroutine
	.long	405                             ; DW_AT_abstract_origin
	.quad	.Ltmp346                        ; DW_AT_low_pc
	.long	.Ltmp347-.Ltmp346               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	236                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1e4:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp347                        ; DW_AT_low_pc
	.long	.Ltmp348-.Ltmp347               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	237                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1f8:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp347                        ; DW_AT_low_pc
	.long	.Ltmp348-.Ltmp347               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x20d:0x14 DW_TAG_inlined_subroutine
	.long	405                             ; DW_AT_abstract_origin
	.quad	.Ltmp349                        ; DW_AT_low_pc
	.long	.Ltmp350-.Ltmp349               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	255                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x221:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp350                        ; DW_AT_low_pc
	.long	.Ltmp351-.Ltmp350               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	256                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x236:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp350                        ; DW_AT_low_pc
	.long	.Ltmp351-.Ltmp350               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x24b:0xd DW_TAG_inlined_subroutine
	.long	399                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	259                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x258:0x15 DW_TAG_inlined_subroutine
	.long	405                             ; DW_AT_abstract_origin
	.quad	.Ltmp360                        ; DW_AT_low_pc
	.long	.Ltmp361-.Ltmp360               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	279                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x26d:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp361                        ; DW_AT_low_pc
	.long	.Ltmp362-.Ltmp361               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	280                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x282:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp361                        ; DW_AT_low_pc
	.long	.Ltmp362-.Ltmp361               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x297:0xd DW_TAG_inlined_subroutine
	.long	399                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	282                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2a4:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp371                        ; DW_AT_low_pc
	.long	.Ltmp372-.Ltmp371               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	210                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2b8:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	320                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2c5:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2d2:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2df:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2ee:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	321                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2fb:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x308:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x315:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x324:0x1a DW_TAG_inlined_subroutine
	.long	417                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	315                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x331:0xc DW_TAG_inlined_subroutine
	.long	411                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x33e:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	341                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x34b:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x358:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x365:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x374:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	342                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x381:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x38e:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x39b:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3aa:0x1a DW_TAG_inlined_subroutine
	.long	417                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	336                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x3b7:0xc DW_TAG_inlined_subroutine
	.long	411                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
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
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges35:
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v016_step2_async_revalidation_sc-16g/codegen/v012d_async_step2/v012d_async_step2_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=188
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=209
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=219
.Linfo_string5:
	.asciz	"min"                           ; string offset=233
.Linfo_string6:
	.asciz	"exp2f"                         ; string offset=237
.Linfo_string7:
	.asciz	"__float2half_rn"               ; string offset=243
.Linfo_string8:
	.asciz	"__floats2half2_rn"             ; string offset=259
.Linfo_string9:
	.asciz	"__float22half2_rn"             ; string offset=277
.Linfo_string10:
	.asciz	"memcpy_async<16, false>"       ; string offset=295
.Linfo_string11:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=319
.Linfo_string12:
	.asciz	"__half2float"                  ; string offset=414
.Linfo_string13:
	.asciz	"operator float"                ; string offset=427
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=442
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=456
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
      - .arg_attribute:  is_constant
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
    .mtreg_count:    190
    .name:           kernel_kernel_1
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    28
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
	.section	.debug_line
.Lline_table_start0:
