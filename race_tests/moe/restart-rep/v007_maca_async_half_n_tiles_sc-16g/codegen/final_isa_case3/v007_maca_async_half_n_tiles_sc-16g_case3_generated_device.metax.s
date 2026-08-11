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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 21 23 prologue_end            ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:21:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s8, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	shr_b32 r12, 3, r1
	and_b32 r13, r0, 56
	.loc	2 36 3                          ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:36:3
	shl_add_u32 r2, 4, r1, 0
	smov_b32 s24, 0x3c0
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r18, 0, 0
	.loc	2 21 23 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:21:23
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 22 24                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:22:24
	sshl_b64 s16, 2, s6
	sadd_co_u32 s0, s22, s16
	saddc_co_u32 s1, s23, s17
	.loc	2 23 38                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:23:38
	sshl_b32 s2, 7, s5
	.loc	2 23 47 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:23:47
	sadd_co_u32 s18, s18, s16
	saddc_co_u32 s19, s19, s17
	.loc	2 23 79                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:23:79
	sadd_co_u32 s16, s20, s16
	.loc	2 22 24 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:22:24
	ldu_b32 s1, s0, 0x0
	.loc	2 23 47                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:23:47
	ldu_b32 s3, s18, 0x0
	.loc	2 23 79 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:23:79
	saddc_co_u32 s17, s21, s17
	ldu_b32 s0, s16, 0x0
	smul_i32 s7, 0x70000, s4
	smov_b32 s22, 0x1c00
	mov_b32 r3, s7
	mad_u24 r3, r12, s22, r3
	smul_i32 s5, 0xe00000, s6
	or_b32 r0, r3, r13
	add_u32 r0, r0, s5
	.loc	2 24 54 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:24:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 23 45                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:23:45
	sadd_co_i32 s2, s3, s2
	.loc	2 23 77 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:23:77
	ssub_co_i32 s6, s2, s0
	.loc	2 37 165 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:37:165
	mad_i32 r4, r0, 2, s10
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r2
.Ltmp6:
	.loc	2 37 303                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:37:303
	add_u32 r3, 0x38000, r0
.Ltmp7:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s23, md
	snop 1
	smov_b32 md, s2
	smov_b32 s2, 0x1e0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp8:
	.loc	2 37 165                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:37:165
	mad_i32 r4, r3, 2, s10
.Ltmp9:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp10:
	.loc	2 41 172                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:41:172
	mad_i32 r4, r0, 2, s12
.Ltmp11:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp12:
	.loc	2 41 172                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:41:172
	mad_i32 r4, r3, 2, s12
.Ltmp13:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp14:
	.loc	2 44 3                          ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:44:3
	add_u32 r3, 0x4000, r2
.Ltmp15:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r4, 0x0 bsm
	or_b32 r4, r0, 64
.Ltmp16:
	.loc	2 45 174                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:45:174
	mad_i32 r6, r4, 2, s10
.Ltmp17:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp18:
	.loc	2 45 347                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:45:347
	add_u32 r0, 0x38040, r0
.Ltmp19:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp20:
	.loc	2 45 174                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:45:174
	mad_i32 r6, r0, 2, s10
.Ltmp21:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp22:
	.loc	2 49 173                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:49:173
	mad_i32 r4, r4, 2, s12
.Ltmp23:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp24:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	shr_b32 r7, 6, r1
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp25:
	.loc	2 49 173 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:49:173
	mad_i32 r4, r0, 2, s12
.Ltmp26:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	sadd_co_u32 s16, 0x100, s10
	ldg_b128 r0, r4, 0x0 bsm
	saddc_co_u32 s17, s11, 0
	sadd_co_u32 s18, 0x100, s12
	saddc_co_u32 s19, s13, 0
	sadd_co_u32 s20, 0x180, s10
	saddc_co_u32 s21, s11, 0
	sadd_co_u32 s12, 0x180, s12
	saddc_co_u32 s13, s13, 0
.Ltmp27:
	.loc	2 51 3                          ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:51:3
	sadd_co_i32 s5, s5, s7
	mov_b32 r15, s5
	shr_b32 r4, 1, r1
	and_b32 r5, r1, 15
	and_or_b32 r0, r4, s2, r5
	mad_u24 r12, r12, s22, r15
	add_u32 r6, s6, r0
	or_b32 r12, r12, r13
	mov_b32 r13, 0x3800
	smul_i32 s5, 0x3800, s6
	cmp_gt_u32 s10, 0x2380, r6
	add_u32 r6, r6, 16
	mul_u24 r7, 0x38000, r7
	mul_hi_i32 r17, s6, r13
	mov_b32 r13, s5
	mad_u24 r14, r5, s22, r7
	and_b32 r4, r4, 24
	shl_b32 r5, 6, r1
	cmp_gt_u32 s2, 0x2380, r6
	and_or_b32 r16, r1, 48, r13
	mad_u32 r14, r14, 2, r16
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r16, 0, 0
	and_or_b32 r4, r5, s24, r4
	shl_add_u32 r4, 1, r4, 0
	.loc	2 51 3                          ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:51:3
	add_co_u32 r13, s8, r14
	mov_b32 r14, s9
	shl_b64 r24, 0, r16
	shl_b64 r32, 0, r16
	shl_b64 r40, 0, r16
	shl_b64 r48, 0, r16
	shl_b64 r56, 0, r16
	shl_b64 r64, 0, r16
	shl_b64 r72, 0, r16
	shl_b64 r20, 0, r16
	shl_b64 r28, 0, r16
	shl_b64 r36, 0, r16
	shl_b64 r44, 0, r16
	shl_b64 r52, 0, r16
	shl_b64 r60, 0, r16
	shl_b64 r68, 0, r16
	shl_b64 r76, 0, r16
	add_u32 r5, 0x800, r4
	add_u32 r6, 0x1000, r4
	add_u32 r7, 0x1800, r4
	add_u32 r8, r4, 64
	add_u32 r9, 0x840, r4
	add_u32 r10, 0x1040, r4
	add_u32 r11, 0x1840, r4
	addc_co_u32 r14, r14, r15
	smov_b64 s8, 0
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
.Ltmp28:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s23
	bra LBB2_2
.Ltmp29:
	.p2align	5
LBB2_1:                                 ; %for.inc786
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 51 31                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:51:31
	sadd_co_u32 s8, 0x100, s8
	saddc_co_u32 s9, s9, 0
	scmp_eq_u64 0x3800, s8
	add_u32 r12, 0x80, r12
	.loc	2 51 3 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:51:3
	bra_smsks LBB2_22
LBB2_2:                                 ; %for.cond176.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r88, 0, 0
	shl_b64 r90, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r80, r13, s8
	mov_b32 r15, s9
	addc_co_u32 r81, r14, r15
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:57:17
	snop 1
	ldg_b128 r88, r80, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r92, 0, 0
	shl_b64 r94, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r15, r13, s8
	mov_b32 r80, s9
	addc_co_u32 r80, r14, r80
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:57:17
	add_co_u32 r82, 0x38000, r15
	addc_co_u32 r83, r80, 0
	snop 1
	ldg_b128 r92, r82, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r80, 0, 0
	shl_b64 r82, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s10
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r80, r13, s8
	mov_b32 r15, s9
	addc_co_u32 r81, r14, r15
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:57:17
	snop 1
	ldg_b128 r80, r80, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r84, 0, 0
	shl_b64 r86, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB2_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r15, r13, s8
	mov_b32 r84, s9
	addc_co_u32 r84, r14, r84
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:57:17
	add_co_u32 r86, 0x38040, r15
	addc_co_u32 r87, r84, 0
	snop 1
	ldg_b128 r84, r86, 0x0
LBB2_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
.Ltmp30:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(10)
	barrier
.Ltmp31:
	.loc	3 3834 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(8)
	barrier
.Ltmp32:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp33:
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r96, r4, 0x0
	lds_b128 r100, r5, 0x0
	lds_b128 r104, r6, 0x0
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	add_i32 r15, 0x2000, r4
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r96, r88, r72
	mma_16x16x16f16 r40, r96, r92, r40
	mma_16x16x16f16 r72, r98, r90, r72
	mma_16x16x16f16 r40, r98, r94, r40
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r96, r7, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r100, r88, r64
	mma_16x16x16f16 r32, r100, r92, r32
	mma_16x16x16f16 r64, r102, r90, r64
	mma_16x16x16f16 r32, r102, r94, r32
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r100, r15, 0x0
	add_i32 r15, 0x2000, r5
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r56, r104, r88, r56
	mma_16x16x16f16 r24, r104, r92, r24
	mma_16x16x16f16 r56, r106, r90, r56
	mma_16x16x16f16 r24, r106, r94, r24
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r104, r15, 0x0
	add_i32 r15, 0x2000, r6
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r48, r96, r88, r48
	mma_16x16x16f16 r16, r96, r92, r16
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r108, r15, 0x0
	add_i32 r96, 0x2000, r7
	add_i32 r15, 0x2000, r8
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	mma_16x16x16f16 r48, r98, r90, r48
	mma_16x16x16f16 r16, r98, r94, r16
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r96, r96, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(3)
	mma_16x16x16f16 r76, r100, r88, r76
	mma_16x16x16f16 r44, r100, r92, r44
	mma_16x16x16f16 r76, r102, r90, r76
	mma_16x16x16f16 r44, r102, r94, r44
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r100, r8, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(3)
	mma_16x16x16f16 r68, r104, r88, r68
	mma_16x16x16f16 r36, r104, r92, r36
	mma_16x16x16f16 r68, r106, r90, r68
	mma_16x16x16f16 r36, r106, r94, r36
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r104, r9, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(3)
	mma_16x16x16f16 r60, r108, r88, r60
	mma_16x16x16f16 r28, r108, r92, r28
	mma_16x16x16f16 r60, r110, r90, r60
	mma_16x16x16f16 r28, r110, r94, r28
	arrive bsmcnt(2)
	mma_16x16x16f16 r52, r96, r88, r52
	mma_16x16x16f16 r20, r96, r92, r20
	mma_16x16x16f16 r52, r98, r90, r52
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r88, r10, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:88:62
	mma_16x16x16f16 r20, r98, r94, r20
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r92, r11, 0x0
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r96, r15, 0x0
	add_i32 r15, 0x2000, r9
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(4)
	mma_16x16x16f16 r72, r100, r80, r72
	mma_16x16x16f16 r40, r100, r84, r40
	mma_16x16x16f16 r72, r102, r82, r72
	mma_16x16x16f16 r40, r102, r86, r40
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r100, r15, 0x0
	add_i32 r15, 0x2000, r10
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(4)
	mma_16x16x16f16 r64, r104, r80, r64
	mma_16x16x16f16 r32, r104, r84, r32
	mma_16x16x16f16 r64, r106, r82, r64
	mma_16x16x16f16 r32, r106, r86, r32
	arrive bsmcnt(3)
	mma_16x16x16f16 r56, r88, r80, r56
	mma_16x16x16f16 r24, r88, r84, r24
	mma_16x16x16f16 r56, r90, r82, r56
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	add_i32 r88, 0x2000, r11
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	mma_16x16x16f16 r24, r90, r86, r24
	arrive bsmcnt(2)
	mma_16x16x16f16 r48, r92, r80, r48
	mma_16x16x16f16 r16, r92, r84, r16
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r90, r15, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:74:64
	mma_16x16x16f16 r48, r94, r82, r48
	mma_16x16x16f16 r16, r94, r86, r16
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r96, r80, r76
	mma_16x16x16f16 r44, r96, r84, r44
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r94, r88, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:88:62
	mma_16x16x16f16 r76, r98, r82, r76
	mma_16x16x16f16 r44, r98, r86, r44
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r100, r80, r68
	mma_16x16x16f16 r36, r100, r84, r36
	mma_16x16x16f16 r68, r102, r82, r68
	mma_16x16x16f16 r36, r102, r86, r36
	arrive bsmcnt(1)
	mma_16x16x16f16 r60, r90, r80, r60
	mma_16x16x16f16 r28, r90, r84, r28
	mma_16x16x16f16 r60, r92, r82, r60
	mma_16x16x16f16 r28, r92, r86, r28
	arrive bsmcnt(0)
	mma_16x16x16f16 r52, r94, r80, r52
	mma_16x16x16f16 r20, r94, r84, r20
	mma_16x16x16f16 r52, r96, r82, r52
	mma_16x16x16f16 r20, r96, r86, r20
.Ltmp34:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp35:
	.loc	2 97 16                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:97:16
	mov_b32 r80, 0x3700
	mov_b32 r81, 0
	cmp_lg_u64 s22, s8, r80
	scmp_eq_u64 0x3700, s8
	.loc	2 97 9 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:97:9
	snop 0
	bra_smsks LBB2_12
; %bb.11:                               ; %for.cond406.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 100 169 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:100:169
	mad_i32 r80, r12, 2, s16
.Ltmp36:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r2
.Ltmp37:
	.loc	2 100 169                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:100:169
	add_u32 r15, 0x38000, r12
.Ltmp38:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s5, md
	snop 1
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp39:
	.loc	2 100 169                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:100:169
	mad_i32 r80, r15, 2, s16
.Ltmp40:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp41:
	.loc	2 104 177                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:104:177
	mad_i32 r80, r12, 2, s18
.Ltmp42:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp43:
	.loc	2 104 177                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:104:177
	mad_i32 r80, r15, 2, s18
.Ltmp44:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp45:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
.Ltmp46:
LBB2_12:                                ; %if.end475
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	3 0 10                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b64 r88, 0, 0
	shl_b64 r90, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s10
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then503
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r80, r13, s8
	mov_b32 r15, s9
	addc_co_u32 r81, r14, r15
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:112:19
	snop 1
	ldg_b128 r88, r80, 0x80
LBB2_14:                                ; %if.end558
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r92, 0, 0
	shl_b64 r94, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s2
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then503.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r15, r13, s8
	mov_b32 r80, s9
	addc_co_u32 r80, r14, r80
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:112:19
	add_co_u32 r82, 0x38080, r15
	addc_co_u32 r83, r80, 0
	snop 1
	ldg_b128 r92, r82, 0x0
LBB2_16:                                ; %if.end558.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r80, 0, 0
	shl_b64 r82, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s10
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then503.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r80, r13, s8
	mov_b32 r15, s9
	addc_co_u32 r81, r14, r15
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:112:19
	snop 1
	ldg_b128 r80, r80, 0xc0
LBB2_18:                                ; %if.end558.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r84, 0, 0
	shl_b64 r86, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s2
	snop 0
	bra_xmskz LBB2_20
; %bb.19:                               ; %if.then503.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r15, r13, s8
	mov_b32 r84, s9
	addc_co_u32 r84, r14, r84
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:112:19
	add_co_u32 r86, 0x380c0, r15
	addc_co_u32 r87, r84, 0
	snop 1
	ldg_b128 r84, r86, 0x0
LBB2_20:                                ; %if.end558.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
.Ltmp47:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp48:
	.loc	3 3834 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp49:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp50:
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r15, 0x4000, r4
	add_i32 r96, 0x4000, r5
	snop 0
	lds_b128 r98, r15, 0x0
	add_i32 r15, 0x4000, r6
	lds_b128 r102, r96, 0x0
	add_i32 r96, 0x4000, r7
	lds_b128 r106, r15, 0x0
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	add_i32 r15, 0x6000, r4
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r98, r88, r72
	mma_16x16x16f16 r40, r98, r92, r40
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r96, r96, 0x0
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r72, r100, r90, r72
	mma_16x16x16f16 r40, r100, r94, r40
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r102, r88, r64
	mma_16x16x16f16 r32, r102, r92, r32
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r100, r15, 0x0
	add_i32 r15, 0x6000, r5
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r64, r104, r90, r64
	mma_16x16x16f16 r32, r104, r94, r32
	arrive bsmcnt(2)
	mma_16x16x16f16 r56, r106, r88, r56
	mma_16x16x16f16 r24, r106, r92, r24
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r104, r15, 0x0
	add_i32 r15, 0x6000, r6
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r56, r108, r90, r56
	mma_16x16x16f16 r24, r108, r94, r24
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r108, r15, 0x0
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r15, 0x4000, r8
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(3)
	mma_16x16x16f16 r48, r96, r88, r48
	mma_16x16x16f16 r16, r96, r92, r16
	mma_16x16x16f16 r48, r98, r90, r48
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	add_i32 r96, 0x6000, r7
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r16, r98, r94, r16
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r100, r88, r76
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r96, r96, 0x0
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	mma_16x16x16f16 r44, r100, r92, r44
	mma_16x16x16f16 r76, r102, r90, r76
	mma_16x16x16f16 r44, r102, r94, r44
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r100, r15, 0x0
	add_i32 r15, 0x4000, r9
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(3)
	mma_16x16x16f16 r68, r104, r88, r68
	mma_16x16x16f16 r36, r104, r92, r36
	mma_16x16x16f16 r68, r106, r90, r68
	mma_16x16x16f16 r36, r106, r94, r36
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r104, r15, 0x0
	add_i32 r15, 0x4000, r10
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(3)
	mma_16x16x16f16 r60, r108, r88, r60
	mma_16x16x16f16 r28, r108, r92, r28
	mma_16x16x16f16 r60, r110, r90, r60
	mma_16x16x16f16 r28, r110, r94, r28
	arrive bsmcnt(2)
	mma_16x16x16f16 r52, r96, r88, r52
	mma_16x16x16f16 r20, r96, r92, r20
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r88, 0x4000, r11
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	mma_16x16x16f16 r52, r98, r90, r52
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r90, r15, 0x0
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	add_i32 r15, 0x6000, r8
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	mma_16x16x16f16 r20, r98, r94, r20
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r94, r88, 0x0
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	add_i32 r88, 0x6000, r11
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(3)
	mma_16x16x16f16 r72, r100, r80, r72
	mma_16x16x16f16 r40, r100, r84, r40
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r98, r15, 0x0
	add_i32 r15, 0x6000, r9
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r72, r102, r82, r72
	mma_16x16x16f16 r40, r102, r86, r40
	arrive bsmcnt(3)
	mma_16x16x16f16 r64, r104, r80, r64
	mma_16x16x16f16 r32, r104, r84, r32
	mma_16x16x16f16 r64, r106, r82, r64
	mma_16x16x16f16 r32, r106, r86, r32
	arrive bsmcnt(2)
	mma_16x16x16f16 r56, r90, r80, r56
	mma_16x16x16f16 r24, r90, r84, r24
	mma_16x16x16f16 r56, r92, r82, r56
	mma_16x16x16f16 r24, r92, r86, r24
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r90, r15, 0x0
	add_i32 r15, 0x6000, r10
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r48, r94, r80, r48
	mma_16x16x16f16 r16, r94, r84, r16
	mma_16x16x16f16 r48, r96, r82, r48
	mma_16x16x16f16 r16, r96, r86, r16
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r94, r15, 0x0
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r98, r80, r76
	mma_16x16x16f16 r44, r98, r84, r44
	mma_16x16x16f16 r76, r100, r82, r76
	mma_16x16x16f16 r44, r100, r86, r44
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r98, r88, 0x0
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r90, r80, r68
	mma_16x16x16f16 r36, r90, r84, r36
	mma_16x16x16f16 r68, r92, r82, r68
	mma_16x16x16f16 r36, r92, r86, r36
	arrive bsmcnt(1)
	mma_16x16x16f16 r60, r94, r80, r60
	mma_16x16x16f16 r28, r94, r84, r28
	mma_16x16x16f16 r60, r96, r82, r60
	mma_16x16x16f16 r28, r96, r86, r28
	arrive bsmcnt(0)
	mma_16x16x16f16 r52, r98, r80, r52
	mma_16x16x16f16 r20, r98, r84, r20
	mma_16x16x16f16 r52, r100, r82, r52
	mma_16x16x16f16 r20, r100, r86, r20
.Ltmp51:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp52:
	.loc	2 152 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:152:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB2_1
; %bb.21:                               ; %for.cond715.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 155 179                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:155:179
	mad_i32 r80, r12, 2, s20
.Ltmp53:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r3
.Ltmp54:
	.loc	2 155 179                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:155:179
	add_u32 r15, 0x38000, r12
.Ltmp55:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s5, md
	snop 1
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp56:
	.loc	2 155 179                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:155:179
	mad_i32 r80, r15, 2, s20
.Ltmp57:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp58:
	.loc	2 159 178                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:159:178
	mad_i32 r80, r12, 2, s12
.Ltmp59:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp60:
	.loc	2 159 178                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:159:178
	mad_i32 r80, r15, 2, s12
.Ltmp61:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r80, 0x0 bsm
.Ltmp62:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
	bra LBB2_1
.Ltmp63:
LBB2_22:                                ; %for.cond789.preheader
	.loc	3 0 10                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b32 r2, 10, r1
	.loc	2 24 93 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:24:93
	sadd_co_i32 s0, s1, s0
	and_b32 r4, 0xf0000, r2
	shl_b32 r2, 11, r1
	mov_b32 r5, 0
.Ltmp64:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
	and_b32 r2, 0x7800, r2
	mad_u32 r4, s4, 64, r4
	add_co_u32 r4, r4, r2
.Ltmp65:
	.loc	2 205 95                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:95
	cmp_gt_i32 s4, s0, r0
	.loc	2 164 3                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:164:3
	shr_b32 r1, 1, r1
	addc_co_u32 r5, r5, 0
	mov_b32 r2, 0x800
	mad_i32 r4, s6, r2, r4
	and_b32 r1, r1, 24
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	addc_co_u32 r2, r2, 0
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	sand_b64 s4, s4, s10
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_32
; %bb.23:                               ; %if.end994
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_33
LBB2_24:                                ; %if.end994.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_34
LBB2_25:                                ; %if.end994.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_27
LBB2_26:                                ; %if.then926.3
	.loc	2 187 27 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r51
.Ltmp66:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s4
	fmka_f32 r9, r51, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s4
	exp_f32 r9, r9
.Ltmp67:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r50
.Ltmp68:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp69:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r51, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r55
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s4
	fmka_f32 r10, r50, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s4
	exp_f32 r10, r10
.Ltmp71:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r49
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp73:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r50, r9
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s4
	fmka_f32 r11, r49, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s4
	exp_f32 r11, r11
.Ltmp75:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r48
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r11
.Ltmp77:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r49, r10
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s4
	fmka_f32 r8, r48, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s4
	exp_f32 r8, r8
.Ltmp79:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r48, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r52
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r53
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r54
.Ltmp80:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp81:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp82:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp83:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp84:
	.loc	2 218 313 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:313
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x60, r6 devc
LBB2_27:                                ; %if.end994.3
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 66 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:66
	or_b32 r0, r0, 16
	.loc	2 205 95 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	snop 3
	sand_b64 s0, s0, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_35
; %bb.28:                               ; %if.end994.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_36
LBB2_29:                                ; %if.end994.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_37
LBB2_30:                                ; %if.end994.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_38
LBB2_31:                                ; %if.end994.7
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:223:1
	snop 1
	endk
LBB2_32:                                ; %if.then926
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r75
.Ltmp85:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r75, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp86:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r74
.Ltmp87:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp88:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r75, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r79
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r74, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp90:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r73
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp92:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r74, r9
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r73, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp94:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r72
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp96:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r73, r10
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r72, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp98:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r72, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r76
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r77
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r78
.Ltmp99:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp100:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp101:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp102:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp103:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_24
LBB2_33:                                ; %if.then926.1
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r67
.Ltmp104:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r67, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp105:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r66
.Ltmp106:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp107:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r67, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r71
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r66, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp109:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r65
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp111:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r66, r9
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r65, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp113:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r64
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp115:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r65, r10
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r64, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp117:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r64, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r68
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r69
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r70
.Ltmp118:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp119:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp120:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp121:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp122:
	.loc	2 218 313 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:313
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x20, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_25
LBB2_34:                                ; %if.then926.2
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r59
.Ltmp123:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r59, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp124:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r58
.Ltmp125:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp126:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r59, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r63
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r58, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp128:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r57
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp130:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r58, r9
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r57, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp132:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r56
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp134:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r57, r10
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r56, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp136:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r56, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r60
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r61
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r62
.Ltmp137:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp138:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp139:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp140:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp141:
	.loc	2 218 313 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:313
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x40, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_26
	bra LBB2_27
LBB2_35:                                ; %if.then926.4
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r43
.Ltmp142:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r43, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp143:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r42
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp145:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r43, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r47
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r42, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp147:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r41
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp149:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r42, r8
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r41, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp151:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r40
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp153:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r41, r9
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r40, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp155:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r40, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r44
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r45
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r46
.Ltmp156:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp157:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp158:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp159:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp160:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10000, r6
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_29
LBB2_36:                                ; %if.then926.5
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r35
.Ltmp161:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r35, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp162:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r34
.Ltmp163:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp164:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r35, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r39
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r34, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp166:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r33
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp168:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r34, r8
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r33, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp170:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r32
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp172:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r33, r9
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r32, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp174:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r32, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r36
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r37
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r38
.Ltmp175:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp176:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp177:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp178:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp179:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10020, r6
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_30
LBB2_37:                                ; %if.then926.6
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r27
.Ltmp180:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r27, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp181:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r26
.Ltmp182:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp183:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r27, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r31
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r26, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp185:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r25
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp187:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r26, r8
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r25, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp189:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r24
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp191:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r25, r9
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r24, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp193:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r24, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r28
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r29
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r30
.Ltmp194:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp195:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp196:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp197:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp198:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10040, r6
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_31
LBB2_38:                                ; %if.then926.7
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r19
.Ltmp199:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r7, 0, s0
	fmka_f32 r8, r19, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s0
	exp_f32 r8, r8
.Ltmp200:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r18
.Ltmp201:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp202:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s2
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r19, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r23
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s0
	fmka_f32 r9, r18, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
.Ltmp204:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r17
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r9
.Ltmp206:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r18, r8
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s0
	fmka_f32 r10, r17, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
.Ltmp208:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r16
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r10
.Ltmp210:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r17, r9
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s0
	fmka_f32 r7, r16, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s0
	exp_f32 r7, r7
.Ltmp212:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r16, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r20
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r21
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r22
.Ltmp213:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp214:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp215:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp216:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp217:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
	addc_co_u32 r2, r2, r5
	add_co_u32 r4, 0x10060, r1
	.loc	2 218 444 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	shl_b32 r1, 16, r6
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r5, r2, 0
	.loc	2 218 444                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:218:444
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r4, 0x0, r2 devc
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:223:1
	snop 2
	endk
.Ltmp218:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 14
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
; codeLenInByte = 13288
; NumMTRegsForWarps/PEU: 112
; NumSTRegsForWarps/PEU: 30
; MaxWarpsPerPEU: 4
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 225 0                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:225:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp219:
	.loc	2 234 23 prologue_end           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:234:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s8, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	shl_b32 r2, 8, r1
	and_b32 r22, 0x3f800, r2
	and_b32 r23, r0, 56
	.loc	2 244 3                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:244:3
	shl_add_u32 r3, 4, r1, 0
	shl_b32 r8, 11, r1
	and_b32 r25, 0x7800, r8
	.loc	2 234 23                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:234:23
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:235:24
	sshl_b64 s16, 2, s6
	sadd_co_u32 s0, s22, s16
	saddc_co_u32 s1, s23, s17
	.loc	2 236 38                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:236:38
	sshl_b32 s2, 7, s5
	.loc	2 236 47 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:236:47
	sadd_co_u32 s18, s18, s16
	saddc_co_u32 s19, s19, s17
	.loc	2 236 79                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:236:79
	sadd_co_u32 s16, s20, s16
	saddc_co_u32 s17, s21, s17
	.loc	2 235 24 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:235:24
	ldu_b32 s1, s0, 0x0
	.loc	2 236 47                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:236:47
	ldu_b32 s3, s18, 0x0
	.loc	2 236 79 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:236:79
	ldu_b32 s0, s16, 0x0
	sshl_b32 s20, 18, s4
	smul_i32 s5, 0xe00000, s6
	or3_b32 r0, r22, s20, r23
	add_u32 r0, s5, r0
	.loc	2 237 54 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:237:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 236 45                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:236:45
	sadd_co_i32 s2, s3, s2
	.loc	2 236 77 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:236:77
	ssub_co_i32 s16, s2, s0
	.loc	2 245 167 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r0, 2, s10
.Ltmp220:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r3
.Ltmp221:
	.loc	2 245 304                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:245:304
	add_u32 r2, 0x10000, r0
.Ltmp222:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s21, md
	sashr_i32 s17, 31, s16
	shl_b32 r8, 6, r1
	smov_b32 md, s2
	smov_b32 s22, 0x3c0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp223:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r2, 2, s10
	.loc	2 245 304 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:245:304
	add_u32 r2, 0x20000, r0
.Ltmp224:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	shl_b32 r24, 10, r1
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp225:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r2, 2, s10
	.loc	2 245 304 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:245:304
	add_u32 r2, 0x30000, r0
.Ltmp226:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp227:
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r28, 0, 0
.Ltmp228:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp229:
	.loc	2 245 167 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r2, 2, s10
	or_b32 r2, r0, 64
	.loc	2 249 176                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:249:176
	mad_i32 r6, r2, 2, s10
.Ltmp230:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp231:
	.loc	2 249 348                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:249:348
	add_u32 r2, 0x10040, r0
.Ltmp232:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp233:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp234:
	.loc	2 248 3 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:248:3
	add_u32 r5, 0x4000, r3
.Ltmp235:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp236:
	.loc	2 249 176                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:249:176
	mad_i32 r6, r2, 2, s10
	.loc	2 249 348 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:249:348
	add_u32 r2, 0x20040, r0
.Ltmp237:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp238:
	.loc	2 249 348                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:249:348
	add_u32 r0, 0x30040, r0
.Ltmp239:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp240:
	.loc	2 249 176                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:249:176
	mad_i32 r6, r2, 2, s10
.Ltmp241:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	and_b32 r2, r1, 15
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp242:
	.loc	2 249 176                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:249:176
	mad_i32 r6, r0, 2, s10
.Ltmp243:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	sadd_co_u32 s18, 0x100, s10
	ldg_b128 r0, r6, 0x0 bsm
	saddc_co_u32 s19, s11, 0
	sadd_co_u32 s10, 0x180, s10
	shr_b32 r6, 1, r1
	and_b32 r4, 0x1e0, r6
	and_b32 r6, r6, 24
	saddc_co_u32 s11, s11, 0
.Ltmp244:
	.loc	2 251 3                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:251:3
	sadd_co_i32 s5, s5, s20
	and_or_b32 r6, r8, s22, r6
	or_b32 r0, r4, r2
	or3_b32 r22, s5, r22, r23
	sshl_b64 s22, 12, s16
	smov_b32 s5, 0xf0000
	and_or_b32 r24, r24, s5, r25
	mov_b32 r23, s22
	add_u32 r7, s16, r0
	cmp_gt_u32 s6, 0x2380, r7
	add_u32 r7, r7, 16
	and_or_b32 r23, r1, 48, r23
	shl_b32 r24, 1, r24
	cmp_gt_u32 s2, 0x2380, r7
	mov_b32 r26, s23
	mov_b32 r25, 0
	add_co_u32 r23, r23, r24
	addc_co_u32 r24, r26, r25
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r26, 0, 0
	shl_add_u32 r6, 1, r6, 0
	shl_b64 r30, 0, r26
	shl_b64 r34, 0, r26
	shl_b64 r38, 0, r26
	shl_b64 r42, 0, r26
	shl_b64 r46, 0, r26
	shl_b64 r50, 0, r26
	shl_b64 r54, 0, r26
	shl_b64 r58, 0, r26
	shl_b64 r62, 0, r26
	shl_b64 r66, 0, r26
	shl_b64 r70, 0, r26
	shl_b64 r74, 0, r26
	shl_b64 r78, 0, r26
	shl_b64 r82, 0, r26
	shl_b64 r86, 0, r26
	.loc	2 251 3                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:251:3
	add_co_u32 r23, s14, r23
	mov_b32 r25, s15
	add_u32 r7, 0x800, r6
	add_u32 r8, 0x1000, r6
	add_u32 r9, 0x1800, r6
	add_u32 r10, 0x2000, r6
	add_u32 r11, 0x2800, r6
	add_u32 r12, 0x3000, r6
	add_u32 r13, 0x3800, r6
	add_u32 r14, r6, 64
	add_u32 r15, 0x840, r6
	add_u32 r16, 0x1040, r6
	add_u32 r17, 0x1840, r6
	add_u32 r18, 0x2040, r6
	add_u32 r19, 0x2840, r6
	add_u32 r20, 0x3040, r6
	add_u32 r21, 0x3840, r6
	addc_co_u32 r24, r25, r24
	smov_b64 s14, 0
	shl_b64 r32, 0, r28
	shl_b64 r36, 0, r28
	shl_b64 r40, 0, r28
	shl_b64 r44, 0, r28
	shl_b64 r48, 0, r28
	shl_b64 r52, 0, r28
	shl_b64 r56, 0, r28
	shl_b64 r60, 0, r28
	shl_b64 r64, 0, r28
	shl_b64 r68, 0, r28
	shl_b64 r72, 0, r28
	shl_b64 r76, 0, r28
	shl_b64 r80, 0, r28
	shl_b64 r84, 0, r28
	shl_b64 r88, 0, r28
.Ltmp245:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s21
	bra LBB3_2
.Ltmp246:
	.p2align	5
LBB3_1:                                 ; %for.inc495
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 251 31                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:251:31
	sadd_co_u32 s14, 0x100, s14
	saddc_co_u32 s15, s15, 0
	scmp_eq_u64 0x1000, s14
	add_u32 r22, 0x80, r22
	.loc	2 251 3 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:251:3
	bra_smsks LBB3_22
LBB3_2:                                 ; %for.cond95.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r98, 0, 0
	shl_b64 r100, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r90, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r91, r24, r25
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:257:17
	snop 1
	ldg_b128 r98, r90, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r102, 0, 0
	shl_b64 r104, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r25, r23, s14
	mov_b32 r90, s15
	addc_co_u32 r90, r24, r90
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:257:17
	add_co_u32 r92, 0x10000, r25
	addc_co_u32 r93, r90, 0
	snop 1
	ldg_b128 r102, r92, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r90, 0, 0
	shl_b64 r92, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r90, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r91, r24, r25
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:257:17
	snop 1
	ldg_b128 r90, r90, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r94, 0, 0
	shl_b64 r96, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB3_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r25, r23, s14
	mov_b32 r94, s15
	addc_co_u32 r94, r24, r94
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:257:17
	add_co_u32 r96, 0x10040, r25
	addc_co_u32 r97, r94, 0
	snop 1
	ldg_b128 r94, r96, 0x0
LBB3_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
.Ltmp247:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(8)
	barrier
.Ltmp248:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp249:
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r106, r6, 0x0
	lds_b128 r110, r7, 0x0
	lds_b128 r114, r8, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r106, r98, r86
	mma_16x16x16f16 r54, r106, r102, r54
	mma_16x16x16f16 r86, r108, r100, r86
	mma_16x16x16f16 r54, r108, r104, r54
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r106, r9, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r110, r98, r82
	mma_16x16x16f16 r50, r110, r102, r50
	mma_16x16x16f16 r82, r112, r100, r82
	mma_16x16x16f16 r50, r112, r104, r50
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r110, r10, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r114, r98, r78
	mma_16x16x16f16 r46, r114, r102, r46
	mma_16x16x16f16 r78, r116, r100, r78
	mma_16x16x16f16 r46, r116, r104, r46
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r114, r11, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r106, r98, r74
	mma_16x16x16f16 r42, r106, r102, r42
	mma_16x16x16f16 r74, r108, r100, r74
	mma_16x16x16f16 r42, r108, r104, r42
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r106, r12, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r110, r98, r70
	mma_16x16x16f16 r38, r110, r102, r38
	mma_16x16x16f16 r70, r112, r100, r70
	mma_16x16x16f16 r38, r112, r104, r38
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r110, r13, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r114, r98, r66
	mma_16x16x16f16 r34, r114, r102, r34
	mma_16x16x16f16 r66, r116, r100, r66
	mma_16x16x16f16 r34, r116, r104, r34
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r114, r14, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r106, r98, r62
	mma_16x16x16f16 r30, r106, r102, r30
	mma_16x16x16f16 r62, r108, r100, r62
	mma_16x16x16f16 r30, r108, r104, r30
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r106, r15, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r110, r98, r58
	mma_16x16x16f16 r26, r110, r102, r26
	mma_16x16x16f16 r58, r112, r100, r58
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r98, r16, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	mma_16x16x16f16 r26, r112, r104, r26
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r102, r17, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r86, r114, r90, r86
	mma_16x16x16f16 r54, r114, r94, r54
	mma_16x16x16f16 r86, r116, r92, r86
	mma_16x16x16f16 r54, r116, r96, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r106, r90, r82
	mma_16x16x16f16 r50, r106, r94, r50
	mma_16x16x16f16 r82, r108, r92, r82
	mma_16x16x16f16 r50, r108, r96, r50
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r106, r18, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r98, r90, r78
	mma_16x16x16f16 r46, r98, r94, r46
	mma_16x16x16f16 r78, r100, r92, r78
	mma_16x16x16f16 r46, r100, r96, r46
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r98, r19, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r102, r90, r74
	mma_16x16x16f16 r42, r102, r94, r42
	mma_16x16x16f16 r74, r104, r92, r74
	mma_16x16x16f16 r42, r104, r96, r42
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r102, r20, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r106, r90, r70
	mma_16x16x16f16 r38, r106, r94, r38
	mma_16x16x16f16 r70, r108, r92, r70
	mma_16x16x16f16 r38, r108, r96, r38
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r106, r21, 0x0
	.loc	2 273 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:273:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r98, r90, r66
	mma_16x16x16f16 r34, r98, r94, r34
	mma_16x16x16f16 r66, r100, r92, r66
	mma_16x16x16f16 r34, r100, r96, r34
	arrive bsmcnt(1)
	mma_16x16x16f16 r62, r102, r90, r62
	mma_16x16x16f16 r30, r102, r94, r30
	mma_16x16x16f16 r62, r104, r92, r62
	mma_16x16x16f16 r30, r104, r96, r30
	arrive bsmcnt(0)
	mma_16x16x16f16 r58, r106, r90, r58
	mma_16x16x16f16 r26, r106, r94, r26
	mma_16x16x16f16 r58, r108, r92, r58
	mma_16x16x16f16 r26, r108, r96, r26
.Ltmp250:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp251:
	.loc	2 282 16                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:282:16
	mov_b32 r90, 0xf00
	mov_b32 r91, 0
	cmp_lg_u64 s20, s14, r90
	scmp_eq_u64 0xf00, s14
	.loc	2 282 9 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:282:9
	snop 0
	bra_smsks LBB3_12
; %bb.11:                               ; %for.cond255.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 285 171 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r90, r22, 2, s18
.Ltmp252:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r3
.Ltmp253:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:285:171
	add_u32 r25, 0x10000, r22
.Ltmp254:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s5, md
	snop 1
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
.Ltmp255:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r90, r25, 2, s18
	add_u32 r25, 0x20000, r22
.Ltmp256:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
.Ltmp257:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r90, r25, 2, s18
	add_u32 r25, 0x30000, r22
.Ltmp258:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
.Ltmp259:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r90, r25, 2, s18
.Ltmp260:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
	smov_b32 md, s5
.Ltmp261:
LBB3_12:                                ; %if.end289
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 10 is_stmt 0                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b64 r98, 0, 0
	shl_b64 r100, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then317
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r90, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r91, r24, r25
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:293:19
	snop 1
	ldg_b128 r98, r90, 0x80
LBB3_14:                                ; %if.end372
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r102, 0, 0
	shl_b64 r104, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then317.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r25, r23, s14
	mov_b32 r90, s15
	addc_co_u32 r90, r24, r90
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:293:19
	add_co_u32 r92, 0x10080, r25
	addc_co_u32 r93, r90, 0
	snop 1
	ldg_b128 r102, r92, 0x0
LBB3_16:                                ; %if.end372.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r90, 0, 0
	shl_b64 r92, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then317.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r90, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r91, r24, r25
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:293:19
	snop 1
	ldg_b128 r90, r90, 0xc0
LBB3_18:                                ; %if.end372.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r94, 0, 0
	shl_b64 r96, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then317.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r25, r23, s14
	mov_b32 r94, s15
	addc_co_u32 r94, r24, r94
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:293:19
	add_co_u32 r96, 0x100c0, r25
	addc_co_u32 r97, r94, 0
	snop 1
	ldg_b128 r94, r96, 0x0
LBB3_20:                                ; %if.end372.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
.Ltmp262:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp263:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp264:
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	add_i32 r25, 0x4000, r6
	add_i32 r106, 0x4000, r7
	snop 0
	lds_b128 r108, r25, 0x0
	add_i32 r25, 0x4000, r8
	lds_b128 r112, r106, 0x0
	add_i32 r106, 0x4000, r9
	lds_b128 r116, r25, 0x0
	add_i32 r25, 0x4000, r10
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r108, r98, r86
	mma_16x16x16f16 r54, r108, r102, r54
	mma_16x16x16f16 r86, r110, r100, r86
	mma_16x16x16f16 r54, r110, r104, r54
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r108, r106, 0x0
	add_i32 r106, 0x4000, r11
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r112, r98, r82
	mma_16x16x16f16 r50, r112, r102, r50
	mma_16x16x16f16 r82, r114, r100, r82
	mma_16x16x16f16 r50, r114, r104, r50
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r112, r25, 0x0
	add_i32 r25, 0x4000, r12
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r116, r98, r78
	mma_16x16x16f16 r46, r116, r102, r46
	mma_16x16x16f16 r78, r118, r100, r78
	mma_16x16x16f16 r46, r118, r104, r46
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r116, r106, 0x0
	add_i32 r106, 0x4000, r13
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r108, r98, r74
	mma_16x16x16f16 r42, r108, r102, r42
	mma_16x16x16f16 r74, r110, r100, r74
	mma_16x16x16f16 r42, r110, r104, r42
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r108, r25, 0x0
	add_i32 r25, 0x4000, r14
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r112, r98, r70
	mma_16x16x16f16 r38, r112, r102, r38
	mma_16x16x16f16 r70, r114, r100, r70
	mma_16x16x16f16 r38, r114, r104, r38
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r112, r106, 0x0
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r116, r98, r66
	mma_16x16x16f16 r34, r116, r102, r34
	mma_16x16x16f16 r66, r118, r100, r66
	mma_16x16x16f16 r34, r118, r104, r34
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r116, r25, 0x0
	add_i32 r25, 0x4000, r15
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r108, r98, r62
	mma_16x16x16f16 r30, r108, r102, r30
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r106, r25, 0x0
	add_i32 r25, 0x4000, r16
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	mma_16x16x16f16 r62, r110, r100, r62
	mma_16x16x16f16 r30, r110, r104, r30
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r112, r98, r58
	mma_16x16x16f16 r26, r112, r102, r26
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	add_i32 r98, 0x4000, r17
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	mma_16x16x16f16 r58, r114, r100, r58
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r100, r25, 0x0
	lds_b128 r110, r98, 0x0
	add_i32 r25, 0x4000, r18
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	mma_16x16x16f16 r26, r114, r104, r26
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	add_i32 r98, 0x4000, r19
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r86, r116, r90, r86
	mma_16x16x16f16 r54, r116, r94, r54
	mma_16x16x16f16 r86, r118, r92, r86
	mma_16x16x16f16 r54, r118, r96, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r106, r90, r82
	mma_16x16x16f16 r50, r106, r94, r50
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r104, r25, 0x0
	add_i32 r25, 0x4000, r20
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	mma_16x16x16f16 r82, r108, r92, r82
	mma_16x16x16f16 r50, r108, r96, r50
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r100, r90, r78
	mma_16x16x16f16 r46, r100, r94, r46
	mma_16x16x16f16 r78, r102, r92, r78
	mma_16x16x16f16 r46, r102, r96, r46
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r100, r98, 0x0
	add_i32 r98, 0x4000, r21
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r110, r90, r74
	mma_16x16x16f16 r42, r110, r94, r42
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r108, r25, 0x0
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	mma_16x16x16f16 r74, r112, r92, r74
	mma_16x16x16f16 r42, r112, r96, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r104, r90, r70
	mma_16x16x16f16 r38, r104, r94, r38
	mma_16x16x16f16 r70, r106, r92, r70
	mma_16x16x16f16 r38, r106, r96, r38
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r104, r98, 0x0
	.loc	2 309 59                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:309:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r100, r90, r66
	mma_16x16x16f16 r34, r100, r94, r34
	mma_16x16x16f16 r66, r102, r92, r66
	mma_16x16x16f16 r34, r102, r96, r34
	arrive bsmcnt(1)
	mma_16x16x16f16 r62, r108, r90, r62
	mma_16x16x16f16 r30, r108, r94, r30
	mma_16x16x16f16 r62, r110, r92, r62
	mma_16x16x16f16 r30, r110, r96, r30
	arrive bsmcnt(0)
	mma_16x16x16f16 r58, r104, r90, r58
	mma_16x16x16f16 r26, r104, r94, r26
	mma_16x16x16f16 r58, r106, r92, r58
	mma_16x16x16f16 r26, r106, r96, r26
.Ltmp265:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp266:
	.loc	2 318 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:318:9
	sandn_b64 cmsk, xmsk, s20
	snop 0
	bra_cmsks LBB3_1
; %bb.21:                               ; %for.cond459.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 321 180                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:321:180
	mad_i32 r90, r22, 2, s10
.Ltmp267:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r5
.Ltmp268:
	.loc	2 321 180                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:321:180
	add_u32 r25, 0x10000, r22
.Ltmp269:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s5, md
	snop 1
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
.Ltmp270:
	.loc	2 321 180                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:321:180
	mad_i32 r90, r25, 2, s10
	add_u32 r25, 0x20000, r22
.Ltmp271:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
.Ltmp272:
	.loc	2 321 180                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:321:180
	mad_i32 r90, r25, 2, s10
	add_u32 r25, 0x30000, r22
.Ltmp273:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
.Ltmp274:
	.loc	2 321 180                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:321:180
	mad_i32 r90, r25, 2, s10
.Ltmp275:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r90, 0x0 bsm
	smov_b32 md, s5
	bra LBB3_1
.Ltmp276:
LBB3_22:                                ; %for.cond498.preheader
	.loc	2 237 93                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:237:93
	sadd_co_i32 s0, s1, s0
.Ltmp277:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp278:
	.loc	2 325 3                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:325:3
	shl_b64 r6, 0, s12
	.loc	2 327 92                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:327:92
	cmp_gt_i32 s10, s0, r0
	.loc	2 325 3                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:325:3
	mad_i32 r6, s16, 2, r6
	shl_b32 r3, 1, r2
	add_co_u32 r6, r6, r3
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 327 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:327:9
	and_xmsk s12, s10
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then514
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 329 114 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:329:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then536
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r3, 1, r4
	add_co_u32 r8, r6, r3
	addc_co_u32 r9, r7, 0
	.loc	2 330 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:330:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_25:                                ; %Flow329
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_26:                                ; %for.inc557
	sor_b64 xmsk, xmsk, s12
	.loc	2 327 63 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:327:63
	or_b32 r4, r4, 16
	.loc	2 327 92 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:327:92
	or_b32 r3, r2, r4
	cmp_gt_i32 s14, s0, r3
	add_u16 r3_lo, 0, 0
	.loc	2 327 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:327:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.27:                               ; %if.then514.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r3_lo, 0, 0
	.loc	2 329 114 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:329:114
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB3_29
; %bb.28:                               ; %if.then536.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r3, 1, r4
	add_co_u32 r6, r6, r3
	addc_co_u32 r7, r7, 0
	.loc	2 330 19 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:330:19
	snop 1
	ldg_u16 r3, r6, 0x0
LBB3_29:                                ; %Flow328
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_30:                                ; %for.inc557.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r4, 6, r1
	mul_u24 r6, 0x38000, r4
	mov_b32 r7, 0
	mov_b32 r4, 0x80
	mul_u24 r2, 0x1c00, r2
	mad_u32 r6, s4, r4, r6
	add_co_u32 r6, r6, r2
	.loc	2 338 3 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:338:3
	shr_b32 r1, 1, r1
	addc_co_u32 r7, r7, 0
	mov_b32 r2, 0x1c00
	mad_i32 r6, s16, r2, r6
	and_b32 r1, r1, 24
	add_co_u32 r1, s8, r1
	mov_b32 r2, s9
	addc_co_u32 r2, r2, 0
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_38
; %bb.31:                               ; %for.inc680
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_41
LBB3_32:                                ; %for.inc680.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_44
LBB3_33:                                ; %for.inc680.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_47
LBB3_34:                                ; %for.inc680.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_50
LBB3_35:                                ; %for.inc680.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_53
LBB3_36:                                ; %for.inc680.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_56
LBB3_37:                                ; %for.inc680.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmsks LBB3_59
	bra LBB3_62
LBB3_38:                                ; %if.then574
.Ltmp279:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp280:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp281:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp282:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp283:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then643
.Ltmp284:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp285:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r89, r4
.Ltmp286:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp287:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r88, r4
.Ltmp288:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp289:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r87, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r86, r4
.Ltmp290:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp291:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp292:
	.loc	2 353 28 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r2, r11
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_40:                                ; %Flow327
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_32
LBB3_41:                                ; %if.then574.1
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp294:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp296:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp297:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_43
; %bb.42:                               ; %if.then643.1
.Ltmp298:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp299:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r85, r4
.Ltmp300:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp301:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r84, r4
.Ltmp302:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp303:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r83, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r82, r4
.Ltmp304:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp305:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp306:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r2, r11
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_43:                                ; %Flow326
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_33
LBB3_44:                                ; %if.then574.2
.Ltmp307:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp308:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp309:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp310:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp311:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then643.2
.Ltmp312:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp313:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r81, r4
.Ltmp314:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp315:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r80, r4
.Ltmp316:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp317:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r79, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r78, r4
.Ltmp318:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp319:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp320:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r2, r11
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_46:                                ; %Flow325
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_34
LBB3_47:                                ; %if.then574.3
.Ltmp321:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp322:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp323:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp324:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp325:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_49
; %bb.48:                               ; %if.then643.3
.Ltmp326:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp327:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r77, r4
.Ltmp328:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp329:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r76, r4
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp331:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r75, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r74, r4
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp333:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp334:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r2, r11
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_49:                                ; %Flow324
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_35
LBB3_50:                                ; %if.then574.4
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp336:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp338:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp339:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then643.4
.Ltmp340:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp341:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r73, r4
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp343:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r72, r4
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp345:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r71, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r70, r4
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp347:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp348:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r2, r11
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_52:                                ; %Flow323
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_36
LBB3_53:                                ; %if.then574.5
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp350:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp353:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_55
; %bb.54:                               ; %if.then643.5
.Ltmp354:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp355:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r69, r4
.Ltmp356:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp357:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r68, r4
.Ltmp358:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp359:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r67, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r66, r4
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp361:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp362:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r2, r11
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_55:                                ; %Flow322
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_37
LBB3_56:                                ; %if.then574.6
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp364:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp367:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.then643.6
.Ltmp368:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp369:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r65, r4
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp371:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r64, r4
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp373:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r63, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r62, r4
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp375:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp376:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r2, r11
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_58:                                ; %Flow321
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s10
	snop 0
	bra_xmskz LBB3_62
LBB3_59:                                ; %if.then574.7
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp378:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp381:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_61
; %bb.60:                               ; %if.then643.7
.Ltmp382:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp383:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r5, r61, r4
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp385:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r8, r60, r4
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp387:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r5, 16, r5
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r5, r59, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r58, r4
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp389:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp390:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 353 312                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r4, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r2, r5
	.loc	2 353 442                       ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r4, 0xe0, r8 devc
LBB3_61:                                ; %Flow320
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s8
LBB3_62:                                ; %for.inc680.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 65 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:65
	or_b32 r0, r0, 16
	.loc	2 339 94 is_stmt 0              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:94
	cmp_gt_i32 s0, s0, r0
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_71
; %bb.63:                               ; %for.inc680.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_74
LBB3_64:                                ; %for.inc680.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_77
LBB3_65:                                ; %for.inc680.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_80
LBB3_66:                                ; %for.inc680.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_83
LBB3_67:                                ; %for.inc680.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_86
LBB3_68:                                ; %for.inc680.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_89
LBB3_69:                                ; %for.inc680.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_92
LBB3_70:                                ; %for.inc680.15
	.loc	2 358 1 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:358:1
	snop 0
	endk
LBB3_71:                                ; %if.then574.8
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp392:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp395:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_73
; %bb.72:                               ; %if.then643.8
.Ltmp396:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp397:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r57, r0
.Ltmp398:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp399:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r56, r0
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp401:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r55, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r54, r0
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp403:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp404:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_73:                                ; %Flow319
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_64
LBB3_74:                                ; %if.then574.9
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp406:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp409:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then643.9
.Ltmp410:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp411:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r53, r0
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp413:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r52, r0
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp415:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r51, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r50, r0
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp417:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp418:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_76:                                ; %Flow318
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_65
LBB3_77:                                ; %if.then574.10
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp420:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp423:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_79
; %bb.78:                               ; %if.then643.10
.Ltmp424:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp425:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r49, r0
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp427:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r48, r0
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp429:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r47, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r46, r0
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp431:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp432:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_79:                                ; %Flow317
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_66
LBB3_80:                                ; %if.then574.11
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp434:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp437:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_82
; %bb.81:                               ; %if.then643.11
.Ltmp438:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp439:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r45, r0
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp441:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r44, r0
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp443:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r43, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r42, r0
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp445:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp446:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_82:                                ; %Flow316
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_67
LBB3_83:                                ; %if.then574.12
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp448:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp451:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_85
; %bb.84:                               ; %if.then643.12
.Ltmp452:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp453:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r41, r0
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp455:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r40, r0
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp457:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r39, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r38, r0
.Ltmp458:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp459:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp460:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_85:                                ; %Flow315
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_68
LBB3_86:                                ; %if.then574.13
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp462:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp465:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_88
; %bb.87:                               ; %if.then643.13
.Ltmp466:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp467:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r37, r0
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp469:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r36, r0
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp471:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r35, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r34, r0
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp473:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp474:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_88:                                ; %Flow314
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_69
LBB3_89:                                ; %if.then574.14
.Ltmp475:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp476:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp479:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB3_91
; %bb.90:                               ; %if.then643.14
.Ltmp480:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp481:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r33, r0
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp483:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r32, r0
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp485:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r31, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r30, r0
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp487:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp488:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r2, r5
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_91:                                ; %Flow313
	.loc	2 0 442                         ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:0:442
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_70
LBB3_92:                                ; %if.then574.15
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp490:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp492:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp493:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_70
; %bb.93:                               ; %if.then643.15
.Ltmp494:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp495:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r3, r29, r0
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp497:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r4, r28, r0
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp499:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r3, 16, r3
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r3, r27, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r26, r0
.Ltmp500:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp501:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp502:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r6, 1, r6
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:350:40
	or_b32 r4, r3, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r0, r1, r6
	addc_co_u32 r1, r2, r7
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 353 442 is_stmt 0             ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:353:442
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 358 1 is_stmt 1               ; race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp:358:1
	snop 2
	endk
.Ltmp503:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 11648
; NumMTRegsForWarps/PEU: 120
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
	.byte	11                              ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x426 DW_TAG_compile_unit
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
	.byte	37                              ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	41                              ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x89:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	45                              ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x95:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	49                              ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa1:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp30                         ; DW_AT_low_pc
	.long	.Ltmp31-.Ltmp30                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	63                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xb5:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp31                         ; DW_AT_low_pc
	.long	.Ltmp32-.Ltmp31                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	64                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc9:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp32                         ; DW_AT_low_pc
	.long	.Ltmp33-.Ltmp32                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	65                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xdd:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp32                         ; DW_AT_low_pc
	.long	.Ltmp33-.Ltmp32                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xf2:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp34                         ; DW_AT_low_pc
	.long	.Ltmp35-.Ltmp34                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	96                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x106:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp34                         ; DW_AT_low_pc
	.long	.Ltmp35-.Ltmp34                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	100                             ; DW_AT_call_line
	.byte	35                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x127:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x133:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp47                         ; DW_AT_low_pc
	.long	.Ltmp48-.Ltmp47                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	118                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x147:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp48                         ; DW_AT_low_pc
	.long	.Ltmp49-.Ltmp48                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	119                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x15b:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp49                         ; DW_AT_low_pc
	.long	.Ltmp50-.Ltmp49                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	120                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x16f:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp49                         ; DW_AT_low_pc
	.long	.Ltmp50-.Ltmp49                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x184:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp51                         ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp51                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	151                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x198:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp51                         ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp51                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1ad:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	155                             ; DW_AT_call_line
	.byte	35                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1b9:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	159                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c5:0x14 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp64                         ; DW_AT_low_pc
	.long	.Ltmp65-.Ltmp64                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	24                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1d9:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1e5:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	190                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1f1:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	189                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1fd:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	188                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x209:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	216                             ; DW_AT_call_line
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
	.byte	217                             ; DW_AT_call_line
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
	.byte	3                               ; Abbrev [3] 0x280:0x1b0 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x291:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	245                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x29d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	249                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x2a9:0x15 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp247                        ; DW_AT_low_pc
	.long	.Ltmp248-.Ltmp247               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	263                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x2be:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp248                        ; DW_AT_low_pc
	.long	.Ltmp249-.Ltmp248               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	264                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2d3:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp248                        ; DW_AT_low_pc
	.long	.Ltmp249-.Ltmp248               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2e8:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp250                        ; DW_AT_low_pc
	.long	.Ltmp251-.Ltmp250               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	281                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2fd:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp250                        ; DW_AT_low_pc
	.long	.Ltmp251-.Ltmp250               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x312:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	285                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x31f:0x15 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp262                        ; DW_AT_low_pc
	.long	.Ltmp263-.Ltmp262               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	299                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x334:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp263                        ; DW_AT_low_pc
	.long	.Ltmp264-.Ltmp263               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	300                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x349:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp263                        ; DW_AT_low_pc
	.long	.Ltmp264-.Ltmp263               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x35e:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp265                        ; DW_AT_low_pc
	.long	.Ltmp266-.Ltmp265               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	317                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x373:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp265                        ; DW_AT_low_pc
	.long	.Ltmp266-.Ltmp265               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x388:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	321                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x395:0x14 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp277                        ; DW_AT_low_pc
	.long	.Ltmp278-.Ltmp277               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	237                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3a9:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	348                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3b6:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3c3:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3d0:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3df:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	349                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3ec:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3f9:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x406:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x415:0x1a DW_TAG_inlined_subroutine
	.long	634                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	343                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x422:0xc DW_TAG_inlined_subroutine
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
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
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
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
	.quad	0
	.quad	0
.Ldebug_ranges11:
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
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
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
	.quad	0
	.quad	0
.Ldebug_ranges17:
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
	.quad	0
	.quad	0
.Ldebug_ranges18:
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
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v007_maca_async_half_n_tiles_sc-16g/codegen/v007_maca_async_half_n_tiles_sc-16g_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=187
.Linfo_string3:
	.asciz	"memcpy_async<16, false>"       ; string offset=208
.Linfo_string4:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=232
.Linfo_string5:
	.asciz	"__barrier"                     ; string offset=327
.Linfo_string6:
	.asciz	"__syncthreads"                 ; string offset=337
.Linfo_string7:
	.asciz	"min"                           ; string offset=351
.Linfo_string8:
	.asciz	"exp2f"                         ; string offset=355
.Linfo_string9:
	.asciz	"__float2half_rn"               ; string offset=361
.Linfo_string10:
	.asciz	"__floats2half2_rn"             ; string offset=377
.Linfo_string11:
	.asciz	"__float22half2_rn"             ; string offset=395
.Linfo_string12:
	.asciz	"__half2float"                  ; string offset=413
.Linfo_string13:
	.asciz	"operator float"                ; string offset=426
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=441
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=455
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
    .mtreg_count:    112
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
    .mtreg_count:    120
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
