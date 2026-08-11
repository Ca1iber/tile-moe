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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 19 23 prologue_end            ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:19:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s8, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r6, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	shr_b32 r19, 3, r1
	and_b32 r20, r6, 56
	.loc	2 34 3                          ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:34:3
	shl_add_u32 r2, 4, r1, 0
	shr_b32 r10, 6, r1
	mul_u24 r10, 0x38000, r10
	and_b32 r15, r6, 32
	.loc	2 19 23                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:19:23
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 20 24                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:20:24
	sshl_b64 s16, 2, s6
	sadd_co_u32 s0, s22, s16
	saddc_co_u32 s1, s23, s17
	.loc	2 21 38                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:21:38
	sshl_b32 s2, 7, s5
	.loc	2 21 47 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:21:47
	sadd_co_u32 s18, s18, s16
	saddc_co_u32 s19, s19, s17
	.loc	2 21 79                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:21:79
	sadd_co_u32 s16, s20, s16
	.loc	2 21 47                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:21:47
	ldu_b32 s3, s18, 0x0
	.loc	2 20 24 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:20:24
	ldu_b32 s1, s0, 0x0
	.loc	2 21 79                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:21:79
	saddc_co_u32 s17, s21, s17
	ldu_b32 s0, s16, 0x0
	smul_i32 s7, 0x70000, s4
	smov_b32 s18, 0x1c00
	mov_b32 r0, s7
	mad_u24 r0, r19, s18, r0
	.loc	2 22 54                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:22:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	smul_i32 s5, 0xe00000, s6
	.loc	2 21 45                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:21:45
	sadd_co_i32 s2, s3, s2
	or_b32 r0, r0, r20
	add_u32 r0, r0, s5
	.loc	2 21 77 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:21:77
	ssub_co_i32 s6, s2, s0
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r2
.Ltmp6:
	.loc	2 35 163                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:35:163
	mad_i32 r4, r0, 2, s10
.Ltmp7:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s19, md
.Ltmp8:
	.loc	2 35 301                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:35:301
	add_u32 r7, 0x38000, r0
	.loc	2 39 170                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:39:170
	mad_i32 r8, r0, 2, s12
.Ltmp9:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
	smov_b32 s2, 0x1e0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp10:
	.loc	2 35 163                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:35:163
	mad_i32 r4, r7, 2, s10
.Ltmp11:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	shr_b32 r13, 5, r1
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp12:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp13:
	.loc	2 35 69 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:35:69
	add_u32 r3, 0x1000, r2
.Ltmp14:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp15:
	.loc	2 39 170                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:39:170
	mad_i32 r8, r7, 2, s12
.Ltmp16:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	shr_b32 r7, 1, r1
	ldg_b128 r0, r8, 0x0 bsm
	and_b32 r8, r1, 15
	and_or_b32 r0, r7, s2, r8
	mad_u24 r21, r8, s18, r10
	and_b32 r8, 0x1fc0, r6
	and_b32 r6, r6, 16
	add_shl_u32 r7, r13, r7, 4
	add_u32 r6, r6, r1
	add_u32 r10, r15, r1
	and_b32 r11, r6, 16
	mul_u24 r6, r1, 9
	and_b32 r13, r7, 16
	shr_b32 r7, 4, r1
	add_u32 r9, s6, r0
	sadd_co_u32 s16, 0x80, s10
	and_b32 r12, r6, 8
	shl_b32 r6, 6, r1
	add_shl_u32 r16, r7, r1, 3
	add_u32 r7, r9, 16
	and_b32 r10, r10, 32
	and_b32 r14, 0x3c0, r6
	saddc_co_u32 s17, s11, 0
	and_or_b32 r18, r16, 8, r13
	cmp_gt_u32 s2, 0x2380, r7
	or_b32 r7, r10, r12
	sadd_co_u32 s12, 0x80, s12
	or3_b32 r7, r7, r8, r11
	or_b32 r8, r8, r10
	or_b32 r17, 0x400, r14
	or_b32 r22, r18, r15
	or_b32 r23, 0x800, r14
	or_b32 r24, 0xc00, r14
	saddc_co_u32 s13, s13, 0
	or_b32 r13, r22, r23
	or3_b32 r8, r8, r11, r12
	or_b32 r12, r22, r17
	or_b32 r16, r18, r14
	or_b32 r14, r22, r24
	xor_b32 r22, r15, 32
.Ltmp17:
	.loc	2 41 3                          ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:41:3
	sadd_co_i32 s5, s5, s7
	or_b32 r11, r16, r15
	or_b32 r15, r16, r22
	or3_b32 r16, r18, r17, r22
	or3_b32 r17, r18, r23, r22
	or3_b32 r18, r18, r24, r22
	mov_b32 r22, s5
	mad_u24 r19, r19, s18, r22
	or_b32 r19, r19, r20
	mov_b32 r20, 0x3800
	smul_i32 s5, 0x3800, s6
	mul_hi_i32 r23, s6, r20
	mov_b32 r20, s5
	and_or_b32 r22, r1, 48, r20
	mad_u32 r22, r21, 2, r22
	cmp_gt_u32 s10, 0x2380, r9
	mov_b32 r10, 0x1000
	add_co_u32 r20, s8, r22
	mov_b32 r21, s9
	addc_co_u32 r21, r21, r23
	shl_b32 r9, 1, r7
	sadd_co_i32 s20, 0x4000, 0
	shl_add_u32 r10, 1, r8, r10
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r22, 0, 0
	add_u32 r7, s20, r9
	add_u32 r8, s20, r10
	sadd_co_i32 s20, 0x6000, 0
	shl_b64 r24, 0, 0
	shl_b64 r30, 0, r22
	shl_b64 r38, 0, r22
	shl_b64 r46, 0, r22
	shl_b64 r54, 0, r22
	shl_b64 r62, 0, r22
	shl_b64 r70, 0, r22
	shl_b64 r78, 0, r22
	shl_b64 r26, 0, r22
	shl_b64 r34, 0, r22
	shl_b64 r42, 0, r22
	shl_b64 r50, 0, r22
	shl_b64 r58, 0, r22
	shl_b64 r66, 0, r22
	shl_b64 r74, 0, r22
	shl_b64 r82, 0, r22
	.loc	2 38 3 is_stmt 1                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:38:3
	add_u32 r4, 0x2000, r2
	.loc	2 39 67                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:39:67
	add_u32 r5, 0x3000, r2
	shr_b32 r6, 2, r1
	add_u32 r9, s20, r9
	add_u32 r10, s20, r10
	shl_add_u32 r11, 1, r11, 0
	shl_add_u32 r12, 1, r12, 0
	shl_add_u32 r13, 1, r13, 0
	shl_add_u32 r14, 1, r14, 0
	shl_add_u32 r15, 1, r15, 0
	shl_add_u32 r16, 1, r16, 0
	shl_add_u32 r17, 1, r17, 0
	shl_add_u32 r18, 1, r18, 0
	smov_b64 s8, 0
	shl_b64 r32, 0, r24
	shl_b64 r40, 0, r24
	shl_b64 r48, 0, r24
	shl_b64 r56, 0, r24
	shl_b64 r64, 0, r24
	shl_b64 r72, 0, r24
	shl_b64 r80, 0, r24
	shl_b64 r28, 0, r24
	shl_b64 r36, 0, r24
	shl_b64 r44, 0, r24
	shl_b64 r52, 0, r24
	shl_b64 r60, 0, r24
	shl_b64 r68, 0, r24
	shl_b64 r76, 0, r24
	shl_b64 r84, 0, r24
.Ltmp18:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s19
	bra LBB2_2
.Ltmp19:
	.p2align	5
LBB2_1:                                 ; %if.end364
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	add_i32 r102, 0x4000, r11
	add_i32 r103, 0x4000, r12
	.loc	2 41 21                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:41:21
	sadd_co_u32 s8, 0x80, s8
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	lds_b128 r104, r102, 0x0
	lds_b128 r108, r103, 0x0
	add_i32 r102, 0x4000, r13
	add_i32 r103, 0x4000, r14
	.loc	2 41 21                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:41:21
	saddc_co_u32 s9, s9, 0
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	lds_b128 r112, r102, 0x0
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r104, r94, r78
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	add_i32 r102, 0x6000, r11
	.loc	2 41 21                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:41:21
	scmp_eq_u64 0x3800, s8
	add_u32 r19, r19, 64
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	mma_16x16x16f16 r46, r104, r98, r46
	mma_16x16x16f16 r78, r106, r96, r78
	mma_16x16x16f16 r46, r106, r100, r46
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	lds_b128 r104, r103, 0x0
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	add_i32 r103, 0x6000, r14
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r108, r94, r70
	mma_16x16x16f16 r38, r108, r98, r38
	mma_16x16x16f16 r70, r110, r96, r70
	mma_16x16x16f16 r38, r110, r100, r38
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r108, r102, 0x0
	add_i32 r102, 0x6000, r12
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r112, r94, r62
	mma_16x16x16f16 r30, r112, r98, r30
	mma_16x16x16f16 r62, r114, r96, r62
	mma_16x16x16f16 r30, r114, r100, r30
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r112, r102, 0x0
	add_i32 r102, 0x6000, r13
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r54, r104, r94, r54
	mma_16x16x16f16 r22, r104, r98, r22
	mma_16x16x16f16 r54, r106, r96, r54
	mma_16x16x16f16 r22, r106, r100, r22
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r104, r102, 0x0
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	add_i32 r102, 0x4000, r15
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r108, r94, r82
	mma_16x16x16f16 r50, r108, r98, r50
	mma_16x16x16f16 r82, r110, r96, r82
	mma_16x16x16f16 r50, r110, r100, r50
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r108, r103, 0x0
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r112, r94, r74
	mma_16x16x16f16 r42, r112, r98, r42
	mma_16x16x16f16 r74, r114, r96, r74
	mma_16x16x16f16 r42, r114, r100, r42
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	lds_b128 r112, r102, 0x0
	add_i32 r102, 0x4000, r16
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r104, r94, r66
	mma_16x16x16f16 r34, r104, r98, r34
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	lds_b128 r102, r102, 0x0
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	mma_16x16x16f16 r66, r106, r96, r66
	mma_16x16x16f16 r34, r106, r100, r34
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r108, r94, r58
	mma_16x16x16f16 r26, r108, r98, r26
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	add_i32 r94, 0x4000, r17
	add_i32 r95, 0x4000, r18
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	mma_16x16x16f16 r58, r110, r96, r58
	.loc	2 77 50                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:77:50
	lds_b128 r96, r94, 0x0
	lds_b128 r106, r95, 0x0
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	add_i32 r94, 0x6000, r15
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	mma_16x16x16f16 r26, r110, r100, r26
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	add_i32 r95, 0x6000, r18
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	arrive bsmcnt(3)
	mma_16x16x16f16 r78, r112, r86, r78
	mma_16x16x16f16 r46, r112, r90, r46
	mma_16x16x16f16 r78, r114, r88, r78
	mma_16x16x16f16 r46, r114, r92, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r102, r86, r70
	mma_16x16x16f16 r38, r102, r90, r38
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r100, r94, 0x0
	add_i32 r94, 0x6000, r16
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	mma_16x16x16f16 r70, r104, r88, r70
	mma_16x16x16f16 r38, r104, r92, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r96, r86, r62
	mma_16x16x16f16 r30, r96, r90, r30
	mma_16x16x16f16 r62, r98, r88, r62
	mma_16x16x16f16 r30, r98, r92, r30
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r96, r94, 0x0
	add_i32 r94, 0x6000, r17
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r54, r106, r86, r54
	mma_16x16x16f16 r22, r106, r90, r22
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r104, r94, 0x0
	.loc	2 83 64                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:83:64
	mma_16x16x16f16 r54, r108, r88, r54
	mma_16x16x16f16 r22, r108, r92, r22
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r100, r86, r82
	mma_16x16x16f16 r50, r100, r90, r50
	mma_16x16x16f16 r82, r102, r88, r82
	mma_16x16x16f16 r50, r102, r92, r50
	.loc	2 91 52                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:91:52
	lds_b128 r100, r95, 0x0
	.loc	2 97 63                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:97:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r96, r86, r74
	mma_16x16x16f16 r42, r96, r90, r42
	mma_16x16x16f16 r74, r98, r88, r74
	mma_16x16x16f16 r42, r98, r92, r42
	arrive bsmcnt(1)
	mma_16x16x16f16 r66, r104, r86, r66
	mma_16x16x16f16 r34, r104, r90, r34
	mma_16x16x16f16 r66, r106, r88, r66
	mma_16x16x16f16 r34, r106, r92, r34
	arrive bsmcnt(0)
	mma_16x16x16f16 r58, r100, r86, r58
	mma_16x16x16f16 r26, r100, r90, r26
	mma_16x16x16f16 r58, r102, r88, r58
	mma_16x16x16f16 r26, r102, r92, r26
	.loc	2 41 3                          ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:41:3
	bra_smsks LBB2_12
LBB2_2:                                 ; %for.cond108.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r94, 0, 0
	shl_b64 r96, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s18, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r88, r20, s8
	mov_b32 r86, s9
	addc_co_u32 r89, r21, r86
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:47:17
	snop 1
	ldg_b128 r94, r88, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r98, 0, 0
	shl_b64 r100, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r86, r20, s8
	mov_b32 r87, s9
	addc_co_u32 r87, r21, r87
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:47:17
	add_co_u32 r86, 0x38000, r86
	addc_co_u32 r87, r87, 0
	snop 1
	ldg_b128 r98, r86, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r86, 0, 0
	shl_b64 r88, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s18, s10
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r88, r20, s8
	mov_b32 r86, s9
	addc_co_u32 r89, r21, r86
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:47:17
	snop 1
	ldg_b128 r86, r88, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r90, 0, 0
	shl_b64 r92, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB2_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r90, r20, s8
	mov_b32 r91, s9
	addc_co_u32 r91, r21, r91
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:47:17
	add_co_u32 r90, 0x38040, r90
	addc_co_u32 r91, r91, 0
	snop 1
	ldg_b128 r90, r90, 0x0
LBB2_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
.Ltmp20:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(6)
	barrier
.Ltmp21:
	.loc	3 3834 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(4)
	barrier
.Ltmp22:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp23:
	.loc	2 58 354                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:58:354
	lds_b128 r102, r2, 0x0
	arrive bsmcnt(0)
	sts_b128 r7, 0x0, r102
	lds_b128 r102, r3, 0x0
	arrive bsmcnt(0)
	sts_b128 r8, 0x0, r102
	.loc	2 62 355                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:62:355
	lds_b128 r102, r4, 0x0
	arrive bsmcnt(0)
	sts_b128 r9, 0x0, r102
	lds_b128 r102, r5, 0x0
	arrive bsmcnt(0)
	sts_b128 r10, 0x0, r102
.Ltmp24:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp25:
	.loc	2 65 11                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:65:11
	scmp_eq_u64 0x3780, s8
	.loc	2 65 9 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:65:9
	snop 0
	bra_smsks LBB2_1
; %bb.11:                               ; %for.cond295.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 68 167 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:68:167
	mad_i32 r102, r19, 2, s16
.Ltmp26:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r2
	smov_b32 s5, md
	snop 2
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r102, 0x0 bsm
.Ltmp27:
	.loc	2 68 167                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:68:167
	add_u32 r102, 0x38000, r19
	mad_i32 r104, r102, 2, s16
.Ltmp28:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp29:
	.loc	2 72 174                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:72:174
	mad_i32 r102, r102, 2, s12
.Ltmp30:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r104, 0x0 bsm
.Ltmp31:
	.loc	2 72 174                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:72:174
	mad_i32 r104, r19, 2, s12
.Ltmp32:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r104, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r102, 0x0 bsm
.Ltmp33:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
	bra LBB2_1
.Ltmp34:
LBB2_12:                                ; %for.cond551.preheader
	.loc	3 0 10                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b32 r2, 10, r1
	shl_b32 r1, 11, r1
	and_b32 r2, 0xf0000, r2
	mov_b32 r3, 0
	.loc	2 22 93 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:22:93
	sadd_co_i32 s0, s1, s0
	and_b32 r1, 0x7800, r1
	mad_u32 r2, s4, 64, r2
	add_co_u32 r2, r2, r1
.Ltmp35:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp36:
	.loc	2 148 95                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:95
	cmp_gt_i32 s4, s0, r0
	addc_co_u32 r3, r3, 0
	mov_b32 r1, 0x800
	mad_i32 r4, s6, r1, r2
	and_b32 r1, r6, 12
	.loc	2 107 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:107:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	addc_co_u32 r2, r2, 0
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	sand_b64 s4, s4, s10
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_22
; %bb.13:                               ; %if.end756
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_23
LBB2_14:                                ; %if.end756.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_24
LBB2_15:                                ; %if.end756.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_17
LBB2_16:                                ; %if.then688.3
	.loc	2 130 27 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r3, 0xbfb8aa3b, r57
.Ltmp37:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s4
	fmka_f32 r9, r57, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s4
	exp_f32 r9, r9
.Ltmp38:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r9, 0xbfb8aa3b, r56
.Ltmp39:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp40:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r7, r57, r7
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r7, r7, r61
.Ltmp41:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s4
	fmka_f32 r10, r56, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s4
	exp_f32 r10, r10
.Ltmp42:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r10, 0xbfb8aa3b, r55
.Ltmp43:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp44:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r9, r56, r9
.Ltmp45:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s4
	fmka_f32 r11, r55, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s4
	exp_f32 r11, r11
.Ltmp46:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r11, 0xbfb8aa3b, r54
.Ltmp47:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r11
.Ltmp48:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r10, r55, r10
.Ltmp49:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s4
	fmka_f32 r8, r54, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s4
	exp_f32 r8, r8
.Ltmp50:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r3, r54, r3
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r3, r3, r58
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r6, r10, r59
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r8, r9, r60
.Ltmp51:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp52:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp53:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp54:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp55:
	.loc	2 161 313 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:313
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	add_co_u32 r10, r1, r10
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r11, r2, r11
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x60, r6 devc
LBB2_17:                                ; %if.end756.3
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s6
	.loc	2 148 66 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:66
	or_b32 r0, r0, 16
	.loc	2 148 95 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	snop 3
	sand_b64 s0, s0, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_25
; %bb.18:                               ; %if.end756.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_26
LBB2_19:                                ; %if.end756.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_27
LBB2_20:                                ; %if.end756.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 148 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_28
LBB2_21:                                ; %if.end756.7
	.loc	2 166 1 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:166:1
	snop 1
	endk
LBB2_22:                                ; %if.then688
	.loc	2 130 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r3, 0xbfb8aa3b, r81
.Ltmp56:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r81, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp57:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r9, 0xbfb8aa3b, r80
.Ltmp58:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp59:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r7, r81, r7
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r7, r7, r85
.Ltmp60:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r80, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp61:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r10, 0xbfb8aa3b, r79
.Ltmp62:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp63:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r9, r80, r9
.Ltmp64:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r79, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp65:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r11, 0xbfb8aa3b, r78
.Ltmp66:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp67:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r10, r79, r10
.Ltmp68:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r78, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp69:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r3, r78, r3
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r3, r3, r82
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r6, r10, r83
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r8, r9, r84
.Ltmp70:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp71:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp72:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp73:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp74:
	.loc	2 161 31 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	add_co_u32 r10, r1, r10
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r11, r2, r11
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 148 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_14
LBB2_23:                                ; %if.then688.1
	.loc	2 130 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r3, 0xbfb8aa3b, r73
.Ltmp75:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r73, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp76:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r9, 0xbfb8aa3b, r72
.Ltmp77:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp78:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r7, r73, r7
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r7, r7, r77
.Ltmp79:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r72, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp80:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r10, 0xbfb8aa3b, r71
.Ltmp81:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp82:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r9, r72, r9
.Ltmp83:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r71, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp84:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r11, 0xbfb8aa3b, r70
.Ltmp85:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp86:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r10, r71, r10
.Ltmp87:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r70, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp88:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r3, r70, r3
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r3, r3, r74
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r6, r10, r75
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r8, r9, r76
.Ltmp89:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp90:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp91:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp92:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp93:
	.loc	2 161 313 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:313
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	add_co_u32 r10, r1, r10
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r11, r2, r11
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x20, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 148 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_15
LBB2_24:                                ; %if.then688.2
	.loc	2 130 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r3, 0xbfb8aa3b, r65
.Ltmp94:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r65, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp95:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r9, 0xbfb8aa3b, r64
.Ltmp96:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp97:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r7, r65, r7
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r7, r7, r69
.Ltmp98:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r64, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp99:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r10, 0xbfb8aa3b, r63
.Ltmp100:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp101:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r9, r64, r9
.Ltmp102:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r63, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp103:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r11, 0xbfb8aa3b, r62
.Ltmp104:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp105:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r10, r63, r10
.Ltmp106:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r62, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp107:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r3, r62, r3
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r3, r3, r66
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r6, r10, r67
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r8, r9, r68
.Ltmp108:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp109:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp110:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp111:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp112:
	.loc	2 161 313 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:313
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	add_co_u32 r10, r1, r10
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r11, r2, r11
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x40, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 148 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_16
	bra LBB2_17
LBB2_25:                                ; %if.then688.4
	.loc	2 130 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r0, 0xbfb8aa3b, r49
.Ltmp113:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r49, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp114:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r8, 0xbfb8aa3b, r48
.Ltmp115:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp116:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r6, r49, r6
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r6, r6, r53
.Ltmp117:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r48, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp118:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r9, 0xbfb8aa3b, r47
.Ltmp119:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp120:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r8, r48, r8
.Ltmp121:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r47, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp122:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r10, 0xbfb8aa3b, r46
.Ltmp123:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp124:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r9, r47, r9
.Ltmp125:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r46, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp126:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r0, r46, r0
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r0, r0, r50
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r3, r9, r51
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r7, r8, r52
.Ltmp127:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp128:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp129:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp130:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp131:
	.loc	2 161 31 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10000, r6
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r11, r7, 0
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 148 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_19
LBB2_26:                                ; %if.then688.5
	.loc	2 130 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r0, 0xbfb8aa3b, r41
.Ltmp132:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r41, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp133:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r8, 0xbfb8aa3b, r40
.Ltmp134:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp135:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r6, r41, r6
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r6, r6, r45
.Ltmp136:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r40, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp137:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r9, 0xbfb8aa3b, r39
.Ltmp138:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp139:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r8, r40, r8
.Ltmp140:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r39, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp141:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r10, 0xbfb8aa3b, r38
.Ltmp142:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp143:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r9, r39, r9
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r38, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp145:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r0, r38, r0
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r0, r0, r42
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r3, r9, r43
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r7, r8, r44
.Ltmp146:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp147:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp148:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp149:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp150:
	.loc	2 161 31 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10020, r6
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r11, r7, 0
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 148 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_20
LBB2_27:                                ; %if.then688.6
	.loc	2 130 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r0, 0xbfb8aa3b, r33
.Ltmp151:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r33, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp152:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r8, 0xbfb8aa3b, r32
.Ltmp153:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp154:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r6, r33, r6
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r6, r6, r37
.Ltmp155:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r32, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp156:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r9, 0xbfb8aa3b, r31
.Ltmp157:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp158:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r8, r32, r8
.Ltmp159:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r31, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp160:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r10, 0xbfb8aa3b, r30
.Ltmp161:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp162:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r9, r31, r9
.Ltmp163:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r30, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp164:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r0, r30, r0
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r0, r0, r34
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r3, r9, r35
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r7, r8, r36
.Ltmp165:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp166:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp167:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp168:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp169:
	.loc	2 161 31 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10040, r6
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r11, r7, 0
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 148 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:148:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_21
LBB2_28:                                ; %if.then688.7
	.loc	2 130 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:130:27
	mul_f32 r0, 0xbfb8aa3b, r25
.Ltmp170:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r7, 0, s0
	fmka_f32 r8, r25, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s0
	exp_f32 r8, r8
.Ltmp171:
	.loc	2 138 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:138:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
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
	.loc	2 129 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:129:27
	mul_f32 r8, 0xbfb8aa3b, r24
.Ltmp172:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp173:
	.loc	2 142 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:142:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s2
	.loc	2 146 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:146:20
	mul_f32 r6, r25, r6
	.loc	2 158 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:158:28
	mul_f32 r6, r6, r29
.Ltmp174:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s0
	fmka_f32 r9, r24, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
.Ltmp175:
	.loc	2 137 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:137:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
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
	.loc	2 128 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:128:27
	mul_f32 r9, 0xbfb8aa3b, r23
.Ltmp176:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r9
.Ltmp177:
	.loc	2 141 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:141:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	.loc	2 145 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:145:20
	mul_f32 r8, r24, r8
.Ltmp178:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s0
	fmka_f32 r10, r23, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
.Ltmp179:
	.loc	2 136 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:136:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
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
	.loc	2 127 27                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:127:27
	mul_f32 r10, 0xbfb8aa3b, r22
.Ltmp180:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r10
.Ltmp181:
	.loc	2 140 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:140:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	.loc	2 144 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:144:20
	mul_f32 r9, r23, r9
.Ltmp182:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s0
	fmka_f32 r7, r22, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s0
	exp_f32 r7, r7
.Ltmp183:
	.loc	2 135 26                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:135:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 139 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:139:24
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
	.loc	2 143 20                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:143:20
	mul_f32 r0, r22, r0
	.loc	2 155 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:155:28
	mul_f32 r0, r0, r26
	.loc	2 156 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:156:28
	mul_f32 r3, r9, r27
	.loc	2 157 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:157:28
	mul_f32 r7, r8, r28
.Ltmp184:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp185:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp186:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp187:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp188:
	.loc	2 161 31 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	snop 0
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
	addc_co_u32 r2, r2, r5
	add_co_u32 r4, 0x10060, r1
	.loc	2 161 444 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	shl_b32 r1, 16, r6
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	.loc	2 161 31                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:31
	addc_co_u32 r5, r2, 0
	.loc	2 161 444                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:161:444
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r4, 0x0, r2 devc
	.loc	2 166 1 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:166:1
	snop 2
	endk
.Ltmp189:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 15
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
; codeLenInByte = 12048
; NumMTRegsForWarps/PEU: 116
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 4
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 168 0                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:168:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp190:
	.loc	2 176 23 prologue_end           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:176:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s8, s0, 0x20
	and_b32 r2, 0x3ff, r0
	shl_b32 r4, 3, r2
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	shl_b32 r0, 8, r2
	and_b32 r29, 0x3f800, r0
	and_b32 r30, r4, 56
	.loc	2 186 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:186:3
	shl_add_u32 r5, 4, r2, 0
	shl_b32 r11, 11, r2
	and_b32 r21, r4, 32
	.loc	2 176 23                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:176:23
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 177 24                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:177:24
	sshl_b64 s16, 2, s6
	sadd_co_u32 s0, s22, s16
	saddc_co_u32 s1, s23, s17
	.loc	2 178 38                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:178:38
	sshl_b32 s2, 7, s5
	.loc	2 178 47 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:178:47
	sadd_co_u32 s18, s18, s16
	saddc_co_u32 s19, s19, s17
	.loc	2 178 79                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:178:79
	sadd_co_u32 s16, s20, s16
	.loc	2 178 47                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:178:47
	ldu_b32 s3, s18, 0x0
	.loc	2 177 24 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:177:24
	ldu_b32 s1, s0, 0x0
	.loc	2 178 79                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:178:79
	saddc_co_u32 s17, s21, s17
	ldu_b32 s0, s16, 0x0
	sshl_b32 s18, 18, s4
	smul_i32 s5, 0xe00000, s6
	or3_b32 r0, r29, s18, r30
	add_u32 r0, r0, s5
	.loc	2 179 54                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:179:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 178 45                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:178:45
	sadd_co_i32 s2, s3, s2
	.loc	2 178 77 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:178:77
	ssub_co_i32 s16, s2, s0
	.loc	2 187 302 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:187:302
	add_u32 r1, 0x10000, r0
.Ltmp191:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r5
.Ltmp192:
	.loc	2 187 165                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:187:165
	mad_i32 r8, r1, 2, s10
	mad_i32 r6, r0, 2, s10
.Ltmp193:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s19, md
.Ltmp194:
	.loc	2 187 302                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:187:302
	add_u32 r1, 0x20000, r0
.Ltmp195:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
.Ltmp196:
	.loc	2 187 302                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:187:302
	add_u32 r0, 0x30000, r0
.Ltmp197:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	and_b32 r32, 0x7800, r11
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp198:
	.loc	2 187 165                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:187:165
	mad_i32 r8, r1, 2, s10
.Ltmp199:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp200:
	.loc	2 187 165                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:187:165
	mad_i32 r0, r0, 2, s10
.Ltmp201:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	shr_b32 r9, 1, r2
	ldg_b128 r0, r0, 0x0 bsm
	and_b32 r11, 0x1fc0, r4
	and_b32 r4, r4, 16
	and_b32 r1, 0x1e0, r9
	and_b32 r3, r2, 15
	sashr_i32 s17, 31, s16
	shr_b32 r15, 5, r2
	add_shl_u32 r9, r15, r9, 4
	sadd_co_u32 s10, 0x80, s10
	or_b32 r0, r1, r3
	add_u32 r4, r4, r2
	add_u32 r12, r21, r2
	saddc_co_u32 s11, s11, 0
	add_u32 r10, s16, r0
	and_b32 r13, r4, 16
	mul_u24 r4, r2, 9
	and_b32 r15, r9, 16
	shr_b32 r9, 4, r2
.Ltmp202:
	.loc	2 189 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:189:3
	sadd_co_i32 s5, s5, s18
	sadd_co_i32 s20, 0x4000, 0
	add_shl_u32 r16, r9, r2, 3
	and_b32 r14, r4, 8
	shl_b32 r4, 6, r2
	add_u32 r9, r10, 16
	or3_b32 r29, s5, r29, r30
	shl_b32 r31, 10, r2
	and_b32 r12, r12, 32
	cmp_gt_u32 s6, 0x2380, r10
	mov_b32 r10, s20
	sshl_b64 s20, 12, s16
	smov_b32 s5, 0xf0000
	and_b32 r20, 0x3c0, r4
	mov_b32 r30, s20
	and_or_b32 r31, r31, s5, r32
	and_or_b32 r28, r16, 8, r15
	cmp_gt_u32 s2, 0x2380, r9
	or_b32 r9, r12, r14
	or3_b32 r9, r9, r11, r13
	or_b32 r11, r11, r12
	or_b32 r23, 0x400, r20
	or_b32 r24, r28, r21
	or_b32 r25, 0x800, r20
	or_b32 r26, 0xc00, r20
	or_b32 r27, 0x1000, r20
	or_b32 r33, 0x1400, r20
	or_b32 r34, 0x1800, r20
	or_b32 r35, 0x1c00, r20
	xor_b32 r36, r21, 32
	and_or_b32 r30, r2, 48, r30
	shl_b32 r32, 1, r31
	or_b32 r15, r24, r25
	or_b32 r16, r24, r26
	or_b32 r17, r24, r27
	or_b32 r18, r24, r33
	or_b32 r19, r24, r34
	or3_b32 r11, r11, r13, r14
	or_b32 r14, r24, r23
	add_co_u32 r30, r30, r32
	.loc	2 186 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:186:3
	mov_b32 r37, 0
	or_b32 r22, r28, r20
	or_b32 r20, r24, r35
	or3_b32 r24, r28, r26, r36
	or3_b32 r26, r28, r33, r36
	.loc	2 189 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:189:3
	mov_b32 r33, s21
	addc_co_u32 r31, r33, r37
	add_co_u32 r30, s14, r30
	mov_b32 r32, s15
	addc_co_u32 r31, r32, r31
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r32, 0, 0
	or_b32 r13, r22, r21
	or_b32 r21, r22, r36
	or3_b32 r22, r28, r23, r36
	or3_b32 r23, r28, r25, r36
	or3_b32 r25, r28, r27, r36
	or3_b32 r27, r28, r34, r36
	or3_b32 r28, r28, r35, r36
	shl_b64 r34, 0, 0
	shl_add_u32 r12, 1, r11, r10
	shl_b64 r36, 0, r32
	shl_b64 r40, 0, r32
	shl_b64 r44, 0, r32
	shl_b64 r48, 0, r32
	shl_b64 r52, 0, r32
	shl_b64 r56, 0, r32
	shl_b64 r60, 0, r32
	shl_b64 r64, 0, r32
	shl_b64 r68, 0, r32
	shl_b64 r72, 0, r32
	shl_b64 r76, 0, r32
	shl_b64 r80, 0, r32
	shl_b64 r84, 0, r32
	shl_b64 r88, 0, r32
	shl_b64 r92, 0, r32
	.loc	2 187 71 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:187:71
	add_u32 r6, 0x1000, r5
	add_u32 r7, 0x2000, r5
	add_u32 r8, 0x3000, r5
	shr_b32 r4, 2, r2
	shl_add_u32 r9, 1, r9, r10
	add_u32 r10, 0x1000, r12
	add_u32 r11, 0x2000, r12
	add_u32 r12, 0x3000, r12
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
	shl_add_u32 r28, 1, r28, 0
	smov_b64 s14, 0
	shl_b64 r38, 0, r34
	shl_b64 r42, 0, r34
	shl_b64 r46, 0, r34
	shl_b64 r50, 0, r34
	shl_b64 r54, 0, r34
	shl_b64 r58, 0, r34
	shl_b64 r62, 0, r34
	shl_b64 r66, 0, r34
	shl_b64 r70, 0, r34
	shl_b64 r74, 0, r34
	shl_b64 r78, 0, r34
	shl_b64 r82, 0, r34
	shl_b64 r86, 0, r34
	shl_b64 r90, 0, r34
	shl_b64 r94, 0, r34
.Ltmp203:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s19
	bra LBB3_2
.Ltmp204:
	.p2align	5
LBB3_1:                                 ; %if.end230
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	add_i32 r112, 0x4000, r13
	add_i32 r113, 0x4000, r14
	.loc	2 189 21                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:189:21
	sadd_co_u32 s14, 0x80, s14
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r114, r112, 0x0
	lds_b128 r118, r113, 0x0
	add_i32 r112, 0x4000, r15
	add_i32 r113, 0x4000, r16
	.loc	2 189 21                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:189:21
	saddc_co_u32 s15, s15, 0
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r122, r112, 0x0
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r114, r104, r92
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	add_i32 r112, 0x4000, r17
	.loc	2 189 21                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:189:21
	scmp_eq_u64 0x1000, s14
	add_u32 r29, r29, 64
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	mma_16x16x16f16 r60, r114, r108, r60
	mma_16x16x16f16 r92, r116, r106, r92
	mma_16x16x16f16 r60, r116, r110, r60
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r114, r113, 0x0
	add_i32 r113, 0x4000, r18
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r118, r104, r88
	mma_16x16x16f16 r56, r118, r108, r56
	mma_16x16x16f16 r88, r120, r106, r88
	mma_16x16x16f16 r56, r120, r110, r56
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r118, r112, 0x0
	add_i32 r112, 0x4000, r19
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r122, r104, r84
	mma_16x16x16f16 r52, r122, r108, r52
	mma_16x16x16f16 r84, r124, r106, r84
	mma_16x16x16f16 r52, r124, r110, r52
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r122, r113, 0x0
	add_i32 r113, 0x4000, r20
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r114, r104, r80
	mma_16x16x16f16 r48, r114, r108, r48
	mma_16x16x16f16 r80, r116, r106, r80
	mma_16x16x16f16 r48, r116, r110, r48
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r114, r112, 0x0
	add_i32 r112, 0x4000, r21
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r118, r104, r76
	mma_16x16x16f16 r44, r118, r108, r44
	mma_16x16x16f16 r76, r120, r106, r76
	mma_16x16x16f16 r44, r120, r110, r44
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r118, r113, 0x0
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r122, r104, r72
	mma_16x16x16f16 r40, r122, r108, r40
	mma_16x16x16f16 r72, r124, r106, r72
	mma_16x16x16f16 r40, r124, r110, r40
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r122, r112, 0x0
	add_i32 r112, 0x4000, r22
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r114, r104, r68
	mma_16x16x16f16 r36, r114, r108, r36
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r112, r112, 0x0
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	mma_16x16x16f16 r68, r116, r106, r68
	mma_16x16x16f16 r36, r116, r110, r36
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r118, r104, r64
	mma_16x16x16f16 r32, r118, r108, r32
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	add_i32 r104, 0x4000, r23
	add_i32 r105, 0x4000, r24
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	mma_16x16x16f16 r64, r120, r106, r64
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r106, r104, 0x0
	lds_b128 r116, r105, 0x0
	add_i32 r104, 0x4000, r25
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	mma_16x16x16f16 r32, r120, r110, r32
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	add_i32 r105, 0x4000, r26
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r122, r96, r92
	mma_16x16x16f16 r60, r122, r100, r60
	mma_16x16x16f16 r92, r124, r98, r92
	mma_16x16x16f16 r60, r124, r102, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r112, r96, r88
	mma_16x16x16f16 r56, r112, r100, r56
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r110, r104, 0x0
	add_i32 r104, 0x4000, r27
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	mma_16x16x16f16 r88, r114, r98, r88
	mma_16x16x16f16 r56, r114, r102, r56
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r106, r96, r84
	mma_16x16x16f16 r52, r106, r100, r52
	mma_16x16x16f16 r84, r108, r98, r84
	mma_16x16x16f16 r52, r108, r102, r52
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r106, r105, 0x0
	add_i32 r105, 0x4000, r28
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r116, r96, r80
	mma_16x16x16f16 r48, r116, r100, r48
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r114, r104, 0x0
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	mma_16x16x16f16 r80, r118, r98, r80
	mma_16x16x16f16 r48, r118, r102, r48
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r110, r96, r76
	mma_16x16x16f16 r44, r110, r100, r44
	mma_16x16x16f16 r76, r112, r98, r76
	mma_16x16x16f16 r44, r112, r102, r44
	.loc	2 216 48                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:216:48
	lds_b128 r110, r105, 0x0
	.loc	2 222 59                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:222:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r106, r96, r72
	mma_16x16x16f16 r40, r106, r100, r40
	mma_16x16x16f16 r72, r108, r98, r72
	mma_16x16x16f16 r40, r108, r102, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r114, r96, r68
	mma_16x16x16f16 r36, r114, r100, r36
	mma_16x16x16f16 r68, r116, r98, r68
	mma_16x16x16f16 r36, r116, r102, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r110, r96, r64
	mma_16x16x16f16 r32, r110, r100, r32
	mma_16x16x16f16 r64, r112, r98, r64
	mma_16x16x16f16 r32, r112, r102, r32
	.loc	2 189 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:189:3
	bra_smsks LBB3_12
LBB3_2:                                 ; %for.cond61.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r104, 0, 0
	shl_b64 r106, 0, 0
	.loc	2 194 117 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:194:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r98, r30, s14
	mov_b32 r96, s15
	addc_co_u32 r99, r31, r96
	.loc	2 195 17 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:195:17
	snop 1
	ldg_b128 r104, r98, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r108, 0, 0
	shl_b64 r110, 0, 0
	.loc	2 194 117 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:194:117
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r96, r30, s14
	mov_b32 r97, s15
	addc_co_u32 r97, r31, r97
	.loc	2 195 17 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:195:17
	add_co_u32 r96, 0x10000, r96
	addc_co_u32 r97, r97, 0
	snop 1
	ldg_b128 r108, r96, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r96, 0, 0
	shl_b64 r98, 0, 0
	.loc	2 194 117 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:194:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r98, r30, s14
	mov_b32 r96, s15
	addc_co_u32 r99, r31, r96
	.loc	2 195 17 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:195:17
	snop 1
	ldg_b128 r96, r98, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r100, 0, 0
	shl_b64 r102, 0, 0
	.loc	2 194 117 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:194:117
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r100, r30, s14
	mov_b32 r101, s15
	addc_co_u32 r101, r31, r101
	.loc	2 195 17 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:195:17
	add_co_u32 r100, 0x10040, r100
	addc_co_u32 r101, r101, 0
	snop 1
	ldg_b128 r100, r100, 0x0
LBB3_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
.Ltmp205:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(4)
	barrier
.Ltmp206:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp207:
	.loc	2 205 354                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:205:354
	lds_b128 r112, r5, 0x0
	arrive bsmcnt(0)
	sts_b128 r9, 0x0, r112
	lds_b128 r112, r6, 0x0
	arrive bsmcnt(0)
	sts_b128 r10, 0x0, r112
	lds_b128 r112, r7, 0x0
	arrive bsmcnt(0)
	sts_b128 r11, 0x0, r112
	lds_b128 r112, r8, 0x0
	arrive bsmcnt(0)
	sts_b128 r12, 0x0, r112
.Ltmp208:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp209:
	.loc	2 208 11                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:208:11
	scmp_eq_u64 0xf80, s14
	.loc	2 208 9 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:208:9
	snop 0
	bra_smsks LBB3_1
; %bb.11:                               ; %for.cond196.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 211 169 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:211:169
	mad_i32 r112, r29, 2, s10
.Ltmp210:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r5
	smov_b32 s5, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r112, 0x0 bsm
.Ltmp211:
	.loc	2 211 169                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:211:169
	add_u32 r112, 0x10000, r29
	mad_i32 r112, r112, 2, s10
.Ltmp212:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r112, 0x0 bsm
.Ltmp213:
	.loc	2 211 169                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:211:169
	add_u32 r112, 0x20000, r29
	mad_i32 r112, r112, 2, s10
.Ltmp214:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r112, 0x0 bsm
.Ltmp215:
	.loc	2 211 169                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:211:169
	add_u32 r112, 0x30000, r29
	mad_i32 r112, r112, 2, s10
.Ltmp216:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r112, 0x0 bsm
	smov_b32 md, s5
	bra LBB3_1
.Ltmp217:
LBB3_12:                                ; %for.cond329.preheader
	.loc	2 179 93                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:179:93
	sadd_co_i32 s0, s1, s0
.Ltmp218:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp219:
	.loc	2 231 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:231:3
	shl_b64 r6, 0, s12
	.loc	2 233 92                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:233:92
	cmp_gt_i32 s10, s0, r0
	.loc	2 231 3                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:231:3
	mad_i32 r6, s16, 2, r6
	shl_b32 r5, 1, r3
	add_co_u32 r6, r6, r5
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 233 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:233:9
	and_xmsk s12, s10
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then345
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 235 114 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:235:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then367
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r5, 1, r1
	add_co_u32 r8, r6, r5
	addc_co_u32 r9, r7, 0
	.loc	2 236 19 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:236:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_15:                                ; %Flow240
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_16:                                ; %for.inc388
	sor_b64 xmsk, xmsk, s12
	.loc	2 233 63 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:233:63
	or_b32 r8, r1, 16
	.loc	2 233 92 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:233:92
	or_b32 r1, r3, r8
	cmp_gt_i32 s14, s0, r1
	add_u16 r1_lo, 0, 0
	.loc	2 233 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:233:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then345.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r1_lo, 0, 0
	.loc	2 235 114 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:235:114
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then367.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r1, 1, r8
	add_co_u32 r6, r6, r1
	addc_co_u32 r7, r7, 0
	.loc	2 236 19 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:236:19
	snop 1
	ldg_u16 r1, r6, 0x0
LBB3_19:                                ; %Flow239
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_20:                                ; %for.inc388.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r2, 6, r2
	mul_u24 r6, 0x38000, r2
	mul_u24 r2, 0x1c00, r3
	mov_b32 r7, 0
	mov_b32 r3, 0x80
	mad_u32 r6, s4, r3, r6
	add_co_u32 r6, r6, r2
	addc_co_u32 r7, r7, 0
	mov_b32 r2, 0x1c00
	mad_i32 r6, s16, r2, r6
	and_b32 r2, r4, 12
	.loc	2 244 3 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:244:3
	shl_b32 r2, 1, r2
	add_co_u32 r2, s8, r2
	mov_b32 r3, s9
	addc_co_u32 r3, r3, 0
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_28
; %bb.21:                               ; %for.inc511
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_31
LBB3_22:                                ; %for.inc511.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_34
LBB3_23:                                ; %for.inc511.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_37
LBB3_24:                                ; %for.inc511.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_40
LBB3_25:                                ; %for.inc511.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_43
LBB3_26:                                ; %for.inc511.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_46
LBB3_27:                                ; %for.inc511.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_49
	bra LBB3_52
LBB3_28:                                ; %if.then405
.Ltmp220:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp221:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp222:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp223:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp224:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then474
.Ltmp225:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp226:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r8, r95, r4
.Ltmp227:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp228:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r9, r94, r4
.Ltmp229:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp230:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r8, 16, r8
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r8, r93, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r92, r4
.Ltmp231:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp232:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp233:
	.loc	2 259 28 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r2, r10
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	addc_co_u32 r11, r3, r11
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_30:                                ; %Flow238
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_22
LBB3_31:                                ; %if.then405.1
.Ltmp234:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp235:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp237:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp238:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_33
; %bb.32:                               ; %if.then474.1
.Ltmp239:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp240:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r8, r91, r4
.Ltmp241:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp242:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r9, r90, r4
.Ltmp243:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp244:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r8, 16, r8
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r8, r89, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r88, r4
.Ltmp245:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp246:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp247:
	.loc	2 259 312 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:312
	shl_b64 r10, 1, r6
	.loc	2 259 28 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	add_co_u32 r10, r2, r10
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	addc_co_u32 r11, r3, r11
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_33:                                ; %Flow237
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_23
LBB3_34:                                ; %if.then405.2
.Ltmp248:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp249:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp250:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp251:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp252:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then474.2
.Ltmp253:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp254:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r8, r87, r4
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp256:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r9, r86, r4
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp258:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r8, 16, r8
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r8, r85, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r84, r4
.Ltmp259:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp260:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp261:
	.loc	2 259 312 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:312
	shl_b64 r10, 1, r6
	.loc	2 259 28 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	add_co_u32 r10, r2, r10
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	addc_co_u32 r11, r3, r11
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_36:                                ; %Flow236
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_24
LBB3_37:                                ; %if.then405.3
.Ltmp262:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp263:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp264:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp265:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp266:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_39
; %bb.38:                               ; %if.then474.3
.Ltmp267:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp268:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r8, r83, r4
.Ltmp269:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp270:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r9, r82, r4
.Ltmp271:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp272:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r8, 16, r8
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r8, r81, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r80, r4
.Ltmp273:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp274:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp275:
	.loc	2 259 312 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:312
	shl_b64 r10, 1, r6
	.loc	2 259 28 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	add_co_u32 r10, r2, r10
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	addc_co_u32 r11, r3, r11
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_39:                                ; %Flow235
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_25
LBB3_40:                                ; %if.then405.4
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp277:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp278:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp279:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp280:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then474.4
.Ltmp281:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp282:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r8, r79, r4
.Ltmp283:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp284:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r9, r78, r4
.Ltmp285:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp286:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r8, 16, r8
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r8, r77, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r76, r4
.Ltmp287:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp288:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp289:
	.loc	2 259 312 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:312
	shl_b64 r10, 1, r6
	.loc	2 259 28 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	add_co_u32 r10, r2, r10
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	addc_co_u32 r11, r3, r11
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_42:                                ; %Flow234
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_26
LBB3_43:                                ; %if.then405.5
.Ltmp290:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp291:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp292:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp294:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_45
; %bb.44:                               ; %if.then474.5
.Ltmp295:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp296:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r8, r75, r4
.Ltmp297:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp298:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r9, r74, r4
.Ltmp299:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp300:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r8, 16, r8
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r8, r73, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r72, r4
.Ltmp301:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp302:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp303:
	.loc	2 259 312 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:312
	shl_b64 r10, 1, r6
	.loc	2 259 28 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	add_co_u32 r10, r2, r10
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	addc_co_u32 r11, r3, r11
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_45:                                ; %Flow233
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_27
LBB3_46:                                ; %if.then405.6
.Ltmp304:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp305:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp306:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp307:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp308:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then474.6
.Ltmp309:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp310:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r8, r71, r4
.Ltmp311:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp312:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r9, r70, r4
.Ltmp313:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp314:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r8, 16, r8
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r8, r69, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r68, r4
.Ltmp315:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp316:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp317:
	.loc	2 259 312 is_stmt 1             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:312
	shl_b64 r10, 1, r6
	.loc	2 259 28 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	add_co_u32 r10, r2, r10
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	addc_co_u32 r11, r3, r11
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_48:                                ; %Flow232
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_52
LBB3_49:                                ; %if.then405.7
.Ltmp318:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp319:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp320:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp321:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp322:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_51
; %bb.50:                               ; %if.then474.7
.Ltmp323:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp324:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r5, r67, r4
.Ltmp325:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp326:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r8, r66, r4
.Ltmp327:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp328:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r5, 16, r5
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r5, r65, r4
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r4, r64, r4
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp330:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp331:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 259 312                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:312
	shl_b64 r4, 1, r6
	.loc	2 259 28 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	add_co_u32 r4, r2, r4
	addc_co_u32 r5, r3, r5
	.loc	2 259 442                       ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r4, 0xe0, r8 devc
LBB3_51:                                ; %Flow231
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
LBB3_52:                                ; %for.inc511.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 65 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:65
	or_b32 r0, r0, 16
	.loc	2 245 94 is_stmt 0              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:94
	cmp_gt_i32 s0, s0, r0
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_61
; %bb.53:                               ; %for.inc511.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_64
LBB3_54:                                ; %for.inc511.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_67
LBB3_55:                                ; %for.inc511.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_70
LBB3_56:                                ; %for.inc511.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_73
LBB3_57:                                ; %for.inc511.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_76
LBB3_58:                                ; %for.inc511.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_79
LBB3_59:                                ; %for.inc511.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_82
LBB3_60:                                ; %for.inc511.15
	.loc	2 264 1 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:264:1
	snop 0
	endk
LBB3_61:                                ; %if.then405.8
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp333:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp336:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_63
; %bb.62:                               ; %if.then474.8
.Ltmp337:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp338:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r4, r63, r0
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp340:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r5, r62, r0
.Ltmp341:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp342:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r4, 16, r4
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r4, r61, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r60, r0
.Ltmp343:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp344:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp345:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r2, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r4, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_63:                                ; %Flow230
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_54
LBB3_64:                                ; %if.then405.9
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp347:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp348:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp350:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.then474.9
.Ltmp351:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp352:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r4, r59, r0
.Ltmp353:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp354:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r5, r58, r0
.Ltmp355:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp356:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r4, 16, r4
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r4, r57, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r56, r0
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp358:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp359:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r2, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r4, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_66:                                ; %Flow229
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_55
LBB3_67:                                ; %if.then405.10
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp361:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp364:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_69
; %bb.68:                               ; %if.then474.10
.Ltmp365:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp366:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r4, r55, r0
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp368:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r5, r54, r0
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp370:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r4, 16, r4
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r4, r53, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r52, r0
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp372:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp373:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r2, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r4, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_69:                                ; %Flow228
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_56
LBB3_70:                                ; %if.then405.11
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp375:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp378:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then474.11
.Ltmp379:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp380:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r4, r51, r0
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp382:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r5, r50, r0
.Ltmp383:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp384:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r4, 16, r4
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r4, r49, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r48, r0
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp386:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp387:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r2, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r4, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_72:                                ; %Flow227
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_57
LBB3_73:                                ; %if.then405.12
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp389:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp392:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_75
; %bb.74:                               ; %if.then474.12
.Ltmp393:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp394:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r4, r47, r0
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp396:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r5, r46, r0
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp398:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r4, 16, r4
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r4, r45, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r44, r0
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp400:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp401:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r2, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r4, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_75:                                ; %Flow226
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_58
LBB3_76:                                ; %if.then405.13
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp403:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp406:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.then474.13
.Ltmp407:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp408:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r4, r43, r0
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp410:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r5, r42, r0
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp412:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r4, 16, r4
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r4, r41, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r40, r0
.Ltmp413:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp414:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp415:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r2, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_78:                                ; %Flow225
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_59
LBB3_79:                                ; %if.then405.14
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp417:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp420:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_81
; %bb.80:                               ; %if.then474.14
.Ltmp421:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp422:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r4, r39, r0
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp424:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r5, r38, r0
.Ltmp425:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp426:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r4, 16, r4
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r4, r37, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r36, r0
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp428:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp429:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r2, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_81:                                ; %Flow224
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 245 9 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:245:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_60
LBB3_82:                                ; %if.then405.15
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp431:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp434:
	.loc	2 257 11 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:257:11
	snop 0
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_60
; %bb.83:                               ; %if.then474.15
.Ltmp435:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r1_lo
.Ltmp436:
	.loc	2 253 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:253:22
	mul_f32 r1, r35, r0
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp438:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	mul_f32 r4, r34, r0
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp440:
	.loc	2 252 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:252:22
	shl_b32 r1, 16, r1
	.loc	2 256 40                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	add_u16 r4_hi, 0, 0
	or_b32 r5, r1, r4
	.loc	2 251 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:251:22
	mul_f32 r1, r33, r0
	.loc	2 250 22                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:250:22
	mul_f32 r0, r32, r0
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r1_lo, r1
.Ltmp442:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp443:
	.loc	2 256 40 is_stmt 1              ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:256:40
	shl_b32 r1, 16, r1
	and_b32 r0, 0xffff, r0
	or_b32 r4, r1, r0
	.loc	2 259 28                        ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:28
	shl_b64 r0, 1, r6
	add_co_u32 r0, r2, r0
	addc_co_u32 r1, r3, r1
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 259 442 is_stmt 0             ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:259:442
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 264 1 is_stmt 1               ; race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp:264:1
	snop 2
	endk
.Ltmp444:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 16
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
; codeLenInByte = 10576
; NumMTRegsForWarps/PEU: 126
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 4
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
	.byte	0                               ; EOM(3)
	.section	.debug_info
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x2fb DW_TAG_compile_unit
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
	.byte	2                               ; Abbrev [2] 0x54:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x5a:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x60:0x172 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x71:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	35                              ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	39                              ; DW_AT_call_line
	.byte	27                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x89:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp20                         ; DW_AT_low_pc
	.long	.Ltmp21-.Ltmp20                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	53                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9d:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp21                         ; DW_AT_low_pc
	.long	.Ltmp22-.Ltmp21                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	54                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb1:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp22                         ; DW_AT_low_pc
	.long	.Ltmp23-.Ltmp22                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	55                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xc5:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp22                         ; DW_AT_low_pc
	.long	.Ltmp23-.Ltmp22                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xda:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp24                         ; DW_AT_low_pc
	.long	.Ltmp25-.Ltmp24                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	64                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xee:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp24                         ; DW_AT_low_pc
	.long	.Ltmp25-.Ltmp24                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x103:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	68                              ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x10f:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp32                         ; DW_AT_low_pc
	.long	.Ltmp33-.Ltmp32                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x123:0x14 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp35                         ; DW_AT_low_pc
	.long	.Ltmp36-.Ltmp35                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	22                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x137:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	134                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x143:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x14f:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	132                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x15b:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	131                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x167:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	159                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x173:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x180:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x18d:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x19c:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	160                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1a8:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1b5:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1c2:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1d2:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1d8:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x1de:0x127 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x1ef:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	187                             ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1fb:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp205                        ; DW_AT_low_pc
	.long	.Ltmp206-.Ltmp205               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	201                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x20f:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp206                        ; DW_AT_low_pc
	.long	.Ltmp207-.Ltmp206               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	202                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x223:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp206                        ; DW_AT_low_pc
	.long	.Ltmp207-.Ltmp206               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x238:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp208                        ; DW_AT_low_pc
	.long	.Ltmp209-.Ltmp208               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	207                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x24c:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp208                        ; DW_AT_low_pc
	.long	.Ltmp209-.Ltmp208               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x261:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	211                             ; DW_AT_call_line
	.byte	35                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x26d:0x14 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp218                        ; DW_AT_low_pc
	.long	.Ltmp219-.Ltmp218               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	179                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x281:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	254                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x28d:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x29a:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2a7:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x2b6:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	255                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2c2:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2cf:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2dc:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x2eb:0x19 DW_TAG_inlined_subroutine
	.long	472                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	249                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x2f7:0xc DW_TAG_inlined_subroutine
	.long	466                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges
.Ldebug_ranges0:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
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
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v009_async_consumer_fence_sc-16g/codegen/v009_async_consumer_fence_sc-16g_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=181
.Linfo_string3:
	.asciz	"memcpy_async<16, false>"       ; string offset=202
.Linfo_string4:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=226
.Linfo_string5:
	.asciz	"__barrier"                     ; string offset=321
.Linfo_string6:
	.asciz	"__syncthreads"                 ; string offset=331
.Linfo_string7:
	.asciz	"min"                           ; string offset=345
.Linfo_string8:
	.asciz	"exp2f"                         ; string offset=349
.Linfo_string9:
	.asciz	"__float2half_rn"               ; string offset=355
.Linfo_string10:
	.asciz	"__floats2half2_rn"             ; string offset=371
.Linfo_string11:
	.asciz	"__float22half2_rn"             ; string offset=389
.Linfo_string12:
	.asciz	"__half2float"                  ; string offset=407
.Linfo_string13:
	.asciz	"operator float"                ; string offset=420
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=435
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=449
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
      - .arg_attribute:  is_constant
        .arg_name:       routed_expert_gate.coerce
        .arg_offset_bytes: 40
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_attribute:  is_constant
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
    .mtreg_count:    116
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
    .mtreg_count:    126
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
