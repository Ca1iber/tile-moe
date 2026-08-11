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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 21 23 prologue_end            ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:21:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	and_b32 r1, 0x3ff, r0
	ldu_b256 s8, s0, 0x20
	shl_b32 r0, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s16, s6, 0x0
	and_b32 r11, r0, 32
	add_u32 r2, r11, r1
	and_b32 r5, r2, 32
	and_b32 r2, r0, 16
	add_u32 r2, r2, r1
	and_b32 r6, r2, 16
	arrive slcnt(0)
	sashr_i32 s17, 31, s16
	.loc	2 22 24                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:22:24
	sshl_b64 s6, 2, s16
	sadd_co_u32 s0, s22, s6
	saddc_co_u32 s1, s23, s7
	.loc	2 23 38                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:23:38
	sshl_b32 s2, 7, s5
	.loc	2 23 47 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:23:47
	sadd_co_u32 s18, s18, s6
	saddc_co_u32 s19, s19, s7
	.loc	2 23 79                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:23:79
	sadd_co_u32 s6, s20, s6
	.loc	2 22 24 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:22:24
	ldu_b32 s1, s0, 0x0
	.loc	2 23 47                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:23:47
	ldu_b32 s3, s18, 0x0
	.loc	2 23 79 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:23:79
	saddc_co_u32 s7, s21, s7
	ldu_b32 s0, s6, 0x0
	mul_u24 r2, r1, 9
	smul_i32 s7, 0x70000, s4
	and_b32 r4, 0x1fc0, r0
	xor_b32 r0, r0, r1
	and_b32 r7, r2, 8
	shr_b32 r15, 3, r1
	smov_b32 s22, 0x1c00
	mov_b32 r2, s7
	mad_u24 r2, r15, s22, r2
	and_b32 r16, r0, 56
	or_b32 r0, r2, r16
	.loc	2 36 151 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:151
	or_b32 r2, r5, r7
	.loc	2 36 321 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:321
	or3_b32 r2, r2, r4, r6
	smul_i32 s5, 0xe00000, s16
	.loc	2 24 54 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:24:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 23 45                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:23:45
	sadd_co_i32 s2, s3, s2
	add_u32 r0, r0, s5
	.loc	2 36 71                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:71
	shl_add_u32 r2, 1, r2, 0
	.loc	2 36 115 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:115
	or_b32 r4, r4, r5
	.loc	2 23 77 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:23:77
	ssub_co_i32 s6, s2, s0
	.loc	2 36 425                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:425
	mad_i32 r8, r0, 2, s10
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r2
.Ltmp6:
	.loc	2 36 236                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:236
	or3_b32 r4, r4, r6, r7
.Ltmp7:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s23, md
.Ltmp8:
	.loc	2 36 71                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:71
	shl_add_u32 r5, 1, r4, 0
	add_u32 r4, 0x1000, r5
.Ltmp9:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
.Ltmp10:
	.loc	2 36 565                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:565
	add_u32 r6, 0x38000, r0
.Ltmp11:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp12:
	.loc	2 37 432                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:37:432
	mad_i32 r8, r0, 2, s12
.Ltmp13:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp14:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r4
.Ltmp15:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp16:
	.loc	2 38 646 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:38:646
	or_b32 r8, r0, 64
	.loc	2 38 434 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:38:434
	mad_i32 r12, r8, 2, s10
.Ltmp17:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0xffffe000, md
.Ltmp18:
	.loc	2 39 433                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:39:433
	mad_i32 r8, r8, 2, s12
.Ltmp19:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r12, 0x0 bsm
.Ltmp20:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp21:
	.loc	2 38 646 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:38:646
	add_u32 r0, 0x38040, r0
.Ltmp22:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp23:
	.loc	2 36 425                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:36:425
	mad_i32 r8, r6, 2, s10
.Ltmp24:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
.Ltmp25:
	.loc	2 37 432                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:37:432
	mad_i32 r6, r6, 2, s12
.Ltmp26:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp27:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp28:
	.loc	2 38 434 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:38:434
	mad_i32 r8, r0, 2, s10
.Ltmp29:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp30:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0xffffe000, md
.Ltmp31:
	.loc	2 38 71 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:38:71
	add_u32 r6, 0x3000, r5
.Ltmp32:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp33:
	.loc	2 39 433                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:39:433
	mad_i32 r8, r0, 2, s12
.Ltmp34:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	sadd_co_u32 s16, 0x100, s10
	ldg_b128 r0, r8, 0x0 bsm
	shr_b32 r9, 6, r1
	saddc_co_u32 s17, s11, 0
	and_b32 r5, r1, 15
	mul_u24 r9, 0x38000, r9
	sadd_co_u32 s18, 0x100, s12
	mad_u24 r17, r5, s22, r9
	shr_b32 r7, 1, r1
	smov_b32 s2, 0x1e0
	shr_b32 r9, 5, r1
	and_or_b32 r0, r7, s2, r5
	add_shl_u32 r7, r9, r7, 4
	shr_b32 r9, 4, r1
	saddc_co_u32 s19, s13, 0
	sadd_co_u32 s20, 0x180, s10
	shl_b32 r5, 6, r1
	and_b32 r7, r7, 16
	add_shl_u32 r9, r9, r1, 3
	and_b32 r10, 0x3c0, r5
	saddc_co_u32 s21, s11, 0
	and_or_b32 r14, r9, 8, r7
	add_u32 r8, s6, r0
	sadd_co_u32 s12, 0x180, s12
	cmp_gt_u32 s10, 0x2380, r8
	add_u32 r8, r8, 16
	or_b32 r13, 0x400, r10
	or_b32 r18, r14, r11
	or_b32 r19, 0x800, r10
	or_b32 r20, 0xc00, r10
	or_b32 r9, r18, r19
	saddc_co_u32 s13, s13, 0
	or_b32 r12, r14, r10
	or_b32 r10, r18, r20
	cmp_gt_u32 s2, 0x2380, r8
	or_b32 r8, r18, r13
	xor_b32 r18, r11, 32
.Ltmp35:
	.loc	2 41 3                          ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:41:3
	sadd_co_i32 s5, s5, s7
	or_b32 r7, r12, r11
	or_b32 r11, r12, r18
	or3_b32 r12, r14, r13, r18
	or3_b32 r13, r14, r19, r18
	or3_b32 r14, r14, r20, r18
	mov_b32 r18, s5
	mad_u24 r15, r15, s22, r18
	or_b32 r15, r15, r16
	mov_b32 r16, 0x3800
	smul_i32 s5, 0x3800, s6
	mul_hi_i32 r19, s6, r16
	mov_b32 r16, s5
	and_or_b32 r18, r1, 48, r16
	mad_u32 r18, r17, 2, r18
	add_co_u32 r16, s8, r18
	mov_b32 r17, s9
	addc_co_u32 r17, r17, r19
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r18, 0, 0
	shl_b64 r20, 0, 0
	shl_b64 r26, 0, r18
	shl_b64 r34, 0, r18
	shl_b64 r42, 0, r18
	shl_b64 r50, 0, r18
	shl_b64 r58, 0, r18
	shl_b64 r66, 0, r18
	shl_b64 r74, 0, r18
	shl_b64 r22, 0, r18
	shl_b64 r30, 0, r18
	shl_b64 r38, 0, r18
	shl_b64 r46, 0, r18
	shl_b64 r54, 0, r18
	shl_b64 r62, 0, r18
	shl_b64 r70, 0, r18
	shl_b64 r78, 0, r18
	.loc	2 38 71 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:38:71
	add_u32 r3, 0x2000, r2
	shr_b32 r5, 2, r1
	shl_add_u32 r7, 1, r7, 0
	shl_add_u32 r8, 1, r8, 0
	shl_add_u32 r9, 1, r9, 0
	shl_add_u32 r10, 1, r10, 0
	shl_add_u32 r11, 1, r11, 0
	shl_add_u32 r12, 1, r12, 0
	shl_add_u32 r13, 1, r13, 0
	shl_add_u32 r14, 1, r14, 0
	smov_b64 s8, 0
	shl_b64 r28, 0, r20
	shl_b64 r36, 0, r20
	shl_b64 r44, 0, r20
	shl_b64 r52, 0, r20
	shl_b64 r60, 0, r20
	shl_b64 r68, 0, r20
	shl_b64 r76, 0, r20
	shl_b64 r24, 0, r20
	shl_b64 r32, 0, r20
	shl_b64 r40, 0, r20
	shl_b64 r48, 0, r20
	shl_b64 r56, 0, r20
	shl_b64 r64, 0, r20
	shl_b64 r72, 0, r20
	shl_b64 r80, 0, r20
.Ltmp36:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s23
	bra LBB2_2
.Ltmp37:
	.p2align	5
LBB2_1:                                 ; %for.inc1095
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 41 31                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:41:31
	sadd_co_u32 s8, 0x100, s8
	saddc_co_u32 s9, s9, 0
	scmp_eq_u64 0x3800, s8
	add_u32 r15, 0x80, r15
	.loc	2 41 3 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:41:3
	bra_smsks LBB2_22
LBB2_2:                                 ; %for.cond287.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r90, 0, 0
	shl_b64 r92, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s22, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r84, r16, s8
	mov_b32 r82, s9
	addc_co_u32 r85, r17, r82
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:47:17
	snop 1
	ldg_b128 r90, r84, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r94, 0, 0
	shl_b64 r96, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r82, r16, s8
	mov_b32 r83, s9
	addc_co_u32 r83, r17, r83
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:47:17
	add_co_u32 r82, 0x38000, r82
	addc_co_u32 r83, r83, 0
	snop 1
	ldg_b128 r94, r82, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r82, 0, 0
	shl_b64 r84, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s22, s10
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r84, r16, s8
	mov_b32 r82, s9
	addc_co_u32 r85, r17, r82
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:47:17
	snop 1
	ldg_b128 r82, r84, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r86, 0, 0
	shl_b64 r88, 0, 0
	.loc	2 46 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:46:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB2_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r86, r16, s8
	mov_b32 r87, s9
	addc_co_u32 r87, r17, r87
	.loc	2 47 17 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:47:17
	add_co_u32 r86, 0x38040, r86
	addc_co_u32 r87, r87, 0
	snop 1
	ldg_b128 r86, r86, 0x0
LBB2_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
.Ltmp38:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
.Ltmp39:
	.loc	3 3834 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(6)
	barrier
.Ltmp40:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp41:
	.loc	2 58 50                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:58:50
	lds_b128 r98, r7, 0x0
	lds_b128 r102, r8, 0x0
	lds_b128 r106, r9, 0x0
	lds_b128 r110, r10, 0x0
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	arrive bsmcnt(3)
	mma_16x16x16f16 r74, r98, r90, r74
	mma_16x16x16f16 r42, r98, r94, r42
	mma_16x16x16f16 r74, r100, r92, r74
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	add_i32 r98, 0x4000, r7
	add_i32 r99, 0x4000, r10
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	mma_16x16x16f16 r42, r100, r96, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r102, r90, r66
	mma_16x16x16f16 r34, r102, r94, r34
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r100, r98, 0x0
	add_i32 r98, 0x4000, r8
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	mma_16x16x16f16 r66, r104, r92, r66
	mma_16x16x16f16 r34, r104, r96, r34
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r106, r90, r58
	mma_16x16x16f16 r26, r106, r94, r26
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r104, r98, 0x0
	add_i32 r98, 0x4000, r9
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	mma_16x16x16f16 r58, r108, r92, r58
	mma_16x16x16f16 r26, r108, r96, r26
	arrive bsmcnt(2)
	mma_16x16x16f16 r50, r110, r90, r50
	mma_16x16x16f16 r18, r110, r94, r18
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r108, r98, 0x0
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	mma_16x16x16f16 r50, r112, r92, r50
	mma_16x16x16f16 r18, r112, r96, r18
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r100, r90, r78
	mma_16x16x16f16 r46, r100, r94, r46
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r98, r99, 0x0
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	mma_16x16x16f16 r78, r102, r92, r78
	mma_16x16x16f16 r46, r102, r96, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r104, r90, r70
	mma_16x16x16f16 r38, r104, r94, r38
	.loc	2 58 50                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:58:50
	lds_b128 r102, r11, 0x0
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	mma_16x16x16f16 r70, r106, r92, r70
	mma_16x16x16f16 r38, r106, r96, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r108, r90, r62
	mma_16x16x16f16 r30, r108, r94, r30
	.loc	2 58 50                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:58:50
	lds_b128 r106, r12, 0x0
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	mma_16x16x16f16 r62, r110, r92, r62
	mma_16x16x16f16 r30, r110, r96, r30
	arrive bsmcnt(2)
	mma_16x16x16f16 r54, r98, r90, r54
	mma_16x16x16f16 r22, r98, r94, r22
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	add_i32 r90, 0x4000, r11
	add_i32 r91, 0x4000, r14
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	mma_16x16x16f16 r54, r100, r92, r54
	.loc	2 58 50                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:58:50
	lds_b128 r92, r13, 0x0
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	mma_16x16x16f16 r22, r100, r96, r22
	.loc	2 58 50                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:58:50
	lds_b128 r96, r14, 0x0
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	arrive bsmcnt(3)
	mma_16x16x16f16 r74, r102, r82, r74
	mma_16x16x16f16 r42, r102, r86, r42
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r100, r90, 0x0
	add_i32 r90, 0x4000, r12
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	mma_16x16x16f16 r74, r104, r84, r74
	mma_16x16x16f16 r42, r104, r88, r42
	arrive bsmcnt(3)
	mma_16x16x16f16 r66, r106, r82, r66
	mma_16x16x16f16 r34, r106, r86, r34
	mma_16x16x16f16 r66, r108, r84, r66
	mma_16x16x16f16 r34, r108, r88, r34
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r92, r82, r58
	mma_16x16x16f16 r26, r92, r86, r26
	mma_16x16x16f16 r58, r94, r84, r58
	mma_16x16x16f16 r26, r94, r88, r26
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r92, r90, 0x0
	add_i32 r90, 0x4000, r13
	.loc	2 64 64                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:64:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r50, r96, r82, r50
	mma_16x16x16f16 r18, r96, r86, r18
	mma_16x16x16f16 r50, r98, r84, r50
	mma_16x16x16f16 r18, r98, r88, r18
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r96, r90, 0x0
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r100, r82, r78
	mma_16x16x16f16 r46, r100, r86, r46
	mma_16x16x16f16 r78, r102, r84, r78
	mma_16x16x16f16 r46, r102, r88, r46
	.loc	2 72 52                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:72:52
	lds_b128 r100, r91, 0x0
	.loc	2 78 62                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:78:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r92, r82, r70
	mma_16x16x16f16 r38, r92, r86, r38
	mma_16x16x16f16 r70, r94, r84, r70
	mma_16x16x16f16 r38, r94, r88, r38
	arrive bsmcnt(1)
	mma_16x16x16f16 r62, r96, r82, r62
	mma_16x16x16f16 r30, r96, r86, r30
	mma_16x16x16f16 r62, r98, r84, r62
	mma_16x16x16f16 r30, r98, r88, r30
	arrive bsmcnt(0)
	mma_16x16x16f16 r54, r100, r82, r54
	mma_16x16x16f16 r22, r100, r86, r22
	mma_16x16x16f16 r54, r102, r84, r54
	mma_16x16x16f16 r22, r102, r88, r22
.Ltmp42:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp43:
	.loc	2 87 16                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:87:16
	mov_b32 r82, 0x3700
	mov_b32 r83, 0
	cmp_lg_u64 s22, s8, r82
	scmp_eq_u64 0x3700, s8
	.loc	2 87 9 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:87:9
	snop 0
	bra_smsks LBB2_12
; %bb.11:                               ; %for.cond555.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 89 431 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:89:431
	mad_i32 r82, r15, 2, s16
.Ltmp44:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r2
	smov_b32 s5, md
	snop 2
	smov_b32 md, s7
	rfl_b32 s7, r4
	ldg_b128 r0, r82, 0x0 bsm
.Ltmp45:
	.loc	2 90 438                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:90:438
	mad_i32 r82, r15, 2, s18
.Ltmp46:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	snop 0
	ldg_b128 r0, r82, 0x0 bsm
.Ltmp47:
	.loc	2 89 431                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:89:431
	add_u32 r82, 0x38000, r15
	mad_i32 r84, r82, 2, s16
.Ltmp48:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp49:
	.loc	2 90 438                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:90:438
	mad_i32 r82, r82, 2, s18
.Ltmp50:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r84, 0x0 bsm
.Ltmp51:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	snop 0
	ldg_b128 r0, r82, 0x0 bsm
.Ltmp52:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
.Ltmp53:
LBB2_12:                                ; %if.end685
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	3 0 10                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b64 r90, 0, 0
	shl_b64 r92, 0, 0
	.loc	2 97 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:97:117
	and_xmsk s24, s10
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then713
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r84, r16, s8
	mov_b32 r82, s9
	addc_co_u32 r85, r17, r82
	.loc	2 98 19 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:98:19
	snop 1
	ldg_b128 r90, r84, 0x80
LBB2_14:                                ; %if.end768
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r94, 0, 0
	shl_b64 r96, 0, 0
	.loc	2 97 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:97:117
	and_xmsk s24, s2
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then713.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r82, r16, s8
	mov_b32 r83, s9
	addc_co_u32 r83, r17, r83
	.loc	2 98 19 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:98:19
	add_co_u32 r82, 0x38080, r82
	addc_co_u32 r83, r83, 0
	snop 1
	ldg_b128 r94, r82, 0x0
LBB2_16:                                ; %if.end768.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r82, 0, 0
	shl_b64 r84, 0, 0
	.loc	2 97 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:97:117
	and_xmsk s24, s10
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then713.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r84, r16, s8
	mov_b32 r82, s9
	addc_co_u32 r85, r17, r82
	.loc	2 98 19 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:98:19
	snop 1
	ldg_b128 r82, r84, 0xc0
LBB2_18:                                ; %if.end768.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r86, 0, 0
	shl_b64 r88, 0, 0
	.loc	2 97 117 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:97:117
	and_xmsk s24, s2
	snop 0
	bra_xmskz LBB2_20
; %bb.19:                               ; %if.then713.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r86, r16, s8
	mov_b32 r87, s9
	addc_co_u32 r87, r17, r87
	.loc	2 98 19 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:98:19
	add_co_u32 r86, 0x380c0, r86
	addc_co_u32 r87, r87, 0
	snop 1
	ldg_b128 r86, r86, 0x0
LBB2_20:                                ; %if.end768.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
.Ltmp54:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp55:
	.loc	3 3834 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp56:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp57:
	.loc	2 109 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:109:52
	add_i32 r98, 0x2000, r7
	add_i32 r99, 0x2000, r8
	snop 0
	lds_b128 r100, r98, 0x0
	add_i32 r98, 0x2000, r9
	lds_b128 r104, r99, 0x0
	add_i32 r99, 0x2000, r10
	lds_b128 r108, r98, 0x0
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r98, 0x6000, r7
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r100, r90, r74
	mma_16x16x16f16 r42, r100, r94, r42
	mma_16x16x16f16 r74, r102, r92, r74
	mma_16x16x16f16 r42, r102, r96, r42
	.loc	2 109 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:109:52
	lds_b128 r100, r99, 0x0
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r99, 0x6000, r10
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r104, r90, r66
	mma_16x16x16f16 r34, r104, r94, r34
	mma_16x16x16f16 r66, r106, r92, r66
	mma_16x16x16f16 r34, r106, r96, r34
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r104, r98, 0x0
	add_i32 r98, 0x6000, r8
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r108, r90, r58
	mma_16x16x16f16 r26, r108, r94, r26
	mma_16x16x16f16 r58, r110, r92, r58
	mma_16x16x16f16 r26, r110, r96, r26
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r108, r98, 0x0
	add_i32 r98, 0x6000, r9
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r50, r100, r90, r50
	mma_16x16x16f16 r18, r100, r94, r18
	mma_16x16x16f16 r50, r102, r92, r50
	mma_16x16x16f16 r18, r102, r96, r18
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r100, r98, 0x0
	.loc	2 109 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:109:52
	add_i32 r98, 0x2000, r11
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r104, r90, r78
	mma_16x16x16f16 r46, r104, r94, r46
	mma_16x16x16f16 r78, r106, r92, r78
	mma_16x16x16f16 r46, r106, r96, r46
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r104, r99, 0x0
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r108, r90, r70
	mma_16x16x16f16 r38, r108, r94, r38
	mma_16x16x16f16 r70, r110, r92, r70
	mma_16x16x16f16 r38, r110, r96, r38
	.loc	2 109 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:109:52
	lds_b128 r108, r98, 0x0
	add_i32 r98, 0x2000, r12
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r100, r90, r62
	mma_16x16x16f16 r30, r100, r94, r30
	.loc	2 109 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:109:52
	lds_b128 r98, r98, 0x0
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	mma_16x16x16f16 r62, r102, r92, r62
	mma_16x16x16f16 r30, r102, r96, r30
	arrive bsmcnt(2)
	mma_16x16x16f16 r54, r104, r90, r54
	mma_16x16x16f16 r22, r104, r94, r22
	.loc	2 109 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:109:52
	add_i32 r90, 0x2000, r13
	add_i32 r91, 0x2000, r14
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	mma_16x16x16f16 r54, r106, r92, r54
	.loc	2 109 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:109:52
	lds_b128 r92, r90, 0x0
	lds_b128 r102, r91, 0x0
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r90, 0x6000, r11
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	mma_16x16x16f16 r22, r106, r96, r22
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r91, 0x6000, r14
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	arrive bsmcnt(3)
	mma_16x16x16f16 r74, r108, r82, r74
	mma_16x16x16f16 r42, r108, r86, r42
	mma_16x16x16f16 r74, r110, r84, r74
	mma_16x16x16f16 r42, r110, r88, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r98, r82, r66
	mma_16x16x16f16 r34, r98, r86, r34
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r96, r90, 0x0
	add_i32 r90, 0x6000, r12
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	mma_16x16x16f16 r66, r100, r84, r66
	mma_16x16x16f16 r34, r100, r88, r34
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r92, r82, r58
	mma_16x16x16f16 r26, r92, r86, r26
	mma_16x16x16f16 r58, r94, r84, r58
	mma_16x16x16f16 r26, r94, r88, r26
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r92, r90, 0x0
	add_i32 r90, 0x6000, r13
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r50, r102, r82, r50
	mma_16x16x16f16 r18, r102, r86, r18
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r100, r90, 0x0
	.loc	2 115 64                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:115:64
	mma_16x16x16f16 r50, r104, r84, r50
	mma_16x16x16f16 r18, r104, r88, r18
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r96, r82, r78
	mma_16x16x16f16 r46, r96, r86, r46
	mma_16x16x16f16 r78, r98, r84, r78
	mma_16x16x16f16 r46, r98, r88, r46
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r96, r91, 0x0
	.loc	2 129 62                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:129:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r92, r82, r70
	mma_16x16x16f16 r38, r92, r86, r38
	mma_16x16x16f16 r70, r94, r84, r70
	mma_16x16x16f16 r38, r94, r88, r38
	arrive bsmcnt(1)
	mma_16x16x16f16 r62, r100, r82, r62
	mma_16x16x16f16 r30, r100, r86, r30
	mma_16x16x16f16 r62, r102, r84, r62
	mma_16x16x16f16 r30, r102, r88, r30
	arrive bsmcnt(0)
	mma_16x16x16f16 r54, r96, r82, r54
	mma_16x16x16f16 r22, r96, r86, r22
	mma_16x16x16f16 r54, r98, r84, r54
	mma_16x16x16f16 r22, r98, r88, r22
.Ltmp58:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp59:
	.loc	2 138 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:138:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB2_1
; %bb.21:                               ; %for.cond963.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 140 440                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:140:440
	mad_i32 r82, r15, 2, s20
.Ltmp60:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r3
	smov_b32 s5, md
	snop 2
	smov_b32 md, s7
	rfl_b32 s7, r6
	ldg_b128 r0, r82, 0x0 bsm
.Ltmp61:
	.loc	2 141 439                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:141:439
	mad_i32 r82, r15, 2, s12
.Ltmp62:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	snop 0
	ldg_b128 r0, r82, 0x0 bsm
.Ltmp63:
	.loc	2 140 440                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:140:440
	add_u32 r82, 0x38000, r15
	mad_i32 r84, r82, 2, s20
.Ltmp64:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp65:
	.loc	2 141 439                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:141:439
	mad_i32 r82, r82, 2, s12
.Ltmp66:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r84, 0x0 bsm
.Ltmp67:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	snop 0
	ldg_b128 r0, r82, 0x0 bsm
.Ltmp68:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
	bra LBB2_1
.Ltmp69:
LBB2_22:                                ; %for.cond1098.preheader
	.loc	3 0 10                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b32 r2, 10, r1
	shl_b32 r1, 11, r1
	and_b32 r2, 0xf0000, r2
	mov_b32 r3, 0
	.loc	2 24 93 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:24:93
	sadd_co_i32 s0, s1, s0
	and_b32 r1, 0x7800, r1
	mad_u32 r2, s4, 64, r2
	add_co_u32 r2, r2, r1
.Ltmp70:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp71:
	.loc	2 187 94                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:94
	cmp_gt_i32 s4, s0, r0
	addc_co_u32 r3, r3, 0
	mov_b32 r1, 0x800
	mad_i32 r6, s6, r1, r2
	and_b32 r1, r5, 12
	.loc	2 146 3                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:146:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	addc_co_u32 r2, r2, 0
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	sand_b64 s4, s4, s10
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_32
; %bb.23:                               ; %if.end1303
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_33
LBB2_24:                                ; %if.end1303.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_34
LBB2_25:                                ; %if.end1303.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_27
LBB2_26:                                ; %if.then1235.3
	.loc	2 169 27 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r3, 0xbfb8aa3b, r53
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r4, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s4
	fmka_f32 r9, r53, 0xbfb8aa3b, r9
	csel_b32 r5, r3, r4, s4
	exp_f32 r9, r9
.Ltmp73:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r5, r5, r9, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r9, r5, r5, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r4
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r5, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r9, 0xbfb8aa3b, r52
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp75:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r5, r9, r5, s1
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r5, r53, r5
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r5, r5, r57
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s4
	fmka_f32 r10, r52, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r4, s4
	exp_f32 r10, r10
.Ltmp77:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r4
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r10, 0xbfb8aa3b, r51
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp79:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r9, r52, r9
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s4
	fmka_f32 r11, r51, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r4, s4
	exp_f32 r11, r11
.Ltmp81:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r4
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r11, 0xbfb8aa3b, r50
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r11
.Ltmp83:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r10, r51, r10
.Ltmp84:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s4
	fmka_f32 r8, r50, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r4, s4
	exp_f32 r8, r8
.Ltmp85:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r4, neg(r8), r11
	fmac_f32 r11, r4, r11
	div_scale_f32 r4, s1, r3, s1
	mul_f32 r12, r4, r11
	fma_f32 r13, neg(r8), r12, r4
	fmac_f32 r12, r13, r11
	fmac_f32 r4, neg(r8), r12
	div_fmas_f32 r4, r4, r11, r12
	div_fixup_f32 r3, r4, r3, s1
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r3, r50, r3
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r3, r3, r54
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r4, r10, r55
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r8, r9, r56
.Ltmp86:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp87:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp88:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp89:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp90:
	.loc	2 200 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:312
	snop 0
	shl_b64 r10, 1, r6
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r5, 16, r5
	add_u16 r4_hi, 0, 0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	add_co_u32 r10, r1, r10
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r5, r5, r4
	shl_b32 r4, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r11, r2, r11
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r4, r4, r3
	snop 1
	stg_b64 r10, 0x60, r4 devc
LBB2_27:                                ; %if.end1303.3
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	.loc	2 187 65 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:65
	or_b32 r0, r0, 16
	.loc	2 187 94 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:94
	cmp_gt_i32 s0, s0, r0
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	snop 3
	sand_b64 s0, s0, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_35
; %bb.28:                               ; %if.end1303.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_36
LBB2_29:                                ; %if.end1303.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_37
LBB2_30:                                ; %if.end1303.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 187 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_38
LBB2_31:                                ; %if.end1303.7
	.loc	2 205 1 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:205:1
	snop 1
	endk
LBB2_32:                                ; %if.then1235
	.loc	2 169 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r3, 0xbfb8aa3b, r77
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r4, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r77, 0xbfb8aa3b, r9
	csel_b32 r5, r3, r4, s8
	exp_f32 r9, r9
.Ltmp92:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r5, r5, r9, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r9, r5, r5, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r4
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r5, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r9, 0xbfb8aa3b, r76
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp94:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r5, r9, r5, s1
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r5, r77, r5
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r5, r5, r81
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r76, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r4, s8
	exp_f32 r10, r10
.Ltmp96:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r4
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r10, 0xbfb8aa3b, r75
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp98:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r9, r76, r9
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r75, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r4, s8
	exp_f32 r11, r11
.Ltmp100:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r4
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r11, 0xbfb8aa3b, r74
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp102:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r10, r75, r10
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r74, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r4, s8
	exp_f32 r8, r8
.Ltmp104:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r4, neg(r8), r11
	fmac_f32 r11, r4, r11
	div_scale_f32 r4, s1, r3, s1
	mul_f32 r12, r4, r11
	fma_f32 r13, neg(r8), r12, r4
	fmac_f32 r12, r13, r11
	fmac_f32 r4, neg(r8), r12
	div_fmas_f32 r4, r4, r11, r12
	div_fixup_f32 r3, r4, r3, s1
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r3, r74, r3
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r3, r3, r78
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r4, r10, r79
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r8, r9, r80
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp106:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp107:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp108:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp109:
	.loc	2 200 31 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	snop 0
	shl_b64 r10, 1, r6
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r5, 16, r5
	add_u16 r4_hi, 0, 0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	add_co_u32 r10, r1, r10
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r5, r5, r4
	shl_b32 r4, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r11, r2, r11
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r4, r4, r3
	snop 1
	stg_b64 r10, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 187 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_24
LBB2_33:                                ; %if.then1235.1
	.loc	2 169 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r3, 0xbfb8aa3b, r69
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r4, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r69, 0xbfb8aa3b, r9
	csel_b32 r5, r3, r4, s8
	exp_f32 r9, r9
.Ltmp111:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r5, r5, r9, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r9, r5, r5, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r4
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r5, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r9, 0xbfb8aa3b, r68
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp113:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r5, r9, r5, s1
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r5, r69, r5
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r5, r5, r73
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r68, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r4, s8
	exp_f32 r10, r10
.Ltmp115:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r4
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r10, 0xbfb8aa3b, r67
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp117:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r9, r68, r9
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r67, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r4, s8
	exp_f32 r11, r11
.Ltmp119:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r4
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r11, 0xbfb8aa3b, r66
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp121:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r10, r67, r10
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r66, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r4, s8
	exp_f32 r8, r8
.Ltmp123:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r4, neg(r8), r11
	fmac_f32 r11, r4, r11
	div_scale_f32 r4, s1, r3, s1
	mul_f32 r12, r4, r11
	fma_f32 r13, neg(r8), r12, r4
	fmac_f32 r12, r13, r11
	fmac_f32 r4, neg(r8), r12
	div_fmas_f32 r4, r4, r11, r12
	div_fixup_f32 r3, r4, r3, s1
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r3, r66, r3
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r3, r3, r70
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r4, r10, r71
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r8, r9, r72
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp125:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp126:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp127:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp128:
	.loc	2 200 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:312
	snop 0
	shl_b64 r10, 1, r6
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r5, 16, r5
	add_u16 r4_hi, 0, 0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	add_co_u32 r10, r1, r10
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r5, r5, r4
	shl_b32 r4, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r11, r2, r11
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r4, r4, r3
	snop 1
	stg_b64 r10, 0x20, r4 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 187 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_25
LBB2_34:                                ; %if.then1235.2
	.loc	2 169 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r3, 0xbfb8aa3b, r61
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r4, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r61, 0xbfb8aa3b, r9
	csel_b32 r5, r3, r4, s8
	exp_f32 r9, r9
.Ltmp130:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r5, r5, r9, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r9, r5, r5, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r4
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r5, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r9, 0xbfb8aa3b, r60
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp132:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r5, r9, r5, s1
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r5, r61, r5
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r5, r5, r65
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r60, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r4, s8
	exp_f32 r10, r10
.Ltmp134:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r4
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r10, 0xbfb8aa3b, r59
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp136:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r9, r60, r9
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r59, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r4, s8
	exp_f32 r11, r11
.Ltmp138:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r4
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r11, 0xbfb8aa3b, r58
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp140:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r10, r59, r10
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r58, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r4, s8
	exp_f32 r8, r8
.Ltmp142:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r4, neg(r8), r11
	fmac_f32 r11, r4, r11
	div_scale_f32 r4, s1, r3, s1
	mul_f32 r12, r4, r11
	fma_f32 r13, neg(r8), r12, r4
	fmac_f32 r12, r13, r11
	fmac_f32 r4, neg(r8), r12
	div_fmas_f32 r4, r4, r11, r12
	div_fixup_f32 r3, r4, r3, s1
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r3, r58, r3
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r3, r3, r62
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r4, r10, r63
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r8, r9, r64
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp144:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp145:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp146:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp147:
	.loc	2 200 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:312
	snop 0
	shl_b64 r10, 1, r6
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r5, 16, r5
	add_u16 r4_hi, 0, 0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	add_co_u32 r10, r1, r10
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r5, r5, r4
	shl_b32 r4, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r11, r2, r11
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r4, r4, r3
	snop 1
	stg_b64 r10, 0x40, r4 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 187 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_26
	bra LBB2_27
LBB2_35:                                ; %if.then1235.4
	.loc	2 169 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r0, 0xbfb8aa3b, r45
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r5, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r5, 0, s4
	fmka_f32 r8, r45, 0xbfb8aa3b, r8
	csel_b32 r4, r0, r3, s4
	exp_f32 r8, r8
.Ltmp149:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r4, r4, r8, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r8, r4, r4, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r4, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r8, 0xbfb8aa3b, r44
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp151:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r4, r8, r4, s6
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r4, r45, r4
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r4, r4, r49
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r5, 0, s4
	fmka_f32 r9, r44, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp153:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
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
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r9, 0xbfb8aa3b, r43
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp155:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r8, r44, r8
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r5, 0, s4
	fmka_f32 r10, r43, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp157:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
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
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r10, 0xbfb8aa3b, r42
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp159:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r9, r43, r9
.Ltmp160:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s4
	fmka_f32 r5, r42, 0xbfb8aa3b, r5
	csel_b32 r0, r0, r3, s4
	exp_f32 r5, r5
.Ltmp161:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r0, r0, r5, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r5, r0, r0, s6
	rcp_f32 r10, r5
	snop 0
	fmac_f32 r3, neg(r5), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r5), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r5), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r0, r42, r0
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r0, r0, r46
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r3, r9, r47
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r5, r8, r48
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp163:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp164:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp165:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp166:
	.loc	2 200 31 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	snop 0
	shl_b64 r4, 1, r6
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	add_co_u32 r10, 0x10000, r4
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r4, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r11, r5, 0
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r4, r3, r0
	snop 1
	stg_b64 r10, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 187 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_29
LBB2_36:                                ; %if.then1235.5
	.loc	2 169 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r0, 0xbfb8aa3b, r37
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r5, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r5, 0, s4
	fmka_f32 r8, r37, 0xbfb8aa3b, r8
	csel_b32 r4, r0, r3, s4
	exp_f32 r8, r8
.Ltmp168:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r4, r4, r8, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r8, r4, r4, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r4, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r8, 0xbfb8aa3b, r36
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp170:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r4, r8, r4, s6
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r4, r37, r4
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r4, r4, r41
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r5, 0, s4
	fmka_f32 r9, r36, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp172:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
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
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r9, 0xbfb8aa3b, r35
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp174:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r8, r36, r8
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r5, 0, s4
	fmka_f32 r10, r35, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp176:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
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
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r10, 0xbfb8aa3b, r34
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp178:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r9, r35, r9
.Ltmp179:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s4
	fmka_f32 r5, r34, 0xbfb8aa3b, r5
	csel_b32 r0, r0, r3, s4
	exp_f32 r5, r5
.Ltmp180:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r0, r0, r5, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r5, r0, r0, s6
	rcp_f32 r10, r5
	snop 0
	fmac_f32 r3, neg(r5), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r5), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r5), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r0, r34, r0
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r0, r0, r38
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r3, r9, r39
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r5, r8, r40
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp182:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp183:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp184:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp185:
	.loc	2 200 31 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	snop 0
	shl_b64 r4, 1, r6
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	add_co_u32 r10, 0x10020, r4
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r4, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r11, r5, 0
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r4, r3, r0
	snop 1
	stg_b64 r10, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 187 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_30
LBB2_37:                                ; %if.then1235.6
	.loc	2 169 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r0, 0xbfb8aa3b, r29
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r5, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r5, 0, s4
	fmka_f32 r8, r29, 0xbfb8aa3b, r8
	csel_b32 r4, r0, r3, s4
	exp_f32 r8, r8
.Ltmp187:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r4, r4, r8, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r8, r4, r4, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r4, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r8, 0xbfb8aa3b, r28
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp189:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r4, r8, r4, s6
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r4, r29, r4
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r4, r4, r33
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r5, 0, s4
	fmka_f32 r9, r28, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp191:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
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
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r9, 0xbfb8aa3b, r27
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp193:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r8, r28, r8
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r5, 0, s4
	fmka_f32 r10, r27, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp195:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
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
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r10, 0xbfb8aa3b, r26
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp197:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r9, r27, r9
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s4
	fmka_f32 r5, r26, 0xbfb8aa3b, r5
	csel_b32 r0, r0, r3, s4
	exp_f32 r5, r5
.Ltmp199:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r0, r0, r5, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r5, r0, r0, s6
	rcp_f32 r10, r5
	snop 0
	fmac_f32 r3, neg(r5), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r5), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r5), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r0, r26, r0
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r0, r0, r30
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r3, r9, r31
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r5, r8, r32
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp201:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp202:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp203:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp204:
	.loc	2 200 31 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	snop 0
	shl_b64 r4, 1, r6
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	add_co_u32 r10, 0x10040, r4
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r4, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r11, r5, 0
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r4, r3, r0
	snop 1
	stg_b64 r10, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 187 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:187:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_31
LBB2_38:                                ; %if.then1235.7
	.loc	2 169 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:169:27
	mul_f32 r0, 0xbfb8aa3b, r21
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r5, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r5, 0, s0
	fmka_f32 r8, r21, 0xbfb8aa3b, r8
	csel_b32 r4, r0, r3, s0
	exp_f32 r8, r8
.Ltmp206:
	.loc	2 177 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:177:26
	snop 0
	fmak_f32 r4, r4, r8, 0x3f800000
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_scale_f32 r8, r4, r4, s2
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s2, r4, s2
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 168 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:168:27
	mul_f32 r8, 0xbfb8aa3b, r20
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp208:
	.loc	2 181 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:181:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r4, r8, r4, s2
	.loc	2 185 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:185:20
	mul_f32 r4, r21, r4
	.loc	2 197 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:197:28
	mul_f32 r4, r4, r25
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r5, 0, s0
	fmka_f32 r9, r20, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
.Ltmp210:
	.loc	2 176 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:176:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
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
	.loc	2 167 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:167:27
	mul_f32 r9, 0xbfb8aa3b, r19
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r9
.Ltmp212:
	.loc	2 180 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:180:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	.loc	2 184 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:184:20
	mul_f32 r8, r20, r8
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r5, 0, s0
	fmka_f32 r10, r19, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
.Ltmp214:
	.loc	2 175 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:175:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
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
	.loc	2 166 27                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:166:27
	mul_f32 r10, 0xbfb8aa3b, r18
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r10
.Ltmp216:
	.loc	2 179 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:179:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	.loc	2 183 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:183:20
	mul_f32 r9, r19, r9
.Ltmp217:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s0
	fmka_f32 r5, r18, 0xbfb8aa3b, r5
	csel_b32 r0, r0, r3, s0
	exp_f32 r5, r5
.Ltmp218:
	.loc	2 174 26                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:174:26
	snop 0
	fmak_f32 r0, r0, r5, 0x3f800000
	.loc	2 178 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:178:24
	div_scale_f32 r5, r0, r0, s2
	rcp_f32 r10, r5
	snop 0
	fmac_f32 r3, neg(r5), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s2, r0, s2
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r5), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r5), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s2
	.loc	2 182 20                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:182:20
	mul_f32 r0, r18, r0
	.loc	2 194 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:194:28
	mul_f32 r0, r0, r22
	.loc	2 195 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:195:28
	mul_f32 r3, r9, r23
	.loc	2 196 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:196:28
	mul_f32 r5, r8, r24
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp220:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp221:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp222:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp223:
	.loc	2 200 31 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	snop 0
	shl_b64 r6, 1, r6
	add_co_u32 r1, r1, r6
	addc_co_u32 r2, r2, r7
	add_co_u32 r6, 0x10060, r1
	.loc	2 200 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	shl_b32 r1, 16, r4
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	.loc	2 200 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:31
	addc_co_u32 r7, r2, 0
	.loc	2 200 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:200:442
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 205 1 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:205:1
	snop 2
	endk
.Ltmp224:
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
; codeLenInByte = 13544
; NumMTRegsForWarps/PEU: 114
; NumSTRegsForWarps/PEU: 30
; MaxWarpsPerPEU: 4
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 207 0                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:207:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp225:
	.loc	2 216 23 prologue_end           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:216:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s8, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	and_b32 r4, r0, 16
	and_b32 r17, r0, 32
	add_u32 r4, r4, r1
	add_u32 r3, r17, r1
	and_b32 r5, r4, 16
	mul_u24 r4, r1, 9
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:217:24
	sshl_b64 s16, 2, s6
	sadd_co_u32 s0, s22, s16
	saddc_co_u32 s1, s23, s17
	.loc	2 218 38                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:218:38
	sshl_b32 s2, 7, s5
	.loc	2 218 47 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:218:47
	sadd_co_u32 s18, s18, s16
	saddc_co_u32 s19, s19, s17
	.loc	2 218 79                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:218:79
	sadd_co_u32 s16, s20, s16
	saddc_co_u32 s17, s21, s17
	.loc	2 217 24 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:217:24
	ldu_b32 s1, s0, 0x0
	.loc	2 218 47                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:218:47
	ldu_b32 s3, s18, 0x0
	.loc	2 218 79 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:218:79
	ldu_b32 s0, s16, 0x0
	and_b32 r6, r4, 8
	shl_b32 r4, 8, r1
	and_b32 r3, r3, 32
	and_b32 r2, 0x1fc0, r0
	xor_b32 r0, r0, r1
	and_b32 r29, 0x3f800, r4
	.loc	2 226 153 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:153
	or_b32 r4, r3, r6
	.loc	2 226 323 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:323
	or3_b32 r4, r4, r2, r5
	.loc	2 226 117                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:117
	or_b32 r2, r2, r3
	sshl_b32 s20, 18, s4
	and_b32 r30, r0, 56
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	shl_b32 r25, 1, r4
	.loc	2 226 238                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:238
	or3_b32 r2, r2, r5, r6
	smul_i32 s5, 0xe00000, s6
	or3_b32 r0, r29, s20, r30
	add_u32 r0, r0, s5
	.loc	2 226 323                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:323
	shl_b32 r2, 1, r2
	.loc	2 219 54 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:219:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 218 45                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:218:45
	sadd_co_i32 s2, s3, s2
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	add_u32 r4, 0, r25
	.loc	2 218 77                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:218:77
	ssub_co_i32 s16, s2, s0
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	add_u32 r26, 0x1000, r2
	.loc	2 226 427 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:427
	mad_i32 r8, r0, 2, s10
.Ltmp226:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r4
.Ltmp227:
	.loc	2 227 647                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:647
	or_b32 r7, r0, 64
.Ltmp228:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s21, md
.Ltmp229:
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	add_u32 r6, 0, r26
	.loc	2 226 566 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:566
	add_u32 r3, 0x10000, r0
.Ltmp230:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
	rfl_b32 s2, r6
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp231:
	.loc	2 227 436                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:436
	mad_i32 r8, r7, 2, s10
.Ltmp232:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp233:
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	add_u32 r27, 0x2000, r2
.Ltmp234:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp235:
	.loc	2 226 427                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:427
	mad_i32 r8, r3, 2, s10
	.loc	2 227 647                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:647
	add_u32 r3, 0x10040, r0
.Ltmp236:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
.Ltmp237:
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	add_u32 r7, 0, r27
.Ltmp238:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp239:
	.loc	2 227 436                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:436
	mad_i32 r8, r3, 2, s10
	.loc	2 226 566                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:566
	add_u32 r3, 0x20000, r0
.Ltmp240:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp241:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r7
.Ltmp242:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp243:
	.loc	2 226 427 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:427
	mad_i32 r8, r3, 2, s10
	.loc	2 227 647                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:647
	add_u32 r3, 0x20040, r0
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	add_u32 r28, 0x3000, r2
.Ltmp244:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
.Ltmp245:
	.loc	2 226 566                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:566
	add_u32 r2, 0x30000, r0
.Ltmp246:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp247:
	.loc	2 227 436                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:436
	mad_i32 r8, r3, 2, s10
.Ltmp248:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
.Ltmp249:
	.loc	2 226 427                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:427
	mad_i32 r2, r2, 2, s10
.Ltmp250:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp251:
	.loc	2 226 73                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:226:73
	add_u32 r8, 0, r28
	.loc	2 227 647                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:647
	add_u32 r0, 0x30040, r0
.Ltmp252:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r8
	sashr_i32 s17, 31, s16
	shr_b32 r9, 1, r1
	shr_b32 r11, 5, r1
	and_b32 r5, 0x1e0, r9
	smov_b32 md, s2
	add_shl_u32 r9, r11, r9, 4
	ldg_b128 r0, r2, 0x0 bsm
.Ltmp253:
	.loc	2 227 436                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:227:436
	mad_i32 r2, r0, 2, s10
.Ltmp254:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x4000, md
	sadd_co_u32 s18, 0x100, s10
	ldg_b128 r0, r2, 0x0 bsm
	saddc_co_u32 s19, s11, 0
	sadd_co_u32 s10, 0x180, s10
	shr_b32 r11, 4, r1
	saddc_co_u32 s11, s11, 0
	sadd_co_i32 s22, 0x4000, 0
	and_b32 r2, r1, 15
	shl_b32 r3, 11, r1
.Ltmp255:
	.loc	2 229 3                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:229:3
	sadd_co_i32 s5, s5, s20
	or_b32 r0, r5, r2
	and_b32 r32, 0x7800, r3
	shl_b32 r3, 6, r1
	or3_b32 r29, s5, r29, r30
	shl_b32 r31, 10, r1
	and_b32 r9, r9, 16
	add_shl_u32 r11, r11, r1, 3
	add_u32 r25, s22, r25
	add_u32 r26, s22, r26
	add_u32 r27, s22, r27
	add_u32 r28, s22, r28
	sshl_b64 s22, 12, s16
	smov_b32 s5, 0xf0000
	and_b32 r16, 0x3c0, r3
	mov_b32 r30, s22
	and_or_b32 r31, r31, s5, r32
	add_u32 r10, s16, r0
	and_or_b32 r24, r11, 8, r9
	cmp_gt_u32 s6, 0x2380, r10
	add_u32 r10, r10, 16
	or_b32 r19, 0x400, r16
	or_b32 r20, r24, r17
	or_b32 r21, 0x800, r16
	or_b32 r22, 0xc00, r16
	or_b32 r23, 0x1000, r16
	or_b32 r33, 0x1400, r16
	or_b32 r34, 0x1800, r16
	or_b32 r35, 0x1c00, r16
	xor_b32 r36, r17, 32
	and_or_b32 r30, r1, 48, r30
	shl_b32 r32, 1, r31
	or_b32 r11, r20, r21
	or_b32 r12, r20, r22
	or_b32 r13, r20, r23
	or_b32 r14, r20, r33
	or_b32 r15, r20, r34
	or_b32 r18, r24, r16
	or_b32 r16, r20, r35
	add_co_u32 r30, r30, r32
	cmp_gt_u32 s2, 0x2380, r10
	or_b32 r10, r20, r19
	or3_b32 r20, r24, r22, r36
	or3_b32 r22, r24, r33, r36
	mov_b32 r37, 0
	mov_b32 r33, s23
	addc_co_u32 r31, r33, r37
	add_co_u32 r30, s14, r30
	mov_b32 r32, s15
	addc_co_u32 r31, r32, r31
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r32, 0, 0
	or_b32 r9, r18, r17
	or_b32 r17, r18, r36
	or3_b32 r18, r24, r19, r36
	or3_b32 r19, r24, r21, r36
	or3_b32 r21, r24, r23, r36
	or3_b32 r23, r24, r34, r36
	or3_b32 r24, r24, r35, r36
	shl_b64 r34, 0, 0
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
	shr_b32 r3, 2, r1
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
.Ltmp256:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s21
	bra LBB3_2
.Ltmp257:
	.p2align	5
LBB3_1:                                 ; %for.inc660
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 229 31                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:229:31
	sadd_co_u32 s14, 0x100, s14
	saddc_co_u32 s15, s15, 0
	scmp_eq_u64 0x1000, s14
	add_u32 r29, 0x80, r29
	.loc	2 229 3 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:229:3
	bra_smsks LBB3_22
LBB3_2:                                 ; %for.cond154.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r104, 0, 0
	shl_b64 r106, 0, 0
	.loc	2 234 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:234:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r98, r30, s14
	mov_b32 r96, s15
	addc_co_u32 r99, r31, r96
	.loc	2 235 17 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:235:17
	snop 1
	ldg_b128 r104, r98, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r108, 0, 0
	shl_b64 r110, 0, 0
	.loc	2 234 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:234:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r96, r30, s14
	mov_b32 r97, s15
	addc_co_u32 r97, r31, r97
	.loc	2 235 17 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:235:17
	add_co_u32 r96, 0x10000, r96
	addc_co_u32 r97, r97, 0
	snop 1
	ldg_b128 r108, r96, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r96, 0, 0
	shl_b64 r98, 0, 0
	.loc	2 234 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:234:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r98, r30, s14
	mov_b32 r96, s15
	addc_co_u32 r99, r31, r96
	.loc	2 235 17 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:235:17
	snop 1
	ldg_b128 r96, r98, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r100, 0, 0
	shl_b64 r102, 0, 0
	.loc	2 234 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:234:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB3_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r100, r30, s14
	mov_b32 r101, s15
	addc_co_u32 r101, r31, r101
	.loc	2 235 17 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:235:17
	add_co_u32 r100, 0x10040, r100
	addc_co_u32 r101, r101, 0
	snop 1
	ldg_b128 r100, r100, 0x0
LBB3_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
.Ltmp258:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(5)
	barrier
.Ltmp259:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp260:
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r112, r9, 0x0
	lds_b128 r116, r10, 0x0
	lds_b128 r120, r11, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r112, r104, r92
	mma_16x16x16f16 r60, r112, r108, r60
	mma_16x16x16f16 r92, r114, r106, r92
	mma_16x16x16f16 r60, r114, r110, r60
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r112, r12, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r116, r104, r88
	mma_16x16x16f16 r56, r116, r108, r56
	mma_16x16x16f16 r88, r118, r106, r88
	mma_16x16x16f16 r56, r118, r110, r56
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r116, r13, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r120, r104, r84
	mma_16x16x16f16 r52, r120, r108, r52
	mma_16x16x16f16 r84, r122, r106, r84
	mma_16x16x16f16 r52, r122, r110, r52
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r120, r14, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r112, r104, r80
	mma_16x16x16f16 r48, r112, r108, r48
	mma_16x16x16f16 r80, r114, r106, r80
	mma_16x16x16f16 r48, r114, r110, r48
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r112, r15, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r116, r104, r76
	mma_16x16x16f16 r44, r116, r108, r44
	mma_16x16x16f16 r76, r118, r106, r76
	mma_16x16x16f16 r44, r118, r110, r44
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r116, r16, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r120, r104, r72
	mma_16x16x16f16 r40, r120, r108, r40
	mma_16x16x16f16 r72, r122, r106, r72
	mma_16x16x16f16 r40, r122, r110, r40
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r120, r17, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r112, r104, r68
	mma_16x16x16f16 r36, r112, r108, r36
	mma_16x16x16f16 r68, r114, r106, r68
	mma_16x16x16f16 r36, r114, r110, r36
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r112, r18, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r116, r104, r64
	mma_16x16x16f16 r32, r116, r108, r32
	mma_16x16x16f16 r64, r118, r106, r64
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r104, r19, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	mma_16x16x16f16 r32, r118, r110, r32
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r108, r20, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r120, r96, r92
	mma_16x16x16f16 r60, r120, r100, r60
	mma_16x16x16f16 r92, r122, r98, r92
	mma_16x16x16f16 r60, r122, r102, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r112, r96, r88
	mma_16x16x16f16 r56, r112, r100, r56
	mma_16x16x16f16 r88, r114, r98, r88
	mma_16x16x16f16 r56, r114, r102, r56
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r112, r21, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r104, r96, r84
	mma_16x16x16f16 r52, r104, r100, r52
	mma_16x16x16f16 r84, r106, r98, r84
	mma_16x16x16f16 r52, r106, r102, r52
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r104, r22, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r108, r96, r80
	mma_16x16x16f16 r48, r108, r100, r48
	mma_16x16x16f16 r80, r110, r98, r80
	mma_16x16x16f16 r48, r110, r102, r48
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r108, r23, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r112, r96, r76
	mma_16x16x16f16 r44, r112, r100, r44
	mma_16x16x16f16 r76, r114, r98, r76
	mma_16x16x16f16 r44, r114, r102, r44
	.loc	2 245 48                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:245:48
	lds_b128 r112, r24, 0x0
	.loc	2 251 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:251:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r104, r96, r72
	mma_16x16x16f16 r40, r104, r100, r40
	mma_16x16x16f16 r72, r106, r98, r72
	mma_16x16x16f16 r40, r106, r102, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r108, r96, r68
	mma_16x16x16f16 r36, r108, r100, r36
	mma_16x16x16f16 r68, r110, r98, r68
	mma_16x16x16f16 r36, r110, r102, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r112, r96, r64
	mma_16x16x16f16 r32, r112, r100, r32
	mma_16x16x16f16 r64, r114, r98, r64
	mma_16x16x16f16 r32, r114, r102, r32
.Ltmp261:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp262:
	.loc	2 260 16                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:260:16
	mov_b32 r96, 0xf00
	mov_b32 r97, 0
	cmp_lg_u64 s20, s14, r96
	scmp_eq_u64 0xf00, s14
	.loc	2 260 9 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:260:9
	snop 0
	bra_smsks LBB3_12
; %bb.11:                               ; %for.cond333.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 262 433 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:262:433
	mad_i32 r96, r29, 2, s18
.Ltmp263:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r96, 0x0 bsm
.Ltmp264:
	.loc	2 262 433                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:262:433
	add_u32 r96, 0x10000, r29
	mad_i32 r96, r96, 2, s18
.Ltmp265:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r96, 0x0 bsm
.Ltmp266:
	.loc	2 262 433                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:262:433
	add_u32 r96, 0x20000, r29
	mad_i32 r96, r96, 2, s18
.Ltmp267:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r8
	ldg_b128 r0, r96, 0x0 bsm
.Ltmp268:
	.loc	2 262 433                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:262:433
	add_u32 r96, 0x30000, r29
	mad_i32 r96, r96, 2, s18
.Ltmp269:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r96, 0x0 bsm
	smov_b32 md, s5
.Ltmp270:
LBB3_12:                                ; %if.end401
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 10 is_stmt 0                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b64 r104, 0, 0
	shl_b64 r106, 0, 0
	.loc	2 269 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:269:117
	and_xmsk s22, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then429
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r98, r30, s14
	mov_b32 r96, s15
	addc_co_u32 r99, r31, r96
	.loc	2 270 19 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:270:19
	snop 1
	ldg_b128 r104, r98, 0x80
LBB3_14:                                ; %if.end484
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r108, 0, 0
	shl_b64 r110, 0, 0
	.loc	2 269 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:269:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then429.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r96, r30, s14
	mov_b32 r97, s15
	addc_co_u32 r97, r31, r97
	.loc	2 270 19 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:270:19
	add_co_u32 r96, 0x10080, r96
	addc_co_u32 r97, r97, 0
	snop 1
	ldg_b128 r108, r96, 0x0
LBB3_16:                                ; %if.end484.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r96, 0, 0
	shl_b64 r98, 0, 0
	.loc	2 269 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:269:117
	and_xmsk s22, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then429.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r98, r30, s14
	mov_b32 r96, s15
	addc_co_u32 r99, r31, r96
	.loc	2 270 19 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:270:19
	snop 1
	ldg_b128 r96, r98, 0xc0
LBB3_18:                                ; %if.end484.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r100, 0, 0
	shl_b64 r102, 0, 0
	.loc	2 269 117 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:269:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then429.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r100, r30, s14
	mov_b32 r101, s15
	addc_co_u32 r101, r31, r101
	.loc	2 270 19 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:270:19
	add_co_u32 r100, 0x100c0, r100
	addc_co_u32 r101, r101, 0
	snop 1
	ldg_b128 r100, r100, 0x0
LBB3_20:                                ; %if.end484.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
.Ltmp271:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp272:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp273:
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	add_i32 r112, 0x4000, r9
	add_i32 r113, 0x4000, r10
	snop 0
	lds_b128 r114, r112, 0x0
	add_i32 r112, 0x4000, r11
	lds_b128 r118, r113, 0x0
	add_i32 r113, 0x4000, r12
	lds_b128 r122, r112, 0x0
	add_i32 r112, 0x4000, r13
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r114, r104, r92
	mma_16x16x16f16 r60, r114, r108, r60
	mma_16x16x16f16 r92, r116, r106, r92
	mma_16x16x16f16 r60, r116, r110, r60
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r114, r113, 0x0
	add_i32 r113, 0x4000, r14
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r118, r104, r88
	mma_16x16x16f16 r56, r118, r108, r56
	mma_16x16x16f16 r88, r120, r106, r88
	mma_16x16x16f16 r56, r120, r110, r56
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r118, r112, 0x0
	add_i32 r112, 0x4000, r15
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r122, r104, r84
	mma_16x16x16f16 r52, r122, r108, r52
	mma_16x16x16f16 r84, r124, r106, r84
	mma_16x16x16f16 r52, r124, r110, r52
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r122, r113, 0x0
	add_i32 r113, 0x4000, r16
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r114, r104, r80
	mma_16x16x16f16 r48, r114, r108, r48
	mma_16x16x16f16 r80, r116, r106, r80
	mma_16x16x16f16 r48, r116, r110, r48
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r114, r112, 0x0
	add_i32 r112, 0x4000, r17
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r118, r104, r76
	mma_16x16x16f16 r44, r118, r108, r44
	mma_16x16x16f16 r76, r120, r106, r76
	mma_16x16x16f16 r44, r120, r110, r44
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r118, r113, 0x0
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r122, r104, r72
	mma_16x16x16f16 r40, r122, r108, r40
	mma_16x16x16f16 r72, r124, r106, r72
	mma_16x16x16f16 r40, r124, r110, r40
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r122, r112, 0x0
	add_i32 r112, 0x4000, r18
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r114, r104, r68
	mma_16x16x16f16 r36, r114, r108, r36
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r112, r112, 0x0
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	mma_16x16x16f16 r68, r116, r106, r68
	mma_16x16x16f16 r36, r116, r110, r36
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r118, r104, r64
	mma_16x16x16f16 r32, r118, r108, r32
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	add_i32 r104, 0x4000, r19
	add_i32 r105, 0x4000, r20
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	mma_16x16x16f16 r64, r120, r106, r64
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r106, r104, 0x0
	lds_b128 r116, r105, 0x0
	add_i32 r104, 0x4000, r21
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	mma_16x16x16f16 r32, r120, r110, r32
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	add_i32 r105, 0x4000, r22
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r122, r96, r92
	mma_16x16x16f16 r60, r122, r100, r60
	mma_16x16x16f16 r92, r124, r98, r92
	mma_16x16x16f16 r60, r124, r102, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r112, r96, r88
	mma_16x16x16f16 r56, r112, r100, r56
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r110, r104, 0x0
	add_i32 r104, 0x4000, r23
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	mma_16x16x16f16 r88, r114, r98, r88
	mma_16x16x16f16 r56, r114, r102, r56
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r106, r96, r84
	mma_16x16x16f16 r52, r106, r100, r52
	mma_16x16x16f16 r84, r108, r98, r84
	mma_16x16x16f16 r52, r108, r102, r52
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r106, r105, 0x0
	add_i32 r105, 0x4000, r24
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r116, r96, r80
	mma_16x16x16f16 r48, r116, r100, r48
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r114, r104, 0x0
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
	mma_16x16x16f16 r80, r118, r98, r80
	mma_16x16x16f16 r48, r118, r102, r48
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r110, r96, r76
	mma_16x16x16f16 r44, r110, r100, r44
	mma_16x16x16f16 r76, r112, r98, r76
	mma_16x16x16f16 r44, r112, r102, r44
	.loc	2 280 50                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:280:50
	lds_b128 r110, r105, 0x0
	.loc	2 286 59                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:286:59
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
.Ltmp274:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp275:
	.loc	2 295 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:295:9
	sandn_b64 cmsk, xmsk, s20
	snop 0
	bra_cmsks LBB3_1
; %bb.21:                               ; %for.cond590.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 297 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:297:442
	mad_i32 r96, r29, 2, s10
.Ltmp276:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r25
	smov_b32 s5, md
	snop 2
	smov_b32 md, s17
	rfl_b32 s17, r26
	ldg_b128 r0, r96, 0x0 bsm
.Ltmp277:
	.loc	2 297 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:297:442
	add_u32 r96, 0x10000, r29
	mad_i32 r96, r96, 2, s10
.Ltmp278:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r27
	ldg_b128 r0, r96, 0x0 bsm
.Ltmp279:
	.loc	2 297 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:297:442
	add_u32 r96, 0x20000, r29
	mad_i32 r96, r96, 2, s10
.Ltmp280:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r28
	ldg_b128 r0, r96, 0x0 bsm
.Ltmp281:
	.loc	2 297 442                       ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:297:442
	add_u32 r96, 0x30000, r29
	mad_i32 r96, r96, 2, s10
.Ltmp282:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r96, 0x0 bsm
	smov_b32 md, s5
	bra LBB3_1
.Ltmp283:
LBB3_22:                                ; %for.cond663.preheader
	.loc	2 219 93                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:219:93
	sadd_co_i32 s0, s1, s0
.Ltmp284:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp285:
	.loc	2 301 3                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:301:3
	shl_b64 r6, 0, s12
	.loc	2 303 92                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:303:92
	cmp_gt_i32 s10, s0, r0
	.loc	2 301 3                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:301:3
	mad_i32 r8, s16, 2, r6
	shl_b32 r4, 1, r2
	add_co_u32 r7, r8, r4
	addc_co_u32 r8, r9, 0
	add_u16 r6_lo, 0, 0
	.loc	2 303 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:303:9
	and_xmsk s12, s10
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then679
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r6_lo, 0, 0
	.loc	2 305 114 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:305:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then701
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r4, 1, r5
	add_co_u32 r10, r7, r4
	addc_co_u32 r11, r8, 0
	.loc	2 306 19 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:306:19
	snop 1
	ldg_u16 r6, r10, 0x0
LBB3_25:                                ; %Flow329
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_26:                                ; %for.inc722
	sor_b64 xmsk, xmsk, s12
	.loc	2 303 63 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:303:63
	or_b32 r10, r5, 16
	.loc	2 303 92 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:303:92
	or_b32 r4, r2, r10
	cmp_gt_i32 s14, s0, r4
	add_u16 r4_lo, 0, 0
	.loc	2 303 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:303:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.27:                               ; %if.then679.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r4_lo, 0, 0
	.loc	2 305 114 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:305:114
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB3_29
; %bb.28:                               ; %if.then701.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r4, 1, r10
	add_co_u32 r4, r7, r4
	addc_co_u32 r5, r8, 0
	.loc	2 306 19 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:306:19
	snop 1
	ldg_u16 r4, r4, 0x0
LBB3_29:                                ; %Flow328
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_30:                                ; %for.inc722.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r1, 6, r1
	mul_u24 r8, 0x38000, r1
	mul_u24 r1, 0x1c00, r2
	mov_b32 r9, 0
	mov_b32 r2, 0x80
	mad_u32 r8, s4, r2, r8
	add_co_u32 r8, r8, r1
	addc_co_u32 r9, r9, 0
	mov_b32 r1, 0x1c00
	mad_i32 r8, s16, r1, r8
	and_b32 r1, r3, 12
	.loc	2 314 3 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:314:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s8, r1
	mov_b32 r2, s9
	addc_co_u32 r2, r2, 0
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_38
; %bb.31:                               ; %for.inc845
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_41
LBB3_32:                                ; %for.inc845.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_44
LBB3_33:                                ; %for.inc845.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_47
LBB3_34:                                ; %for.inc845.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_50
LBB3_35:                                ; %for.inc845.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_53
LBB3_36:                                ; %for.inc845.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_56
LBB3_37:                                ; %for.inc845.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_59
	bra LBB3_62
LBB3_38:                                ; %if.then739
.Ltmp286:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp287:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp288:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp289:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp290:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then808
.Ltmp291:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp292:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r95, r3
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp294:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r7, r94, r3
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r7_lo, r7
.Ltmp296:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r7_hi, 0, 0
	or_b32 r11, r5, r7
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r93, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r92, r3
.Ltmp297:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp298:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp299:
	.loc	2 329 28 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r12, 1, r8
	add_co_u32 r12, r1, r12
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r10, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r13, r2, r13
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r12, 0x0, r10 devc
LBB3_40:                                ; %Flow327
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_32
LBB3_41:                                ; %if.then739.1
.Ltmp300:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp301:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp302:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp303:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp304:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_43
; %bb.42:                               ; %if.then808.1
.Ltmp305:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp306:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r91, r3
.Ltmp307:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp308:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r7, r90, r3
.Ltmp309:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r7_lo, r7
.Ltmp310:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r7_hi, 0, 0
	or_b32 r11, r5, r7
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r89, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r88, r3
.Ltmp311:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp312:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp313:
	.loc	2 329 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:312
	shl_b64 r12, 1, r8
	.loc	2 329 28 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r12, r1, r12
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r10, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r13, r2, r13
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r12, 0x20, r10 devc
LBB3_43:                                ; %Flow326
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_33
LBB3_44:                                ; %if.then739.2
.Ltmp314:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp315:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp316:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp317:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp318:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then808.2
.Ltmp319:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp320:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r87, r3
.Ltmp321:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp322:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r7, r86, r3
.Ltmp323:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r7_lo, r7
.Ltmp324:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r7_hi, 0, 0
	or_b32 r11, r5, r7
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r85, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r84, r3
.Ltmp325:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp326:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp327:
	.loc	2 329 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:312
	shl_b64 r12, 1, r8
	.loc	2 329 28 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r12, r1, r12
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r10, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r13, r2, r13
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r12, 0x40, r10 devc
LBB3_46:                                ; %Flow325
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_34
LBB3_47:                                ; %if.then739.3
.Ltmp328:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp329:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp331:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp332:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_49
; %bb.48:                               ; %if.then808.3
.Ltmp333:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp334:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r83, r3
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp336:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r7, r82, r3
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r7_lo, r7
.Ltmp338:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r7_hi, 0, 0
	or_b32 r11, r5, r7
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r81, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r80, r3
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp340:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp341:
	.loc	2 329 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:312
	shl_b64 r12, 1, r8
	.loc	2 329 28 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r12, r1, r12
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r10, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r13, r2, r13
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r12, 0x60, r10 devc
LBB3_49:                                ; %Flow324
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_35
LBB3_50:                                ; %if.then739.4
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp343:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp345:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp346:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then808.4
.Ltmp347:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp348:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r79, r3
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp350:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r7, r78, r3
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r7_lo, r7
.Ltmp352:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r7_hi, 0, 0
	or_b32 r11, r5, r7
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r77, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r76, r3
.Ltmp353:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp354:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp355:
	.loc	2 329 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:312
	shl_b64 r12, 1, r8
	.loc	2 329 28 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r12, r1, r12
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r10, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r13, r2, r13
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r12, 0x80, r10 devc
LBB3_52:                                ; %Flow323
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_36
LBB3_53:                                ; %if.then739.5
.Ltmp356:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp357:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp358:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp360:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_55
; %bb.54:                               ; %if.then808.5
.Ltmp361:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp362:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r75, r3
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp364:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r7, r74, r3
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r7_lo, r7
.Ltmp366:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r7_hi, 0, 0
	or_b32 r11, r5, r7
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r73, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r72, r3
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp368:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp369:
	.loc	2 329 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:312
	shl_b64 r12, 1, r8
	.loc	2 329 28 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r12, r1, r12
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r10, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r13, r2, r13
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r12, 0xa0, r10 devc
LBB3_55:                                ; %Flow322
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_37
LBB3_56:                                ; %if.then739.6
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp371:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp374:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.then808.6
.Ltmp375:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp376:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r71, r3
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp378:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r7, r70, r3
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r7_lo, r7
.Ltmp380:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r7_hi, 0, 0
	or_b32 r11, r5, r7
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r69, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r68, r3
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp382:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp383:
	.loc	2 329 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:312
	shl_b64 r12, 1, r8
	.loc	2 329 28 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r12, r1, r12
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r10, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r13, r2, r13
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r12, 0xc0, r10 devc
LBB3_58:                                ; %Flow321
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_62
LBB3_59:                                ; %if.then739.7
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp385:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp388:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_61
; %bb.60:                               ; %if.then808.7
.Ltmp389:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r6_lo
.Ltmp390:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r5, r67, r3
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp392:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r6, r66, r3
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r6_lo, r6
.Ltmp394:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r5, 16, r5
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r6_hi, 0, 0
	or_b32 r7, r5, r6
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r5, r65, r3
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r3, r64, r3
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp396:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp397:
	.loc	2 329 312 is_stmt 1             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:312
	shl_b64 r10, 1, r8
	.loc	2 329 28 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r10, r1, r10
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r6, r5, r3
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	addc_co_u32 r11, r2, r11
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0xe0, r6 devc
LBB3_61:                                ; %Flow320
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
LBB3_62:                                ; %for.inc845.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 65 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:65
	or_b32 r0, r0, 16
	.loc	2 315 94 is_stmt 0              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:94
	cmp_gt_i32 s0, s0, r0
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_71
; %bb.63:                               ; %for.inc845.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_74
LBB3_64:                                ; %for.inc845.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_77
LBB3_65:                                ; %for.inc845.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_80
LBB3_66:                                ; %for.inc845.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_83
LBB3_67:                                ; %for.inc845.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_86
LBB3_68:                                ; %for.inc845.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_89
LBB3_69:                                ; %for.inc845.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_92
LBB3_70:                                ; %for.inc845.15
	.loc	2 334 1 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:334:1
	snop 0
	endk
LBB3_71:                                ; %if.then739.8
.Ltmp398:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp399:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp402:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_73
; %bb.72:                               ; %if.then808.8
.Ltmp403:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp404:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r63, r0
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp406:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r5, r62, r0
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp408:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r5_hi, 0, 0
	or_b32 r7, r3, r5
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r61, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r60, r0
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp410:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp411:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r10, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r6, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r3, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0x0, r6 devc
LBB3_73:                                ; %Flow319
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_64
LBB3_74:                                ; %if.then739.9
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp413:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp416:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then808.9
.Ltmp417:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp418:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r59, r0
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp420:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r5, r58, r0
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp422:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r5_hi, 0, 0
	or_b32 r7, r3, r5
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r57, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r56, r0
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp424:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp425:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r10, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r6, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r3, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0x0, r6 devc
LBB3_76:                                ; %Flow318
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_65
LBB3_77:                                ; %if.then739.10
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp427:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp430:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_79
; %bb.78:                               ; %if.then808.10
.Ltmp431:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp432:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r55, r0
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp434:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r5, r54, r0
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp436:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r5_hi, 0, 0
	or_b32 r7, r3, r5
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r53, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r52, r0
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp438:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp439:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r10, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r6, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r3, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0x0, r6 devc
LBB3_79:                                ; %Flow317
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_66
LBB3_80:                                ; %if.then739.11
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp441:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp444:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_82
; %bb.81:                               ; %if.then808.11
.Ltmp445:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp446:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r51, r0
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp448:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r5, r50, r0
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp450:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r5_hi, 0, 0
	or_b32 r7, r3, r5
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r49, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r48, r0
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp452:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp453:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r10, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r6, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r3, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0x0, r6 devc
LBB3_82:                                ; %Flow316
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_67
LBB3_83:                                ; %if.then739.12
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp455:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp458:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_85
; %bb.84:                               ; %if.then808.12
.Ltmp459:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp460:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r47, r0
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp462:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r5, r46, r0
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp464:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r5_hi, 0, 0
	or_b32 r7, r3, r5
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r45, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r44, r0
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp466:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp467:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r10, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r6, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r3, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0x0, r6 devc
LBB3_85:                                ; %Flow315
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_68
LBB3_86:                                ; %if.then739.13
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp469:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp472:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_88
; %bb.87:                               ; %if.then808.13
.Ltmp473:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp474:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r43, r0
.Ltmp475:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp476:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r5, r42, r0
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp478:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r5_hi, 0, 0
	or_b32 r7, r3, r5
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r41, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r40, r0
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp480:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp481:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r10, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r6, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0x0, r6 devc
LBB3_88:                                ; %Flow314
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_69
LBB3_89:                                ; %if.then739.14
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp483:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp485:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp486:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_91
; %bb.90:                               ; %if.then808.14
.Ltmp487:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp488:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r39, r0
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp490:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r5, r38, r0
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp492:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r5_hi, 0, 0
	or_b32 r7, r3, r5
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r37, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r36, r0
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp494:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp495:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r10, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r6, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r10, 0x0, r6 devc
LBB3_91:                                ; %Flow313
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 315 9 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:315:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_70
LBB3_92:                                ; %if.then739.15
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp497:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp499:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp500:
	.loc	2 327 11 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:327:11
	snop 0
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_70
; %bb.93:                               ; %if.then808.15
.Ltmp501:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp502:
	.loc	2 323 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:323:22
	mul_f32 r3, r35, r0
.Ltmp503:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp504:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	mul_f32 r4, r34, r0
.Ltmp505:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp506:
	.loc	2 322 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:322:22
	shl_b32 r3, 16, r3
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 321 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:321:22
	mul_f32 r3, r33, r0
	.loc	2 320 22                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:320:22
	mul_f32 r0, r32, r0
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp508:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp509:
	.loc	2 326 40 is_stmt 1              ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	shl_b64 r6, 1, r8
	.loc	2 326 40                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:326:40
	or_b32 r4, r3, r0
	.loc	2 329 28                        ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:28
	add_co_u32 r0, r1, r6
	addc_co_u32 r1, r2, r7
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 329 442 is_stmt 0             ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:329:442
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 334 1 is_stmt 1               ; race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp:334:1
	snop 2
	endk
.Ltmp510:
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
; codeLenInByte = 12176
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
	.byte	1                               ; Abbrev [1] 0xb:0x424 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x60:0x214 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x71:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	36                              ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	37                              ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x89:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	38                              ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x95:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	39                              ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa1:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp38                         ; DW_AT_low_pc
	.long	.Ltmp39-.Ltmp38                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	53                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xb5:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp39                         ; DW_AT_low_pc
	.long	.Ltmp40-.Ltmp39                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	54                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc9:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp40                         ; DW_AT_low_pc
	.long	.Ltmp41-.Ltmp40                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	55                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xdd:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp40                         ; DW_AT_low_pc
	.long	.Ltmp41-.Ltmp40                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xf2:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp42                         ; DW_AT_low_pc
	.long	.Ltmp43-.Ltmp42                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x106:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp42                         ; DW_AT_low_pc
	.long	.Ltmp43-.Ltmp42                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	89                              ; DW_AT_call_line
	.byte	35                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x127:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	90                              ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x133:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp54                         ; DW_AT_low_pc
	.long	.Ltmp55-.Ltmp54                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x147:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x15b:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp56                         ; DW_AT_low_pc
	.long	.Ltmp57-.Ltmp56                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	106                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x16f:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp56                         ; DW_AT_low_pc
	.long	.Ltmp57-.Ltmp56                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x184:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp58                         ; DW_AT_low_pc
	.long	.Ltmp59-.Ltmp58                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	137                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x198:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp58                         ; DW_AT_low_pc
	.long	.Ltmp59-.Ltmp58                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1ad:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	35                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1b9:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	141                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c5:0x14 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp70                         ; DW_AT_low_pc
	.long	.Ltmp71-.Ltmp70                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	24                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1d9:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	173                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1e5:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	172                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1f1:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	171                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1fd:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	170                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x209:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	198                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x215:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x222:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x22f:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x23e:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	199                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x24a:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x257:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x264:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x274:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x27a:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x280:0x1ae DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x291:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x29d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	227                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2a9:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp258                        ; DW_AT_low_pc
	.long	.Ltmp259-.Ltmp258               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	241                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x2bd:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp259                        ; DW_AT_low_pc
	.long	.Ltmp260-.Ltmp259               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	242                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2d1:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp259                        ; DW_AT_low_pc
	.long	.Ltmp260-.Ltmp259               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2e6:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp261                        ; DW_AT_low_pc
	.long	.Ltmp262-.Ltmp261               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	259                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2fb:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp261                        ; DW_AT_low_pc
	.long	.Ltmp262-.Ltmp261               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x310:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x31d:0x15 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp271                        ; DW_AT_low_pc
	.long	.Ltmp272-.Ltmp271               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	276                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x332:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp272                        ; DW_AT_low_pc
	.long	.Ltmp273-.Ltmp272               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	277                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x347:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp272                        ; DW_AT_low_pc
	.long	.Ltmp273-.Ltmp272               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x35c:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp274                        ; DW_AT_low_pc
	.long	.Ltmp275-.Ltmp274               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	294                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x371:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp274                        ; DW_AT_low_pc
	.long	.Ltmp275-.Ltmp274               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x386:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	297                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x393:0x14 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp284                        ; DW_AT_low_pc
	.long	.Ltmp285-.Ltmp284               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	219                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3a7:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	324                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3b4:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3c1:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3ce:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3dd:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	325                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3ea:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3f7:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x404:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x413:0x1a DW_TAG_inlined_subroutine
	.long	634                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	319                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x420:0xc DW_TAG_inlined_subroutine
	.long	628                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
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
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
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
	.quad	0
	.quad	0
.Ldebug_ranges10:
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
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
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
	.quad	0
	.quad	0
.Ldebug_ranges13:
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
	.quad	0
	.quad	0
.Ldebug_ranges14:
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
	.quad	0
	.quad	0
.Ldebug_ranges15:
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
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v011_inverse_swizzle_bsm_sc-16g/codegen/v011b/v011_inverse_swizzle_bsm_sc-16g_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=185
.Linfo_string3:
	.asciz	"memcpy_async<16, false>"       ; string offset=206
.Linfo_string4:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=230
.Linfo_string5:
	.asciz	"__barrier"                     ; string offset=325
.Linfo_string6:
	.asciz	"__syncthreads"                 ; string offset=335
.Linfo_string7:
	.asciz	"min"                           ; string offset=349
.Linfo_string8:
	.asciz	"exp2f"                         ; string offset=353
.Linfo_string9:
	.asciz	"__float2half_rn"               ; string offset=359
.Linfo_string10:
	.asciz	"__floats2half2_rn"             ; string offset=375
.Linfo_string11:
	.asciz	"__float22half2_rn"             ; string offset=393
.Linfo_string12:
	.asciz	"__half2float"                  ; string offset=411
.Linfo_string13:
	.asciz	"operator float"                ; string offset=424
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=439
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=453
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
    .mtreg_count:    114
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    30
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
