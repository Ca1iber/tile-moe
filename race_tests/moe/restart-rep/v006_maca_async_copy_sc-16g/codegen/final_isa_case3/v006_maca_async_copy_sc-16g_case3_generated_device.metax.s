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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 21 23 prologue_end            ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:21:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s8, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	shr_b32 r20, 3, r1
	and_b32 r21, r0, 56
	.loc	2 36 3                          ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:36:3
	shl_add_u32 r2, 4, r1, 0
	smov_b32 s24, 0x3c0
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r26, 0, 0
	.loc	2 21 23 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:21:23
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 22 24                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:22:24
	sshl_b64 s16, 2, s6
	sadd_co_u32 s0, s22, s16
	saddc_co_u32 s1, s23, s17
	.loc	2 23 38                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:23:38
	sshl_b32 s2, 7, s5
	.loc	2 23 47 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:23:47
	sadd_co_u32 s18, s18, s16
	saddc_co_u32 s19, s19, s17
	.loc	2 23 79                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:23:79
	sadd_co_u32 s16, s20, s16
	.loc	2 22 24 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:22:24
	ldu_b32 s1, s0, 0x0
	.loc	2 23 47                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:23:47
	ldu_b32 s3, s18, 0x0
	.loc	2 23 79 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:23:79
	saddc_co_u32 s17, s21, s17
	ldu_b32 s0, s16, 0x0
	smul_i32 s7, 0xe0000, s4
	smov_b32 s22, 0x1c00
	mov_b32 r3, s7
	mad_u24 r3, r20, s22, r3
	smul_i32 s5, 0xe00000, s6
	or_b32 r0, r3, r21
	add_u32 r0, r0, s5
	.loc	2 24 54 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:24:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 23 45                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:23:45
	sadd_co_i32 s2, s3, s2
	.loc	2 23 77 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:23:77
	ssub_co_i32 s6, s2, s0
	.loc	2 37 165 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:37:165
	mad_i32 r4, r0, 2, s10
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s2, r2
.Ltmp6:
	.loc	2 37 303                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:37:303
	add_u32 r3, 0x38000, r0
.Ltmp7:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s23, md
	snop 1
	smov_b32 md, s2
	smov_b32 s2, 0x1e0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp8:
	.loc	2 37 165                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:37:165
	mad_i32 r4, r3, 2, s10
.Ltmp9:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp10:
	.loc	2 37 303                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:37:303
	add_u32 r4, 0x70000, r0
	.loc	2 37 165 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:37:165
	mad_i32 r6, r4, 2, s10
	.loc	2 37 303                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:37:303
	add_u32 r5, 0xa8000, r0
.Ltmp11:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp12:
	.loc	2 37 165                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:37:165
	mad_i32 r6, r5, 2, s10
.Ltmp13:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp14:
	.loc	2 41 172                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:41:172
	mad_i32 r6, r0, 2, s12
.Ltmp15:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp16:
	.loc	2 41 172                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:41:172
	mad_i32 r6, r3, 2, s12
.Ltmp17:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp18:
	.loc	2 45 71                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:71
	add_u32 r3, 0x8000, r2
.Ltmp19:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp20:
	.loc	2 41 172                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:41:172
	mad_i32 r6, r4, 2, s12
.Ltmp21:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp22:
	.loc	2 41 172                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:41:172
	mad_i32 r4, r5, 2, s12
.Ltmp23:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	or_b32 r4, r0, 64
.Ltmp24:
	.loc	2 45 175                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:175
	mad_i32 r6, r4, 2, s10
	.loc	2 45 348 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:348
	add_u32 r5, 0x38040, r0
.Ltmp25:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp26:
	.loc	2 45 175                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:175
	mad_i32 r6, r5, 2, s10
.Ltmp27:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp28:
	.loc	2 45 348                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:348
	add_u32 r6, 0x70040, r0
	.loc	2 45 175 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:175
	mad_i32 r8, r6, 2, s10
.Ltmp29:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp30:
	.loc	2 45 348                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:348
	add_u32 r0, 0xa8040, r0
.Ltmp31:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp32:
	.loc	2 45 175                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:45:175
	mad_i32 r8, r0, 2, s10
.Ltmp33:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	shr_b32 r7, 6, r1
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp34:
	.loc	2 49 173                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:49:173
	mad_i32 r8, r4, 2, s12
.Ltmp35:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp36:
	.loc	2 49 173                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:49:173
	mad_i32 r4, r5, 2, s12
.Ltmp37:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	mul_u24 r7, 0x38000, r7
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp38:
	.loc	2 49 173                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:49:173
	mad_i32 r4, r6, 2, s12
.Ltmp39:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp40:
	.loc	2 49 173                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:49:173
	mad_i32 r4, r0, 2, s12
.Ltmp41:
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
.Ltmp42:
	.loc	2 51 3                          ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:51:3
	sadd_co_i32 s5, s5, s7
	mov_b32 r23, s5
	and_b32 r5, r1, 15
	shr_b32 r4, 1, r1
	and_or_b32 r0, r4, s2, r5
	mad_u24 r20, r20, s22, r23
	add_u32 r6, s6, r0
	or_b32 r20, r20, r21
	mov_b32 r21, 0x3800
	smul_i32 s5, 0x3800, s6
	cmp_gt_u32 s10, 0x2380, r6
	add_u32 r6, r6, 16
	mul_hi_i32 r25, s6, r21
	mov_b32 r21, s5
	mad_u24 r22, r5, s22, r7
	and_b32 r4, r4, 24
	shl_b32 r5, 6, r1
	cmp_gt_u32 s2, 0x2380, r6
	and_or_b32 r24, r1, 48, r21
	mad_u32 r22, r22, 2, r24
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r24, 0, 0
	and_or_b32 r4, r5, s24, r4
	shl_add_u32 r4, 1, r4, 0
	.loc	2 51 3                          ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:51:3
	add_co_u32 r21, s8, r22
	mov_b32 r22, s9
	shl_b64 r32, 0, r24
	shl_b64 r40, 0, r24
	shl_b64 r48, 0, r24
	shl_b64 r56, 0, r24
	shl_b64 r64, 0, r24
	shl_b64 r72, 0, r24
	shl_b64 r80, 0, r24
	shl_b64 r88, 0, r24
	shl_b64 r96, 0, r24
	shl_b64 r104, 0, r24
	shl_b64 r112, 0, r24
	shl_b64 r120, 0, r24
	shl_b64 r128, 0, r24
	shl_b64 r136, 0, r24
	shl_b64 r144, 0, r24
	shl_b64 r28, 0, r24
	shl_b64 r36, 0, r24
	shl_b64 r44, 0, r24
	shl_b64 r52, 0, r24
	shl_b64 r60, 0, r24
	shl_b64 r68, 0, r24
	shl_b64 r76, 0, r24
	shl_b64 r84, 0, r24
	shl_b64 r92, 0, r24
	shl_b64 r100, 0, r24
	shl_b64 r108, 0, r24
	shl_b64 r116, 0, r24
	shl_b64 r124, 0, r24
	shl_b64 r132, 0, r24
	shl_b64 r140, 0, r24
	shl_b64 r148, 0, r24
	add_u32 r5, 0x800, r4
	add_u32 r6, 0x1000, r4
	add_u32 r7, 0x1800, r4
	add_u32 r8, 0x2000, r4
	add_u32 r9, 0x2800, r4
	add_u32 r10, 0x3000, r4
	add_u32 r11, 0x3800, r4
	add_u32 r12, r4, 64
	add_u32 r13, 0x840, r4
	add_u32 r14, 0x1040, r4
	add_u32 r15, 0x1840, r4
	add_u32 r16, 0x2040, r4
	add_u32 r17, 0x2840, r4
	add_u32 r18, 0x3040, r4
	add_u32 r19, 0x3840, r4
	addc_co_u32 r22, r22, r23
	smov_b64 s8, 0
	shl_b64 r34, 0, r26
	shl_b64 r42, 0, r26
	shl_b64 r50, 0, r26
	shl_b64 r58, 0, r26
	shl_b64 r66, 0, r26
	shl_b64 r74, 0, r26
	shl_b64 r82, 0, r26
	shl_b64 r90, 0, r26
	shl_b64 r98, 0, r26
	shl_b64 r106, 0, r26
	shl_b64 r114, 0, r26
	shl_b64 r122, 0, r26
	shl_b64 r130, 0, r26
	shl_b64 r138, 0, r26
	shl_b64 r146, 0, r26
	shl_b64 r30, 0, r26
	shl_b64 r38, 0, r26
	shl_b64 r46, 0, r26
	shl_b64 r54, 0, r26
	shl_b64 r62, 0, r26
	shl_b64 r70, 0, r26
	shl_b64 r78, 0, r26
	shl_b64 r86, 0, r26
	shl_b64 r94, 0, r26
	shl_b64 r102, 0, r26
	shl_b64 r110, 0, r26
	shl_b64 r118, 0, r26
	shl_b64 r126, 0, r26
	shl_b64 r134, 0, r26
	shl_b64 r142, 0, r26
	shl_b64 r150, 0, r26
.Ltmp43:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s23
	bra LBB2_2
.Ltmp44:
	.p2align	5
LBB2_1:                                 ; %for.inc786
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 51 31                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:51:31
	sadd_co_u32 s8, 0x100, s8
	saddc_co_u32 s9, s9, 0
	scmp_eq_u64 0x3800, s8
	add_u32 r20, 0x80, r20
	.loc	2 51 3 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:51:3
	bra_smsks LBB2_22
LBB2_2:                                 ; %for.cond176.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r160, 0, 0
	shl_b64 r162, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r152, r21, s8
	mov_b32 r23, s9
	addc_co_u32 r153, r22, r23
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:57:17
	snop 1
	ldg_b128 r160, r152, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r164, 0, 0
	shl_b64 r166, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r23, r21, s8
	mov_b32 r152, s9
	addc_co_u32 r152, r22, r152
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:57:17
	add_co_u32 r154, 0x38000, r23
	addc_co_u32 r155, r152, 0
	snop 1
	ldg_b128 r164, r154, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s10
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r152, r21, s8
	mov_b32 r23, s9
	addc_co_u32 r153, r22, r23
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:57:17
	snop 1
	ldg_b128 r152, r152, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
	shl_b64 r156, 0, 0
	shl_b64 r158, 0, 0
	.loc	2 56 117 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:56:117
	and_xmsk s22, s2
	snop 0
	bra_xmskz LBB2_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r23, r21, s8
	mov_b32 r156, s9
	addc_co_u32 r156, r22, r156
	.loc	2 57 17 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:57:17
	add_co_u32 r158, 0x38040, r23
	addc_co_u32 r159, r156, 0
	snop 1
	ldg_b128 r156, r158, 0x0
LBB2_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s22
.Ltmp45:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(16)
	barrier
.Ltmp46:
	.loc	3 3834 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(12)
	barrier
.Ltmp47:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp48:
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r168, r4, 0x0
	lds_b128 r172, r5, 0x0
	lds_b128 r176, r6, 0x0
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	add_i32 r23, 0x4000, r4
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r168, r160, r144
	mma_16x16x16f16 r80, r168, r164, r80
	mma_16x16x16f16 r144, r170, r162, r144
	mma_16x16x16f16 r80, r170, r166, r80
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r168, r7, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r172, r160, r136
	mma_16x16x16f16 r72, r172, r164, r72
	mma_16x16x16f16 r136, r174, r162, r136
	mma_16x16x16f16 r72, r174, r166, r72
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r172, r8, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r176, r160, r128
	mma_16x16x16f16 r64, r176, r164, r64
	mma_16x16x16f16 r128, r178, r162, r128
	mma_16x16x16f16 r64, r178, r166, r64
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r176, r9, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r168, r160, r120
	mma_16x16x16f16 r56, r168, r164, r56
	mma_16x16x16f16 r120, r170, r162, r120
	mma_16x16x16f16 r56, r170, r166, r56
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r168, r10, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r172, r160, r112
	mma_16x16x16f16 r48, r172, r164, r48
	mma_16x16x16f16 r112, r174, r162, r112
	mma_16x16x16f16 r48, r174, r166, r48
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r172, r11, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r176, r160, r104
	mma_16x16x16f16 r40, r176, r164, r40
	mma_16x16x16f16 r104, r178, r162, r104
	mma_16x16x16f16 r40, r178, r166, r40
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0x4000, r5
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r168, r160, r96
	mma_16x16x16f16 r32, r168, r164, r32
	mma_16x16x16f16 r96, r170, r162, r96
	mma_16x16x16f16 r32, r170, r166, r32
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x4000, r6
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r172, r160, r88
	mma_16x16x16f16 r24, r172, r164, r24
	mma_16x16x16f16 r88, r174, r162, r88
	mma_16x16x16f16 r24, r174, r166, r24
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r172, r23, 0x0
	add_i32 r23, 0x4000, r7
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r176, r160, r148
	mma_16x16x16f16 r84, r176, r164, r84
	mma_16x16x16f16 r148, r178, r162, r148
	mma_16x16x16f16 r84, r178, r166, r84
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0x4000, r8
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r168, r160, r140
	mma_16x16x16f16 r76, r168, r164, r76
	mma_16x16x16f16 r140, r170, r162, r140
	mma_16x16x16f16 r76, r170, r166, r76
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x4000, r9
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r172, r160, r132
	mma_16x16x16f16 r68, r172, r164, r68
	mma_16x16x16f16 r132, r174, r162, r132
	mma_16x16x16f16 r68, r174, r166, r68
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r172, r23, 0x0
	add_i32 r23, 0x4000, r10
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r176, r160, r124
	mma_16x16x16f16 r60, r176, r164, r60
	mma_16x16x16f16 r124, r178, r162, r124
	mma_16x16x16f16 r60, r178, r166, r60
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0x4000, r11
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r168, r160, r116
	mma_16x16x16f16 r52, r168, r164, r52
	mma_16x16x16f16 r116, r170, r162, r116
	mma_16x16x16f16 r52, r170, r166, r52
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x4000, r12
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r172, r160, r108
	mma_16x16x16f16 r44, r172, r164, r44
	mma_16x16x16f16 r108, r174, r162, r108
	mma_16x16x16f16 r44, r174, r166, r44
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r172, r12, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r176, r160, r100
	mma_16x16x16f16 r36, r176, r164, r36
	mma_16x16x16f16 r100, r178, r162, r100
	mma_16x16x16f16 r36, r178, r166, r36
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r176, r13, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r168, r160, r92
	mma_16x16x16f16 r28, r168, r164, r28
	mma_16x16x16f16 r92, r170, r162, r92
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r160, r14, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	mma_16x16x16f16 r28, r170, r166, r28
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r164, r15, 0x0
	lds_b128 r168, r16, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(4)
	mma_16x16x16f16 r144, r172, r152, r144
	mma_16x16x16f16 r80, r172, r156, r80
	mma_16x16x16f16 r144, r174, r154, r144
	mma_16x16x16f16 r80, r174, r158, r80
	arrive bsmcnt(3)
	mma_16x16x16f16 r136, r176, r152, r136
	mma_16x16x16f16 r72, r176, r156, r72
	mma_16x16x16f16 r136, r178, r154, r136
	mma_16x16x16f16 r72, r178, r158, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r160, r152, r128
	mma_16x16x16f16 r64, r160, r156, r64
	mma_16x16x16f16 r128, r162, r154, r128
	mma_16x16x16f16 r64, r162, r158, r64
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r160, r17, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r164, r152, r120
	mma_16x16x16f16 r56, r164, r156, r56
	mma_16x16x16f16 r120, r166, r154, r120
	mma_16x16x16f16 r56, r166, r158, r56
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r164, r18, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r168, r152, r112
	mma_16x16x16f16 r48, r168, r156, r48
	mma_16x16x16f16 r112, r170, r154, r112
	mma_16x16x16f16 r48, r170, r158, r48
	.loc	2 68 50                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:68:50
	lds_b128 r168, r19, 0x0
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r160, r152, r104
	mma_16x16x16f16 r40, r160, r156, r40
	mma_16x16x16f16 r104, r162, r154, r104
	mma_16x16x16f16 r40, r162, r158, r40
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0x4000, r13
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r164, r152, r96
	mma_16x16x16f16 r32, r164, r156, r32
	mma_16x16x16f16 r96, r166, r154, r96
	mma_16x16x16f16 r32, r166, r158, r32
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r164, r23, 0x0
	add_i32 r23, 0x4000, r14
	.loc	2 74 64                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:74:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r168, r152, r88
	mma_16x16x16f16 r24, r168, r156, r24
	mma_16x16x16f16 r88, r170, r154, r88
	mma_16x16x16f16 r24, r170, r158, r24
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x4000, r15
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r160, r152, r148
	mma_16x16x16f16 r84, r160, r156, r84
	mma_16x16x16f16 r148, r162, r154, r148
	mma_16x16x16f16 r84, r162, r158, r84
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0x4000, r16
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r164, r152, r140
	mma_16x16x16f16 r76, r164, r156, r76
	mma_16x16x16f16 r140, r166, r154, r140
	mma_16x16x16f16 r76, r166, r158, r76
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r164, r23, 0x0
	add_i32 r23, 0x4000, r17
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r168, r152, r132
	mma_16x16x16f16 r68, r168, r156, r68
	mma_16x16x16f16 r132, r170, r154, r132
	mma_16x16x16f16 r68, r170, r158, r68
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x4000, r18
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r160, r152, r124
	mma_16x16x16f16 r60, r160, r156, r60
	mma_16x16x16f16 r124, r162, r154, r124
	mma_16x16x16f16 r60, r162, r158, r60
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0x4000, r19
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r164, r152, r116
	mma_16x16x16f16 r52, r164, r156, r52
	mma_16x16x16f16 r116, r166, r154, r116
	mma_16x16x16f16 r52, r166, r158, r52
	.loc	2 82 52                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:82:52
	lds_b128 r164, r23, 0x0
	.loc	2 88 62                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:88:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r168, r152, r108
	mma_16x16x16f16 r44, r168, r156, r44
	mma_16x16x16f16 r108, r170, r154, r108
	mma_16x16x16f16 r44, r170, r158, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r100, r160, r152, r100
	mma_16x16x16f16 r36, r160, r156, r36
	mma_16x16x16f16 r100, r162, r154, r100
	mma_16x16x16f16 r36, r162, r158, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r92, r164, r152, r92
	mma_16x16x16f16 r28, r164, r156, r28
	mma_16x16x16f16 r92, r166, r154, r92
	mma_16x16x16f16 r28, r166, r158, r28
.Ltmp49:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp50:
	.loc	2 97 16                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:97:16
	mov_b32 r152, 0x3700
	mov_b32 r153, 0
	cmp_lg_u64 s22, s8, r152
	scmp_eq_u64 0x3700, s8
	.loc	2 97 9 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:97:9
	snop 0
	bra_smsks LBB2_12
; %bb.11:                               ; %for.cond406.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 100 169 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:100:169
	mad_i32 r152, r20, 2, s16
.Ltmp51:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r2
.Ltmp52:
	.loc	2 100 169                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:100:169
	add_u32 r23, 0x38000, r20
.Ltmp53:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s5, md
	snop 1
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp54:
	.loc	2 100 169                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:100:169
	mad_i32 r152, r23, 2, s16
.Ltmp55:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp56:
	.loc	2 100 169                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:100:169
	add_u32 r152, 0x70000, r20
	mad_i32 r154, r152, 2, s16
.Ltmp57:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp58:
	.loc	2 100 169                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:100:169
	add_u32 r153, 0xa8000, r20
.Ltmp59:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp60:
	.loc	2 100 169                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:100:169
	mad_i32 r154, r153, 2, s16
.Ltmp61:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp62:
	.loc	2 104 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:104:177
	mad_i32 r154, r20, 2, s18
.Ltmp63:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp64:
	.loc	2 104 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:104:177
	mad_i32 r154, r23, 2, s18
.Ltmp65:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp66:
	.loc	2 104 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:104:177
	mad_i32 r154, r152, 2, s18
.Ltmp67:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp68:
	.loc	2 104 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:104:177
	mad_i32 r152, r153, 2, s18
.Ltmp69:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r154, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp70:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
.Ltmp71:
LBB2_12:                                ; %if.end475
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	3 0 10                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b64 r160, 0, 0
	shl_b64 r162, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s10
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then503
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r152, r21, s8
	mov_b32 r23, s9
	addc_co_u32 r153, r22, r23
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:112:19
	snop 1
	ldg_b128 r160, r152, 0x80
LBB2_14:                                ; %if.end558
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r164, 0, 0
	shl_b64 r166, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s2
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then503.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r23, r21, s8
	mov_b32 r152, s9
	addc_co_u32 r152, r22, r152
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:112:19
	add_co_u32 r154, 0x38080, r23
	addc_co_u32 r155, r152, 0
	snop 1
	ldg_b128 r164, r154, 0x0
LBB2_16:                                ; %if.end558.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s10
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then503.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r152, r21, s8
	mov_b32 r23, s9
	addc_co_u32 r153, r22, r23
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:112:19
	snop 1
	ldg_b128 r152, r152, 0xc0
LBB2_18:                                ; %if.end558.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r156, 0, 0
	shl_b64 r158, 0, 0
	.loc	2 111 118 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:111:118
	and_xmsk s24, s2
	snop 0
	bra_xmskz LBB2_20
; %bb.19:                               ; %if.then503.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:118
	add_co_u32 r23, r21, s8
	mov_b32 r156, s9
	addc_co_u32 r156, r22, r156
	.loc	2 112 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:112:19
	add_co_u32 r158, 0x380c0, r23
	addc_co_u32 r159, r156, 0
	snop 1
	ldg_b128 r156, r158, 0x0
LBB2_20:                                ; %if.end558.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
.Ltmp72:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp73:
	.loc	3 3834 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp74:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp75:
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r23, 0x8000, r4
	add_i32 r168, 0x8000, r5
	add_i32 r169, 0x8000, r6
	lds_b128 r170, r23, 0x0
	lds_b128 r174, r168, 0x0
	lds_b128 r178, r169, 0x0
	add_i32 r23, 0x8000, r7
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r170, r160, r144
	mma_16x16x16f16 r80, r170, r164, r80
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x8000, r8
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r144, r172, r162, r144
	mma_16x16x16f16 r80, r172, r166, r80
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r174, r160, r136
	mma_16x16x16f16 r72, r174, r164, r72
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r172, r23, 0x0
	add_i32 r23, 0x8000, r9
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r136, r176, r162, r136
	mma_16x16x16f16 r72, r176, r166, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r178, r160, r128
	mma_16x16x16f16 r64, r178, r164, r64
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0x8000, r10
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r128, r180, r162, r128
	mma_16x16x16f16 r64, r180, r166, r64
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r168, r160, r120
	mma_16x16x16f16 r56, r168, r164, r56
	mma_16x16x16f16 r120, r170, r162, r120
	mma_16x16x16f16 r56, r170, r166, r56
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x8000, r11
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r172, r160, r112
	mma_16x16x16f16 r48, r172, r164, r48
	mma_16x16x16f16 r112, r174, r162, r112
	mma_16x16x16f16 r48, r174, r166, r48
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r172, r23, 0x0
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	add_i32 r23, 0xc000, r4
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r176, r160, r104
	mma_16x16x16f16 r40, r176, r164, r40
	mma_16x16x16f16 r104, r178, r162, r104
	mma_16x16x16f16 r40, r178, r166, r40
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0xc000, r5
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r168, r160, r96
	mma_16x16x16f16 r32, r168, r164, r32
	mma_16x16x16f16 r96, r170, r162, r96
	mma_16x16x16f16 r32, r170, r166, r32
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0xc000, r6
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r172, r160, r88
	mma_16x16x16f16 r24, r172, r164, r24
	mma_16x16x16f16 r88, r174, r162, r88
	mma_16x16x16f16 r24, r174, r166, r24
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r172, r23, 0x0
	add_i32 r23, 0xc000, r7
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r176, r160, r148
	mma_16x16x16f16 r84, r176, r164, r84
	mma_16x16x16f16 r148, r178, r162, r148
	mma_16x16x16f16 r84, r178, r166, r84
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0xc000, r8
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r168, r160, r140
	mma_16x16x16f16 r76, r168, r164, r76
	mma_16x16x16f16 r140, r170, r162, r140
	mma_16x16x16f16 r76, r170, r166, r76
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0xc000, r9
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r172, r160, r132
	mma_16x16x16f16 r68, r172, r164, r68
	mma_16x16x16f16 r132, r174, r162, r132
	mma_16x16x16f16 r68, r174, r166, r68
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r172, r23, 0x0
	add_i32 r23, 0xc000, r10
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r176, r160, r124
	mma_16x16x16f16 r60, r176, r164, r60
	mma_16x16x16f16 r124, r178, r162, r124
	mma_16x16x16f16 r60, r178, r166, r60
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0xc000, r11
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r168, r160, r116
	mma_16x16x16f16 r52, r168, r164, r52
	mma_16x16x16f16 r116, r170, r162, r116
	mma_16x16x16f16 r52, r170, r166, r52
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r168, r23, 0x0
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	add_i32 r23, 0x8000, r12
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r172, r160, r108
	mma_16x16x16f16 r44, r172, r164, r44
	mma_16x16x16f16 r108, r174, r162, r108
	mma_16x16x16f16 r44, r174, r166, r44
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r172, r23, 0x0
	add_i32 r23, 0x8000, r13
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r176, r160, r100
	mma_16x16x16f16 r36, r176, r164, r36
	mma_16x16x16f16 r100, r178, r162, r100
	mma_16x16x16f16 r36, r178, r166, r36
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r176, r23, 0x0
	add_i32 r23, 0x8000, r14
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r168, r160, r92
	mma_16x16x16f16 r28, r168, r164, r28
	mma_16x16x16f16 r92, r170, r162, r92
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0x8000, r15
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	mma_16x16x16f16 r28, r170, r166, r28
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r172, r152, r144
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r164, r23, 0x0
	add_i32 r23, 0x8000, r16
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r80, r172, r156, r80
	mma_16x16x16f16 r144, r174, r154, r144
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0x8000, r17
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	mma_16x16x16f16 r80, r174, r158, r80
	arrive bsmcnt(3)
	mma_16x16x16f16 r136, r176, r152, r136
	mma_16x16x16f16 r72, r176, r156, r72
	mma_16x16x16f16 r136, r178, r154, r136
	mma_16x16x16f16 r72, r178, r158, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r160, r152, r128
	mma_16x16x16f16 r64, r160, r156, r64
	mma_16x16x16f16 r128, r162, r154, r128
	mma_16x16x16f16 r64, r162, r158, r64
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0x8000, r18
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r164, r152, r120
	mma_16x16x16f16 r56, r164, r156, r56
	mma_16x16x16f16 r120, r166, r154, r120
	mma_16x16x16f16 r56, r166, r158, r56
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r164, r23, 0x0
	add_i32 r23, 0x8000, r19
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r168, r152, r112
	mma_16x16x16f16 r48, r168, r156, r48
	mma_16x16x16f16 r112, r170, r154, r112
	mma_16x16x16f16 r48, r170, r158, r48
	.loc	2 123 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:123:52
	lds_b128 r168, r23, 0x0
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	add_i32 r23, 0xc000, r12
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r160, r152, r104
	mma_16x16x16f16 r40, r160, r156, r40
	mma_16x16x16f16 r104, r162, r154, r104
	mma_16x16x16f16 r40, r162, r158, r40
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0xc000, r13
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r164, r152, r96
	mma_16x16x16f16 r32, r164, r156, r32
	mma_16x16x16f16 r96, r166, r154, r96
	mma_16x16x16f16 r32, r166, r158, r32
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r164, r23, 0x0
	add_i32 r23, 0xc000, r14
	.loc	2 129 65                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:129:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r168, r152, r88
	mma_16x16x16f16 r24, r168, r156, r24
	mma_16x16x16f16 r88, r170, r154, r88
	mma_16x16x16f16 r24, r170, r158, r24
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0xc000, r15
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r160, r152, r148
	mma_16x16x16f16 r84, r160, r156, r84
	mma_16x16x16f16 r148, r162, r154, r148
	mma_16x16x16f16 r84, r162, r158, r84
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0xc000, r16
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r164, r152, r140
	mma_16x16x16f16 r76, r164, r156, r76
	mma_16x16x16f16 r140, r166, r154, r140
	mma_16x16x16f16 r76, r166, r158, r76
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r164, r23, 0x0
	add_i32 r23, 0xc000, r17
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r168, r152, r132
	mma_16x16x16f16 r68, r168, r156, r68
	mma_16x16x16f16 r132, r170, r154, r132
	mma_16x16x16f16 r68, r170, r158, r68
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r168, r23, 0x0
	add_i32 r23, 0xc000, r18
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r160, r152, r124
	mma_16x16x16f16 r60, r160, r156, r60
	mma_16x16x16f16 r124, r162, r154, r124
	mma_16x16x16f16 r60, r162, r158, r60
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r160, r23, 0x0
	add_i32 r23, 0xc000, r19
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r164, r152, r116
	mma_16x16x16f16 r52, r164, r156, r52
	mma_16x16x16f16 r116, r166, r154, r116
	mma_16x16x16f16 r52, r166, r158, r52
	.loc	2 137 52                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:137:52
	lds_b128 r164, r23, 0x0
	.loc	2 143 63                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:143:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r168, r152, r108
	mma_16x16x16f16 r44, r168, r156, r44
	mma_16x16x16f16 r108, r170, r154, r108
	mma_16x16x16f16 r44, r170, r158, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r100, r160, r152, r100
	mma_16x16x16f16 r36, r160, r156, r36
	mma_16x16x16f16 r100, r162, r154, r100
	mma_16x16x16f16 r36, r162, r158, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r92, r164, r152, r92
	mma_16x16x16f16 r28, r164, r156, r28
	mma_16x16x16f16 r92, r166, r154, r92
	mma_16x16x16f16 r28, r166, r158, r28
.Ltmp76:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp77:
	.loc	2 152 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:152:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB2_1
; %bb.21:                               ; %for.cond715.preheader
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 155 180                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:155:180
	mad_i32 r152, r20, 2, s20
.Ltmp78:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s7, r3
.Ltmp79:
	.loc	2 155 180                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:155:180
	add_u32 r23, 0x38000, r20
.Ltmp80:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s5, md
	snop 1
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp81:
	.loc	2 155 180                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:155:180
	mad_i32 r152, r23, 2, s20
.Ltmp82:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp83:
	.loc	2 155 180                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:155:180
	add_u32 r152, 0x70000, r20
	mad_i32 r154, r152, 2, s20
.Ltmp84:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp85:
	.loc	2 155 180                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:155:180
	add_u32 r153, 0xa8000, r20
.Ltmp86:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp87:
	.loc	2 155 180                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:155:180
	mad_i32 r154, r153, 2, s20
.Ltmp88:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp89:
	.loc	2 159 178                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:159:178
	mad_i32 r154, r20, 2, s12
.Ltmp90:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp91:
	.loc	2 159 178                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:159:178
	mad_i32 r154, r23, 2, s12
.Ltmp92:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r154, 0x0 bsm
.Ltmp93:
	.loc	2 159 178                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:159:178
	mad_i32 r154, r152, 2, s12
.Ltmp94:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp95:
	.loc	2 159 178                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:159:178
	mad_i32 r152, r153, 2, s12
.Ltmp96:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r154, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r152, 0x0 bsm
.Ltmp97:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
	bra LBB2_1
.Ltmp98:
LBB2_22:                                ; %for.cond789.preheader
	.loc	3 0 10                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b32 r2, 10, r1
	.loc	2 24 93 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:24:93
	sadd_co_i32 s0, s1, s0
	and_b32 r4, 0xf0000, r2
	shl_b32 r2, 11, r1
	mov_b32 r5, 0
	mov_b32 r3, 0x80
.Ltmp99:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
	and_b32 r2, 0x7800, r2
	mad_u32 r4, s4, r3, r4
	add_co_u32 r4, r4, r2
.Ltmp100:
	.loc	2 205 95                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:95
	cmp_gt_i32 s4, s0, r0
	.loc	2 164 3                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:164:3
	shr_b32 r1, 1, r1
	addc_co_u32 r5, r5, 0
	mov_b32 r2, 0x800
	mad_i32 r4, s6, r2, r4
	and_b32 r1, r1, 24
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	addc_co_u32 r2, r2, 0
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	sand_b64 s4, s4, s10
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_40
; %bb.23:                               ; %if.end994
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_41
LBB2_24:                                ; %if.end994.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_42
LBB2_25:                                ; %if.end994.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_43
LBB2_26:                                ; %if.end994.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_44
LBB2_27:                                ; %if.end994.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_45
LBB2_28:                                ; %if.end994.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_46
LBB2_29:                                ; %if.end994.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_31
LBB2_30:                                ; %if.then926.7
	.loc	2 187 27 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r91
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s4
	fmka_f32 r9, r91, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s4
	exp_f32 r9, r9
.Ltmp102:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r90
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp104:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r91, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r95
.Ltmp105:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s4
	fmka_f32 r10, r90, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s4
	exp_f32 r10, r10
.Ltmp106:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r89
.Ltmp107:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp108:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r90, r9
.Ltmp109:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s4
	fmka_f32 r11, r89, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s4
	exp_f32 r11, r11
.Ltmp110:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r88
.Ltmp111:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r11
.Ltmp112:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r89, r10
.Ltmp113:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s4
	fmka_f32 r8, r88, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s4
	exp_f32 r8, r8
.Ltmp114:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r88, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r92
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r93
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r94
.Ltmp115:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp116:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp117:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp118:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp119:
	.loc	2 218 314 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xe0, r6 devc
LBB2_31:                                ; %if.end994.7
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 66 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:66
	or_b32 r0, r0, 16
	.loc	2 205 95 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	snop 3
	sand_b64 s0, s0, s2
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_47
; %bb.32:                               ; %if.end994.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_48
LBB2_33:                                ; %if.end994.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_49
LBB2_34:                                ; %if.end994.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_50
LBB2_35:                                ; %if.end994.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_51
LBB2_36:                                ; %if.end994.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_52
LBB2_37:                                ; %if.end994.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_53
LBB2_38:                                ; %if.end994.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_54
LBB2_39:                                ; %if.end994.15
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:223:1
	snop 1
	endk
LBB2_40:                                ; %if.then926
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r147
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r147, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp121:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r146
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp123:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r147, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r151
.Ltmp124:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r146, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp125:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r145
.Ltmp126:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp127:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r146, r9
.Ltmp128:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r145, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp129:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r144
.Ltmp130:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp131:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r145, r10
.Ltmp132:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r144, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp133:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r144, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r148
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r149
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r150
.Ltmp134:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp135:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp136:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp137:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp138:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_24
LBB2_41:                                ; %if.then926.1
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r139
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r139, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp140:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r138
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp142:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r139, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r143
.Ltmp143:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r138, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp144:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r137
.Ltmp145:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp146:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r138, r9
.Ltmp147:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r137, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp148:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r136
.Ltmp149:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp150:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r137, r10
.Ltmp151:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r136, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp152:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r136, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r140
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r141
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r142
.Ltmp153:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp154:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp155:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp156:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp157:
	.loc	2 218 314 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x20, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_25
LBB2_42:                                ; %if.then926.2
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r131
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r131, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp159:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r130
.Ltmp160:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp161:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r131, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r135
.Ltmp162:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r130, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp163:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r129
.Ltmp164:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp165:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r130, r9
.Ltmp166:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r129, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp167:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r128
.Ltmp168:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp169:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r129, r10
.Ltmp170:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r128, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp171:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r128, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r132
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r133
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r134
.Ltmp172:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp173:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp174:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp175:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp176:
	.loc	2 218 314 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x40, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_26
LBB2_43:                                ; %if.then926.3
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r123
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r123, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp178:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r122
.Ltmp179:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp180:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r123, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r127
.Ltmp181:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r122, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp182:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r121
.Ltmp183:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp184:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r122, r9
.Ltmp185:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r121, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp186:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r120
.Ltmp187:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp188:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r121, r10
.Ltmp189:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r120, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp190:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r120, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r124
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r125
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r126
.Ltmp191:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp192:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp193:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp194:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp195:
	.loc	2 218 314 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x60, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_27
LBB2_44:                                ; %if.then926.4
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r115
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r115, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp197:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r114
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp199:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r115, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r119
.Ltmp200:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r114, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp201:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r113
.Ltmp202:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp203:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r114, r9
.Ltmp204:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r113, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp205:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r112
.Ltmp206:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp207:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r113, r10
.Ltmp208:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r112, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp209:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r112, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r116
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r117
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r118
.Ltmp210:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp211:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp212:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp213:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp214:
	.loc	2 218 314 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x80, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_28
LBB2_45:                                ; %if.then926.5
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r107
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r107, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp216:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r106
.Ltmp217:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp218:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r107, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r111
.Ltmp219:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r106, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp220:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r105
.Ltmp221:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp222:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r106, r9
.Ltmp223:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r105, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp224:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r104
.Ltmp225:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp226:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r105, r10
.Ltmp227:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r104, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp228:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r104, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r108
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r109
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r110
.Ltmp229:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp230:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp231:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp232:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp233:
	.loc	2 218 314 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xa0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB2_29
LBB2_46:                                ; %if.then926.6
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r3, 0xbfb8aa3b, r99
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r99, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp235:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r9, 0xbfb8aa3b, r98
.Ltmp236:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp237:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r7, r99, r7
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r7, r7, r103
.Ltmp238:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r98, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp239:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r10, 0xbfb8aa3b, r97
.Ltmp240:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp241:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r9, r98, r9
.Ltmp242:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r97, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp243:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r11, 0xbfb8aa3b, r96
.Ltmp244:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp245:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r10, r97, r10
.Ltmp246:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r96, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp247:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r3, r96, r3
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r3, r3, r100
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r6, r10, r101
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r8, r9, r102
.Ltmp248:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp249:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp250:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp251:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp252:
	.loc	2 218 314 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	add_co_u32 r10, r1, r10
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r2, r11
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xc0, r6 devc
	sor_b64 xmsk, xmsk, s6
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB2_30
	bra LBB2_31
LBB2_47:                                ; %if.then926.8
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r83
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r83, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp254:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r82
.Ltmp255:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp256:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r83, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r87
.Ltmp257:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r82, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp258:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r81
.Ltmp259:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp260:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r82, r8
.Ltmp261:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r81, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp262:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r80
.Ltmp263:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp264:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r81, r9
.Ltmp265:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r80, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp266:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r80, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r84
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r85
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r86
.Ltmp267:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp268:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp269:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp270:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp271:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10000, r6
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_33
LBB2_48:                                ; %if.then926.9
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r75
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r75, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp273:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r74
.Ltmp274:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp275:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r75, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r79
.Ltmp276:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r74, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp277:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r73
.Ltmp278:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp279:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r74, r8
.Ltmp280:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r73, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp281:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r72
.Ltmp282:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp283:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r73, r9
.Ltmp284:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r72, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp285:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r72, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r76
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r77
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r78
.Ltmp286:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp287:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp288:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp289:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp290:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10020, r6
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_34
LBB2_49:                                ; %if.then926.10
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r67
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r67, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp292:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r66
.Ltmp293:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp294:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r67, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r71
.Ltmp295:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r66, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp296:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r65
.Ltmp297:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp298:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r66, r8
.Ltmp299:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r65, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp300:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r64
.Ltmp301:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp302:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r65, r9
.Ltmp303:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r64, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp304:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r64, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r68
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r69
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r70
.Ltmp305:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp306:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp307:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp308:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp309:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10040, r6
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_35
LBB2_50:                                ; %if.then926.11
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r59
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r59, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp311:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r58
.Ltmp312:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp313:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r59, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r63
.Ltmp314:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r58, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp315:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r57
.Ltmp316:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp317:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r58, r8
.Ltmp318:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r57, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp319:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r56
.Ltmp320:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp321:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r57, r9
.Ltmp322:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r56, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp323:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r56, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r60
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r61
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r62
.Ltmp324:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp325:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp326:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp327:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp328:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10060, r6
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_36
LBB2_51:                                ; %if.then926.12
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r51
.Ltmp329:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r51, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp330:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r50
.Ltmp331:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp332:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r51, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r55
.Ltmp333:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r50, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp334:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r49
.Ltmp335:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp336:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r50, r8
.Ltmp337:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r49, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp338:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r48
.Ltmp339:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp340:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r49, r9
.Ltmp341:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r48, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp342:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r48, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r52
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r53
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r54
.Ltmp343:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp344:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp345:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp347:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10080, r6
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_37
LBB2_52:                                ; %if.then926.13
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r43
.Ltmp348:
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
.Ltmp349:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r42
.Ltmp350:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp351:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r43, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r47
.Ltmp352:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r42, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp353:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r41
.Ltmp354:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp355:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r42, r8
.Ltmp356:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r41, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp357:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r40
.Ltmp358:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp359:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r41, r9
.Ltmp360:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r40, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp361:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r40, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r44
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r45
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r46
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp363:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp366:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100a0, r6
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_38
LBB2_53:                                ; %if.then926.14
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r35
.Ltmp367:
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
.Ltmp368:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r34
.Ltmp369:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp370:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r35, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r39
.Ltmp371:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r34, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp372:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r33
.Ltmp373:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp374:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r34, r8
.Ltmp375:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r33, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp376:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r32
.Ltmp377:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp378:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r33, r9
.Ltmp379:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r32, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp380:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r32, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r36
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r37
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r38
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp382:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp383:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp385:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100c0, r6
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r11, r7, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 205 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:205:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_39
LBB2_54:                                ; %if.then926.15
	.loc	2 187 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:187:27
	mul_f32 r0, 0xbfb8aa3b, r27
.Ltmp386:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r7, 0, s0
	fmka_f32 r8, r27, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s0
	exp_f32 r8, r8
.Ltmp387:
	.loc	2 195 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:195:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
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
	.loc	2 186 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:186:27
	mul_f32 r8, 0xbfb8aa3b, r26
.Ltmp388:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp389:
	.loc	2 199 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:199:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s2
	.loc	2 203 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:203:20
	mul_f32 r6, r27, r6
	.loc	2 215 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:215:28
	mul_f32 r6, r6, r31
.Ltmp390:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s0
	fmka_f32 r9, r26, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
.Ltmp391:
	.loc	2 194 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:194:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
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
	.loc	2 185 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:185:27
	mul_f32 r9, 0xbfb8aa3b, r25
.Ltmp392:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r9
.Ltmp393:
	.loc	2 198 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:198:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	.loc	2 202 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:202:20
	mul_f32 r8, r26, r8
.Ltmp394:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s0
	fmka_f32 r10, r25, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
.Ltmp395:
	.loc	2 193 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:193:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
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
	.loc	2 184 27                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:184:27
	mul_f32 r10, 0xbfb8aa3b, r24
.Ltmp396:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r10
.Ltmp397:
	.loc	2 197 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:197:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	.loc	2 201 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:201:20
	mul_f32 r9, r25, r9
.Ltmp398:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s0
	fmka_f32 r7, r24, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s0
	exp_f32 r7, r7
.Ltmp399:
	.loc	2 192 26                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:192:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 196 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:196:24
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
	.loc	2 200 20                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:200:20
	mul_f32 r0, r24, r0
	.loc	2 212 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:212:28
	mul_f32 r0, r0, r28
	.loc	2 213 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:213:28
	mul_f32 r3, r9, r29
	.loc	2 214 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:214:28
	mul_f32 r7, r8, r30
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp401:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp404:
	.loc	2 218 31 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	snop 0
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
	addc_co_u32 r2, r2, r5
	add_co_u32 r4, 0x100e0, r1
	.loc	2 218 445 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	shl_b32 r1, 16, r6
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	.loc	2 218 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:31
	addc_co_u32 r5, r2, 0
	.loc	2 218 445                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:218:445
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r4, 0x0, r2 devc
	.loc	2 223 1 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:223:1
	snop 2
	endk
.Ltmp405:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 23
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
; codeLenInByte = 24696
; NumMTRegsForWarps/PEU: 182
; NumSTRegsForWarps/PEU: 30
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 225 0                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:225:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x0
	smov_b32 s2, s5
.Ltmp406:
	.loc	2 234 23 prologue_end           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:234:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s16, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s8, s6
	saddc_co_u32 s7, s9, s7
	ldu_b32 s6, s6, 0x0
	shl_b32 r3, 8, r1
	and_b32 r38, 0x3f800, r3
	and_b32 r39, r0, 56
	.loc	2 244 3                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:244:3
	shl_add_u32 r2, 4, r1, 0
	shl_b32 r40, 10, r1
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r44, 0, 0
	.loc	2 234 23 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:234:23
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:235:24
	sshl_b64 s8, 2, s6
	sadd_co_u32 s0, s14, s8
	saddc_co_u32 s1, s15, s9
	.loc	2 236 38                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:236:38
	sshl_b32 s2, 7, s5
	.loc	2 236 47 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:236:47
	sadd_co_u32 s10, s10, s8
	saddc_co_u32 s11, s11, s9
	.loc	2 235 24 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:235:24
	ldu_b32 s1, s0, 0x0
	.loc	2 236 47                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:236:47
	ldu_b32 s3, s10, 0x0
	.loc	2 236 79 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:236:79
	sadd_co_u32 s8, s12, s8
	saddc_co_u32 s9, s13, s9
	ldu_b32 s0, s8, 0x0
	smul_i32 s5, 0xe00000, s6
.Ltmp407:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s6, r2
.Ltmp408:
	.loc	2 237 54                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:237:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 236 45                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:236:45
	sadd_co_i32 s2, s3, s2
	sshl_b32 s3, 19, s4
	or3_b32 r0, r38, s3, r39
	add_u32 r0, s5, r0
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r0, 2, s18
	add_co_u32 r6, 0x20000, r4
	.loc	2 236 77                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:236:77
	ssub_co_i32 s10, s2, s0
.Ltmp409:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s2, md
	smov_b32 md, s6
.Ltmp410:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	addc_co_u32 r7, r5, 0
.Ltmp411:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r4, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
.Ltmp412:
	.loc	2 245 304                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:304
	or_b32 r3, 0x40000, r0
.Ltmp413:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp414:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	add_co_u32 r6, 0x40000, r4
	addc_co_u32 r7, r5, 0
	add_co_u32 r4, 0x60000, r4
.Ltmp415:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp416:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	addc_co_u32 r5, r5, 0
.Ltmp417:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	sashr_i32 s11, 31, s10
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp418:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r3, 2, s18
	.loc	2 245 304 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:304
	add_u32 r3, 0x50000, r0
.Ltmp419:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp420:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r3, 2, s18
	.loc	2 245 304 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:304
	add_u32 r3, 0x60000, r0
.Ltmp421:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp422:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r3, 2, s18
	.loc	2 245 304 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:304
	add_u32 r3, 0x70000, r0
.Ltmp423:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp424:
	.loc	2 245 167                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:245:167
	mad_i32 r4, r3, 2, s18
	or_b32 r3, r0, 64
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	mad_i32 r6, r3, 2, s18
	add_co_u32 r8, 0x20000, r6
.Ltmp425:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp426:
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	addc_co_u32 r9, r7, 0
.Ltmp427:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r4, 0x0 bsm
.Ltmp428:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp429:
	.loc	2 249 349 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:349
	or_b32 r3, 0x40040, r0
.Ltmp430:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
.Ltmp431:
	.loc	2 248 3                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:248:3
	add_u32 r5, 0x8000, r2
.Ltmp432:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
.Ltmp433:
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	add_co_u32 r8, 0x40000, r6
	addc_co_u32 r9, r7, 0
	add_co_u32 r6, 0x60000, r6
.Ltmp434:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp435:
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	addc_co_u32 r7, r7, 0
.Ltmp436:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r8, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	shl_b32 r8, 11, r1
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp437:
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	mad_i32 r6, r3, 2, s18
	.loc	2 249 349 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:349
	add_u32 r3, 0x50040, r0
.Ltmp438:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	and_b32 r41, 0x7800, r8
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp439:
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	mad_i32 r6, r3, 2, s18
	.loc	2 249 349 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:349
	add_u32 r3, 0x60040, r0
.Ltmp440:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp441:
	.loc	2 249 349                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:349
	add_u32 r0, 0x70040, r0
.Ltmp442:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp443:
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	mad_i32 r6, r3, 2, s18
.Ltmp444:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	and_b32 r3, r1, 15
	ldg_b128 r0, r6, 0x0 bsm
.Ltmp445:
	.loc	2 249 177                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:249:177
	mad_i32 r6, r0, 2, s18
.Ltmp446:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	sadd_co_u32 s12, 0x100, s18
	ldg_b128 r0, r6, 0x0 bsm
	saddc_co_u32 s13, s19, 0
	sadd_co_u32 s14, 0x180, s18
	shr_b32 r6, 1, r1
	and_b32 r4, 0x1e0, r6
	saddc_co_u32 s15, s19, 0
.Ltmp447:
	.loc	2 251 3                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:251:3
	sadd_co_i32 s3, s5, s3
	and_b32 r6, r6, 24
	shl_b32 r8, 6, r1
	smov_b32 s18, 0x3c0
	and_or_b32 r6, r8, s18, r6
	or_b32 r0, r4, r3
	or3_b32 r38, s3, r38, r39
	sshl_b64 s18, 12, s10
	smov_b32 s3, 0xf0000
	and_or_b32 r40, r40, s3, r41
	mov_b32 r39, s18
	add_u32 r7, s10, r0
	cmp_gt_u32 s8, 0x2380, r7
	add_u32 r7, r7, 16
	and_or_b32 r39, r1, 48, r39
	shl_b32 r40, 1, r40
	cmp_gt_u32 s6, 0x2380, r7
	mov_b32 r42, s19
	mov_b32 r41, 0
	add_co_u32 r39, r39, r40
	addc_co_u32 r40, r42, r41
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r42, 0, 0
	shl_add_u32 r6, 1, r6, 0
	shl_b64 r46, 0, r42
	shl_b64 r50, 0, r42
	shl_b64 r54, 0, r42
	shl_b64 r58, 0, r42
	shl_b64 r62, 0, r42
	shl_b64 r66, 0, r42
	shl_b64 r70, 0, r42
	shl_b64 r74, 0, r42
	shl_b64 r78, 0, r42
	shl_b64 r82, 0, r42
	shl_b64 r86, 0, r42
	shl_b64 r90, 0, r42
	shl_b64 r94, 0, r42
	shl_b64 r98, 0, r42
	shl_b64 r102, 0, r42
	shl_b64 r106, 0, r42
	shl_b64 r110, 0, r42
	shl_b64 r114, 0, r42
	shl_b64 r118, 0, r42
	shl_b64 r122, 0, r42
	shl_b64 r126, 0, r42
	shl_b64 r130, 0, r42
	shl_b64 r134, 0, r42
	shl_b64 r138, 0, r42
	shl_b64 r142, 0, r42
	shl_b64 r146, 0, r42
	shl_b64 r150, 0, r42
	shl_b64 r154, 0, r42
	shl_b64 r158, 0, r42
	shl_b64 r162, 0, r42
	shl_b64 r166, 0, r42
	.loc	2 251 3                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:251:3
	add_co_u32 r39, s22, r39
	mov_b32 r41, s23
	add_u32 r7, 0x800, r6
	add_u32 r8, 0x1000, r6
	add_u32 r9, 0x1800, r6
	add_u32 r10, 0x2000, r6
	add_u32 r11, 0x2800, r6
	add_u32 r12, 0x3000, r6
	add_u32 r13, 0x3800, r6
	add_u32 r14, 0x4000, r6
	add_u32 r15, 0x4800, r6
	add_u32 r16, 0x5000, r6
	add_u32 r17, 0x5800, r6
	add_u32 r18, 0x6000, r6
	add_u32 r19, 0x6800, r6
	add_u32 r20, 0x7000, r6
	add_u32 r21, 0x7800, r6
	add_u32 r22, r6, 64
	add_u32 r23, 0x840, r6
	add_u32 r24, 0x1040, r6
	add_u32 r25, 0x1840, r6
	add_u32 r26, 0x2040, r6
	add_u32 r27, 0x2840, r6
	add_u32 r28, 0x3040, r6
	add_u32 r29, 0x3840, r6
	add_u32 r30, 0x4040, r6
	add_u32 r31, 0x4840, r6
	add_u32 r32, 0x5040, r6
	add_u32 r33, 0x5840, r6
	add_u32 r34, 0x6040, r6
	add_u32 r35, 0x6840, r6
	add_u32 r36, 0x7040, r6
	add_u32 r37, 0x7840, r6
	addc_co_u32 r40, r41, r40
	smov_b64 s18, 0
	shl_b64 r48, 0, r44
	shl_b64 r52, 0, r44
	shl_b64 r56, 0, r44
	shl_b64 r60, 0, r44
	shl_b64 r64, 0, r44
	shl_b64 r68, 0, r44
	shl_b64 r72, 0, r44
	shl_b64 r76, 0, r44
	shl_b64 r80, 0, r44
	shl_b64 r84, 0, r44
	shl_b64 r88, 0, r44
	shl_b64 r92, 0, r44
	shl_b64 r96, 0, r44
	shl_b64 r100, 0, r44
	shl_b64 r104, 0, r44
	shl_b64 r108, 0, r44
	shl_b64 r112, 0, r44
	shl_b64 r116, 0, r44
	shl_b64 r120, 0, r44
	shl_b64 r124, 0, r44
	shl_b64 r128, 0, r44
	shl_b64 r132, 0, r44
	shl_b64 r136, 0, r44
	shl_b64 r140, 0, r44
	shl_b64 r144, 0, r44
	shl_b64 r148, 0, r44
	shl_b64 r152, 0, r44
	shl_b64 r156, 0, r44
	shl_b64 r160, 0, r44
	shl_b64 r164, 0, r44
	shl_b64 r168, 0, r44
.Ltmp448:
	.loc	3 3771 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s2
	bra LBB3_2
.Ltmp449:
	.p2align	5
LBB3_1:                                 ; %for.inc495
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 251 31                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:251:31
	sadd_co_u32 s18, 0x100, s18
	saddc_co_u32 s19, s19, 0
	scmp_eq_u64 0x1000, s18
	add_u32 r38, 0x80, r38
	.loc	2 251 3 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:251:3
	bra_smsks LBB3_22
LBB3_2:                                 ; %for.cond95.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:3
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r170, r39, s18
	mov_b32 r41, s19
	addc_co_u32 r171, r40, r41
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:257:17
	snop 1
	ldg_b128 r178, r170, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r41, r39, s18
	mov_b32 r170, s19
	addc_co_u32 r170, r40, r170
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:257:17
	add_co_u32 r172, 0x10000, r41
	addc_co_u32 r173, r170, 0
	snop 1
	ldg_b128 r182, r172, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r170, r39, s18
	mov_b32 r41, s19
	addc_co_u32 r171, r40, r41
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:257:17
	snop 1
	ldg_b128 r170, r170, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 256 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:256:117
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_10
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r41, r39, s18
	mov_b32 r174, s19
	addc_co_u32 r174, r40, r174
	.loc	2 257 17 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:257:17
	add_co_u32 r176, 0x10040, r41
	addc_co_u32 r177, r174, 0
	snop 1
	ldg_b128 r174, r176, 0x0
LBB3_10:                                ; %if.end.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
.Ltmp450:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(12)
	barrier
.Ltmp451:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp452:
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r6, 0x0
	lds_b128 r190, r7, 0x0
	lds_b128 r194, r8, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r186, r178, r166
	mma_16x16x16f16 r102, r186, r182, r102
	mma_16x16x16f16 r166, r188, r180, r166
	mma_16x16x16f16 r102, r188, r184, r102
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r9, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r190, r178, r162
	mma_16x16x16f16 r98, r190, r182, r98
	mma_16x16x16f16 r162, r192, r180, r162
	mma_16x16x16f16 r98, r192, r184, r98
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r190, r10, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r194, r178, r158
	mma_16x16x16f16 r94, r194, r182, r94
	mma_16x16x16f16 r158, r196, r180, r158
	mma_16x16x16f16 r94, r196, r184, r94
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r194, r11, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r186, r178, r154
	mma_16x16x16f16 r90, r186, r182, r90
	mma_16x16x16f16 r154, r188, r180, r154
	mma_16x16x16f16 r90, r188, r184, r90
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r12, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r190, r178, r150
	mma_16x16x16f16 r86, r190, r182, r86
	mma_16x16x16f16 r150, r192, r180, r150
	mma_16x16x16f16 r86, r192, r184, r86
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r190, r13, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r194, r178, r146
	mma_16x16x16f16 r82, r194, r182, r82
	mma_16x16x16f16 r146, r196, r180, r146
	mma_16x16x16f16 r82, r196, r184, r82
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r194, r14, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r186, r178, r142
	mma_16x16x16f16 r78, r186, r182, r78
	mma_16x16x16f16 r142, r188, r180, r142
	mma_16x16x16f16 r78, r188, r184, r78
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r15, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r190, r178, r138
	mma_16x16x16f16 r74, r190, r182, r74
	mma_16x16x16f16 r138, r192, r180, r138
	mma_16x16x16f16 r74, r192, r184, r74
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r190, r16, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r194, r178, r134
	mma_16x16x16f16 r70, r194, r182, r70
	mma_16x16x16f16 r134, r196, r180, r134
	mma_16x16x16f16 r70, r196, r184, r70
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r194, r17, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r186, r178, r130
	mma_16x16x16f16 r66, r186, r182, r66
	mma_16x16x16f16 r130, r188, r180, r130
	mma_16x16x16f16 r66, r188, r184, r66
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r18, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r190, r178, r126
	mma_16x16x16f16 r62, r190, r182, r62
	mma_16x16x16f16 r126, r192, r180, r126
	mma_16x16x16f16 r62, r192, r184, r62
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r190, r19, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r194, r178, r122
	mma_16x16x16f16 r58, r194, r182, r58
	mma_16x16x16f16 r122, r196, r180, r122
	mma_16x16x16f16 r58, r196, r184, r58
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r194, r20, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r186, r178, r118
	mma_16x16x16f16 r54, r186, r182, r54
	mma_16x16x16f16 r118, r188, r180, r118
	mma_16x16x16f16 r54, r188, r184, r54
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r21, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r190, r178, r114
	mma_16x16x16f16 r50, r190, r182, r50
	mma_16x16x16f16 r114, r192, r180, r114
	mma_16x16x16f16 r50, r192, r184, r50
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r190, r22, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r194, r178, r110
	mma_16x16x16f16 r46, r194, r182, r46
	mma_16x16x16f16 r110, r196, r180, r110
	mma_16x16x16f16 r46, r196, r184, r46
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r194, r23, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r186, r178, r106
	mma_16x16x16f16 r42, r186, r182, r42
	mma_16x16x16f16 r106, r188, r180, r106
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r178, r24, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	mma_16x16x16f16 r42, r188, r184, r42
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r182, r25, 0x0
	lds_b128 r186, r26, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(4)
	mma_16x16x16f16 r166, r190, r170, r166
	mma_16x16x16f16 r102, r190, r174, r102
	mma_16x16x16f16 r166, r192, r172, r166
	mma_16x16x16f16 r102, r192, r176, r102
	arrive bsmcnt(3)
	mma_16x16x16f16 r162, r194, r170, r162
	mma_16x16x16f16 r98, r194, r174, r98
	mma_16x16x16f16 r162, r196, r172, r162
	mma_16x16x16f16 r98, r196, r176, r98
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r178, r170, r158
	mma_16x16x16f16 r94, r178, r174, r94
	mma_16x16x16f16 r158, r180, r172, r158
	mma_16x16x16f16 r94, r180, r176, r94
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r178, r27, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r182, r170, r154
	mma_16x16x16f16 r90, r182, r174, r90
	mma_16x16x16f16 r154, r184, r172, r154
	mma_16x16x16f16 r90, r184, r176, r90
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r182, r28, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r186, r170, r150
	mma_16x16x16f16 r86, r186, r174, r86
	mma_16x16x16f16 r150, r188, r172, r150
	mma_16x16x16f16 r86, r188, r176, r86
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r29, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r178, r170, r146
	mma_16x16x16f16 r82, r178, r174, r82
	mma_16x16x16f16 r146, r180, r172, r146
	mma_16x16x16f16 r82, r180, r176, r82
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r178, r30, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r182, r170, r142
	mma_16x16x16f16 r78, r182, r174, r78
	mma_16x16x16f16 r142, r184, r172, r142
	mma_16x16x16f16 r78, r184, r176, r78
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r182, r31, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r74, r186, r174, r74
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r74, r188, r176, r74
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r32, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r178, r170, r134
	mma_16x16x16f16 r70, r178, r174, r70
	mma_16x16x16f16 r134, r180, r172, r134
	mma_16x16x16f16 r70, r180, r176, r70
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r178, r33, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r182, r170, r130
	mma_16x16x16f16 r66, r182, r174, r66
	mma_16x16x16f16 r130, r184, r172, r130
	mma_16x16x16f16 r66, r184, r176, r66
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r182, r34, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r186, r170, r126
	mma_16x16x16f16 r62, r186, r174, r62
	mma_16x16x16f16 r126, r188, r172, r126
	mma_16x16x16f16 r62, r188, r176, r62
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r186, r35, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r178, r170, r122
	mma_16x16x16f16 r58, r178, r174, r58
	mma_16x16x16f16 r122, r180, r172, r122
	mma_16x16x16f16 r58, r180, r176, r58
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r178, r36, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r182, r170, r118
	mma_16x16x16f16 r54, r182, r174, r54
	mma_16x16x16f16 r118, r184, r172, r118
	mma_16x16x16f16 r54, r184, r176, r54
	.loc	2 267 48                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:267:48
	lds_b128 r182, r37, 0x0
	.loc	2 273 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:273:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r186, r170, r114
	mma_16x16x16f16 r50, r186, r174, r50
	mma_16x16x16f16 r114, r188, r172, r114
	mma_16x16x16f16 r50, r188, r176, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r178, r170, r110
	mma_16x16x16f16 r46, r178, r174, r46
	mma_16x16x16f16 r110, r180, r172, r110
	mma_16x16x16f16 r46, r180, r176, r46
	arrive bsmcnt(0)
	mma_16x16x16f16 r106, r182, r170, r106
	mma_16x16x16f16 r42, r182, r174, r42
	mma_16x16x16f16 r106, r184, r172, r106
	mma_16x16x16f16 r42, r184, r176, r42
.Ltmp453:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp454:
	.loc	2 282 16                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:282:16
	mov_b32 r170, 0xf00
	mov_b32 r171, 0
	cmp_lg_u64 s2, s18, r170
	scmp_eq_u64 0xf00, s18
	.loc	2 282 9 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:282:9
	snop 0
	bra_smsks LBB3_12
; %bb.11:                               ; %for.cond255.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 285 171 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r38, 2, s12
.Ltmp455:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s11, r2
.Ltmp456:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	add_u32 r41, 0x10000, r38
.Ltmp457:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s5, md
	snop 1
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp458:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r41, 2, s12
	add_u32 r41, 0x20000, r38
.Ltmp459:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp460:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r41, 2, s12
	add_u32 r41, 0x30000, r38
.Ltmp461:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp462:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r41, 2, s12
	add_u32 r41, 0x40000, r38
.Ltmp463:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp464:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r41, 2, s12
	add_u32 r41, 0x50000, r38
.Ltmp465:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp466:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r41, 2, s12
	add_u32 r41, 0x60000, r38
.Ltmp467:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp468:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r41, 2, s12
	add_u32 r41, 0x70000, r38
.Ltmp469:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp470:
	.loc	2 285 171                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:285:171
	mad_i32 r170, r41, 2, s12
.Ltmp471:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
	smov_b32 md, s5
.Ltmp472:
LBB3_12:                                ; %if.end289
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 10 is_stmt 0                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:10
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s8
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then317
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r170, r39, s18
	mov_b32 r41, s19
	addc_co_u32 r171, r40, r41
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:293:19
	snop 1
	ldg_b128 r178, r170, 0x80
LBB3_14:                                ; %if.end372
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s6
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then317.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r41, r39, s18
	mov_b32 r170, s19
	addc_co_u32 r170, r40, r170
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:293:19
	add_co_u32 r172, 0x10080, r41
	addc_co_u32 r173, r170, 0
	snop 1
	ldg_b128 r182, r172, 0x0
LBB3_16:                                ; %if.end372.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s8
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then317.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r170, r39, s18
	mov_b32 r41, s19
	addc_co_u32 r171, r40, r41
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:293:19
	snop 1
	ldg_b128 r170, r170, 0xc0
LBB3_18:                                ; %if.end372.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 292 117 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:292:117
	and_xmsk s22, s6
	snop 0
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.then317.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r41, r39, s18
	mov_b32 r174, s19
	addc_co_u32 r174, r40, r174
	.loc	2 293 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:293:19
	add_co_u32 r176, 0x100c0, r41
	addc_co_u32 r177, r174, 0
	snop 1
	ldg_b128 r174, r176, 0x0
LBB3_20:                                ; %if.end372.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s22
.Ltmp473:
	.loc	3 3834 10 is_stmt 1             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
.Ltmp474:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp475:
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	add_i32 r41, 0x8000, r6
	add_i32 r186, 0x8000, r7
	add_i32 r187, 0x8000, r8
	lds_b128 r188, r41, 0x0
	lds_b128 r192, r186, 0x0
	lds_b128 r196, r187, 0x0
	add_i32 r41, 0x8000, r9
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r188, r178, r166
	mma_16x16x16f16 r102, r188, r182, r102
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r10
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	mma_16x16x16f16 r166, r190, r180, r166
	mma_16x16x16f16 r102, r190, r184, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r192, r178, r162
	mma_16x16x16f16 r98, r192, r182, r98
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r190, r41, 0x0
	add_i32 r41, 0x8000, r11
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	mma_16x16x16f16 r162, r194, r180, r162
	mma_16x16x16f16 r98, r194, r184, r98
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r196, r178, r158
	mma_16x16x16f16 r94, r196, r182, r94
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r194, r41, 0x0
	add_i32 r41, 0x8000, r12
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	mma_16x16x16f16 r158, r198, r180, r158
	mma_16x16x16f16 r94, r198, r184, r94
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r186, r178, r154
	mma_16x16x16f16 r90, r186, r182, r90
	mma_16x16x16f16 r154, r188, r180, r154
	mma_16x16x16f16 r90, r188, r184, r90
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r13
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r190, r178, r150
	mma_16x16x16f16 r86, r190, r182, r86
	mma_16x16x16f16 r150, r192, r180, r150
	mma_16x16x16f16 r86, r192, r184, r86
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r190, r41, 0x0
	add_i32 r41, 0x8000, r14
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r194, r178, r146
	mma_16x16x16f16 r82, r194, r182, r82
	mma_16x16x16f16 r146, r196, r180, r146
	mma_16x16x16f16 r82, r196, r184, r82
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r194, r41, 0x0
	add_i32 r41, 0x8000, r15
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r186, r178, r142
	mma_16x16x16f16 r78, r186, r182, r78
	mma_16x16x16f16 r142, r188, r180, r142
	mma_16x16x16f16 r78, r188, r184, r78
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r16
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r190, r178, r138
	mma_16x16x16f16 r74, r190, r182, r74
	mma_16x16x16f16 r138, r192, r180, r138
	mma_16x16x16f16 r74, r192, r184, r74
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r190, r41, 0x0
	add_i32 r41, 0x8000, r17
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r194, r178, r134
	mma_16x16x16f16 r70, r194, r182, r70
	mma_16x16x16f16 r134, r196, r180, r134
	mma_16x16x16f16 r70, r196, r184, r70
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r194, r41, 0x0
	add_i32 r41, 0x8000, r18
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r186, r178, r130
	mma_16x16x16f16 r66, r186, r182, r66
	mma_16x16x16f16 r130, r188, r180, r130
	mma_16x16x16f16 r66, r188, r184, r66
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r19
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r190, r178, r126
	mma_16x16x16f16 r62, r190, r182, r62
	mma_16x16x16f16 r126, r192, r180, r126
	mma_16x16x16f16 r62, r192, r184, r62
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r190, r41, 0x0
	add_i32 r41, 0x8000, r20
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r194, r178, r122
	mma_16x16x16f16 r58, r194, r182, r58
	mma_16x16x16f16 r122, r196, r180, r122
	mma_16x16x16f16 r58, r196, r184, r58
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r194, r41, 0x0
	add_i32 r41, 0x8000, r21
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r186, r178, r118
	mma_16x16x16f16 r54, r186, r182, r54
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r198, r41, 0x0
	add_i32 r41, 0x8000, r22
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	mma_16x16x16f16 r118, r188, r180, r118
	mma_16x16x16f16 r54, r188, r184, r54
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r23
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r114, r190, r178, r114
	mma_16x16x16f16 r50, r190, r182, r50
	mma_16x16x16f16 r114, r192, r180, r114
	mma_16x16x16f16 r50, r192, r184, r50
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r190, r41, 0x0
	add_i32 r41, 0x8000, r24
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r110, r194, r178, r110
	mma_16x16x16f16 r46, r194, r182, r46
	mma_16x16x16f16 r110, r196, r180, r110
	mma_16x16x16f16 r46, r196, r184, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r198, r178, r106
	mma_16x16x16f16 r42, r198, r182, r42
	mma_16x16x16f16 r106, r200, r180, r106
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r178, r41, 0x0
	add_i32 r41, 0x8000, r25
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	mma_16x16x16f16 r42, r200, r184, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r186, r170, r166
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r182, r41, 0x0
	add_i32 r41, 0x8000, r26
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	mma_16x16x16f16 r102, r186, r174, r102
	mma_16x16x16f16 r166, r188, r172, r166
	mma_16x16x16f16 r102, r188, r176, r102
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r27
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r162, r190, r170, r162
	mma_16x16x16f16 r98, r190, r174, r98
	mma_16x16x16f16 r162, r192, r172, r162
	mma_16x16x16f16 r98, r192, r176, r98
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r178, r170, r158
	mma_16x16x16f16 r94, r178, r174, r94
	mma_16x16x16f16 r158, r180, r172, r158
	mma_16x16x16f16 r94, r180, r176, r94
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r178, r41, 0x0
	add_i32 r41, 0x8000, r28
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r182, r170, r154
	mma_16x16x16f16 r90, r182, r174, r90
	mma_16x16x16f16 r154, r184, r172, r154
	mma_16x16x16f16 r90, r184, r176, r90
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r182, r41, 0x0
	add_i32 r41, 0x8000, r29
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r186, r170, r150
	mma_16x16x16f16 r86, r186, r174, r86
	mma_16x16x16f16 r150, r188, r172, r150
	mma_16x16x16f16 r86, r188, r176, r86
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r30
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r178, r170, r146
	mma_16x16x16f16 r82, r178, r174, r82
	mma_16x16x16f16 r146, r180, r172, r146
	mma_16x16x16f16 r82, r180, r176, r82
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r178, r41, 0x0
	add_i32 r41, 0x8000, r31
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r182, r170, r142
	mma_16x16x16f16 r78, r182, r174, r78
	mma_16x16x16f16 r142, r184, r172, r142
	mma_16x16x16f16 r78, r184, r176, r78
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r182, r41, 0x0
	add_i32 r41, 0x8000, r32
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r74, r186, r174, r74
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r74, r188, r176, r74
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r33
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r178, r170, r134
	mma_16x16x16f16 r70, r178, r174, r70
	mma_16x16x16f16 r134, r180, r172, r134
	mma_16x16x16f16 r70, r180, r176, r70
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r178, r41, 0x0
	add_i32 r41, 0x8000, r34
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r182, r170, r130
	mma_16x16x16f16 r66, r182, r174, r66
	mma_16x16x16f16 r130, r184, r172, r130
	mma_16x16x16f16 r66, r184, r176, r66
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r182, r41, 0x0
	add_i32 r41, 0x8000, r35
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r186, r170, r126
	mma_16x16x16f16 r62, r186, r174, r62
	mma_16x16x16f16 r126, r188, r172, r126
	mma_16x16x16f16 r62, r188, r176, r62
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r186, r41, 0x0
	add_i32 r41, 0x8000, r36
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r178, r170, r122
	mma_16x16x16f16 r58, r178, r174, r58
	mma_16x16x16f16 r122, r180, r172, r122
	mma_16x16x16f16 r58, r180, r176, r58
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r178, r41, 0x0
	add_i32 r41, 0x8000, r37
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r182, r170, r118
	mma_16x16x16f16 r54, r182, r174, r54
	mma_16x16x16f16 r118, r184, r172, r118
	mma_16x16x16f16 r54, r184, r176, r54
	.loc	2 303 50                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:303:50
	lds_b128 r182, r41, 0x0
	.loc	2 309 60                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:309:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r186, r170, r114
	mma_16x16x16f16 r50, r186, r174, r50
	mma_16x16x16f16 r114, r188, r172, r114
	mma_16x16x16f16 r50, r188, r176, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r178, r170, r110
	mma_16x16x16f16 r46, r178, r174, r46
	mma_16x16x16f16 r110, r180, r172, r110
	mma_16x16x16f16 r46, r180, r176, r46
	arrive bsmcnt(0)
	mma_16x16x16f16 r106, r182, r170, r106
	mma_16x16x16f16 r42, r182, r174, r42
	mma_16x16x16f16 r106, r184, r172, r106
	mma_16x16x16f16 r42, r184, r176, r42
.Ltmp476:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp477:
	.loc	2 318 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:318:9
	sandn_b64 cmsk, xmsk, s2
	snop 0
	bra_cmsks LBB3_1
; %bb.21:                               ; %for.cond459.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r38, 2, s14
.Ltmp478:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s3, r5
.Ltmp479:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	add_u32 r41, 0x10000, r38
.Ltmp480:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s2, md
	snop 1
	smov_b32 md, s3
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp481:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r41, 2, s14
	add_u32 r41, 0x20000, r38
.Ltmp482:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp483:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r41, 2, s14
	add_u32 r41, 0x30000, r38
.Ltmp484:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp485:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r41, 2, s14
	add_u32 r41, 0x40000, r38
.Ltmp486:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp487:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r41, 2, s14
	add_u32 r41, 0x50000, r38
.Ltmp488:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp489:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r41, 2, s14
	add_u32 r41, 0x60000, r38
.Ltmp490:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp491:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r41, 2, s14
	add_u32 r41, 0x70000, r38
.Ltmp492:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
.Ltmp493:
	.loc	2 321 181                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:321:181
	mad_i32 r170, r41, 2, s14
.Ltmp494:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r170, 0x0 bsm
	smov_b32 md, s2
	bra LBB3_1
.Ltmp495:
LBB3_22:                                ; %for.cond498.preheader
	.loc	2 237 93                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:237:93
	sadd_co_i32 s0, s1, s0
.Ltmp496:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp497:
	.loc	2 325 3                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:325:3
	shl_b64 r6, 0, s20
	.loc	2 327 92                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:327:92
	cmp_gt_i32 s2, s0, r0
	.loc	2 325 3                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:325:3
	mad_i32 r6, s10, 2, r6
	shl_b32 r2, 1, r3
	add_co_u32 r6, r6, r2
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 327 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:327:9
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then514
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 329 114 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:329:114
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then536
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r2, 1, r4
	add_co_u32 r8, r6, r2
	addc_co_u32 r9, r7, 0
	.loc	2 330 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:330:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_25:                                ; %Flow585
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_26:                                ; %for.inc557
	sor_b64 xmsk, xmsk, s12
	.loc	2 327 63 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:327:63
	or_b32 r4, r4, 16
	.loc	2 327 92 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:327:92
	or_b32 r2, r3, r4
	cmp_gt_i32 s14, s0, r2
	add_u16 r2_lo, 0, 0
	.loc	2 327 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:327:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.27:                               ; %if.then514.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r2_lo, 0, 0
	.loc	2 329 114 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:329:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_29
; %bb.28:                               ; %if.then536.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r2, 1, r4
	add_co_u32 r6, r6, r2
	addc_co_u32 r7, r7, 0
	.loc	2 330 19 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:330:19
	snop 1
	ldg_u16 r2, r6, 0x0
LBB3_29:                                ; %Flow584
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_30:                                ; %for.inc557.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r4, 6, r1
	mul_u24 r6, 0x38000, r4
	mov_b32 r7, 0
	mov_b32 r4, 0x100
	mul_u24 r3, 0x1c00, r3
	mad_u32 r6, s4, r4, r6
	add_co_u32 r6, r6, r3
	.loc	2 338 3 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:338:3
	shr_b32 r1, 1, r1
	addc_co_u32 r7, r7, 0
	mov_b32 r3, 0x1c00
	mad_i32 r6, s10, r3, r6
	and_b32 r1, r1, 24
	add_co_u32 r1, s16, r1
	mov_b32 r3, s17
	addc_co_u32 r3, r3, 0
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_46
; %bb.31:                               ; %for.inc680
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_49
LBB3_32:                                ; %for.inc680.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_52
LBB3_33:                                ; %for.inc680.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_55
LBB3_34:                                ; %for.inc680.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_58
LBB3_35:                                ; %for.inc680.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_61
LBB3_36:                                ; %for.inc680.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_64
LBB3_37:                                ; %for.inc680.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_67
LBB3_38:                                ; %for.inc680.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_70
LBB3_39:                                ; %for.inc680.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_73
LBB3_40:                                ; %for.inc680.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_76
LBB3_41:                                ; %for.inc680.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_79
LBB3_42:                                ; %for.inc680.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_82
LBB3_43:                                ; %for.inc680.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_85
LBB3_44:                                ; %for.inc680.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_88
LBB3_45:                                ; %for.inc680.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_91
	bra LBB3_94
LBB3_46:                                ; %if.then574
.Ltmp498:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp499:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp500:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp502:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then643
.Ltmp503:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp504:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r169, r4
.Ltmp505:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp506:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r168, r4
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp508:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r167, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r166, r4
.Ltmp509:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp510:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp511:
	.loc	2 353 28 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_48:                                ; %Flow583
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_32
LBB3_49:                                ; %if.then574.1
.Ltmp512:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp513:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp514:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp515:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp516:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_51
; %bb.50:                               ; %if.then643.1
.Ltmp517:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp518:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r165, r4
.Ltmp519:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp520:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r164, r4
.Ltmp521:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp522:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r163, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r162, r4
.Ltmp523:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp524:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp525:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_51:                                ; %Flow582
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_33
LBB3_52:                                ; %if.then574.2
.Ltmp526:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp527:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp528:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp529:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp530:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.then643.2
.Ltmp531:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp532:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r161, r4
.Ltmp533:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp534:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r160, r4
.Ltmp535:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp536:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r159, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r158, r4
.Ltmp537:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp538:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp539:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_54:                                ; %Flow581
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_34
LBB3_55:                                ; %if.then574.3
.Ltmp540:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp541:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp542:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp543:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp544:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_57
; %bb.56:                               ; %if.then643.3
.Ltmp545:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp546:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r157, r4
.Ltmp547:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp548:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r156, r4
.Ltmp549:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp550:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r155, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r154, r4
.Ltmp551:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp552:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp553:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_57:                                ; %Flow580
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_35
LBB3_58:                                ; %if.then574.4
.Ltmp554:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp555:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp556:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp557:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp558:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then643.4
.Ltmp559:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp560:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r153, r4
.Ltmp561:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp562:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r152, r4
.Ltmp563:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp564:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r151, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r150, r4
.Ltmp565:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp566:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp567:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_60:                                ; %Flow579
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_36
LBB3_61:                                ; %if.then574.5
.Ltmp568:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp569:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp570:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp571:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp572:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_63
; %bb.62:                               ; %if.then643.5
.Ltmp573:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp574:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r149, r4
.Ltmp575:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp576:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r148, r4
.Ltmp577:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp578:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r147, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r146, r4
.Ltmp579:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp580:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp581:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_63:                                ; %Flow578
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_37
LBB3_64:                                ; %if.then574.6
.Ltmp582:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp583:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp584:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp585:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp586:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.then643.6
.Ltmp587:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp588:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r145, r4
.Ltmp589:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp590:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r144, r4
.Ltmp591:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp592:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r143, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r142, r4
.Ltmp593:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp594:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp595:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_66:                                ; %Flow577
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_38
LBB3_67:                                ; %if.then574.7
.Ltmp596:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp597:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp598:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp599:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp600:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_69
; %bb.68:                               ; %if.then643.7
.Ltmp601:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp602:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r141, r4
.Ltmp603:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp604:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r140, r4
.Ltmp605:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp606:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r139, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r138, r4
.Ltmp607:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp608:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp609:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_69:                                ; %Flow576
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_39
LBB3_70:                                ; %if.then574.8
.Ltmp610:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp611:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp612:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp613:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp614:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then643.8
.Ltmp615:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp616:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r137, r4
.Ltmp617:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp618:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r136, r4
.Ltmp619:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp620:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r135, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r134, r4
.Ltmp621:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp622:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp623:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x100, r8 devc
LBB3_72:                                ; %Flow575
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_40
LBB3_73:                                ; %if.then574.9
.Ltmp624:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp625:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp626:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp627:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp628:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_75
; %bb.74:                               ; %if.then643.9
.Ltmp629:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp630:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r133, r4
.Ltmp631:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp632:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r132, r4
.Ltmp633:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp634:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r131, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r130, r4
.Ltmp635:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp636:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp637:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x120, r8 devc
LBB3_75:                                ; %Flow574
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_41
LBB3_76:                                ; %if.then574.10
.Ltmp638:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp639:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp640:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp641:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp642:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.then643.10
.Ltmp643:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp644:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r129, r4
.Ltmp645:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp646:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r128, r4
.Ltmp647:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp648:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r127, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r126, r4
.Ltmp649:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp650:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp651:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x140, r8 devc
LBB3_78:                                ; %Flow573
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_42
LBB3_79:                                ; %if.then574.11
.Ltmp652:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp653:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp654:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp655:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp656:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_81
; %bb.80:                               ; %if.then643.11
.Ltmp657:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp658:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r125, r4
.Ltmp659:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp660:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r124, r4
.Ltmp661:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp662:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r123, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r122, r4
.Ltmp663:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp664:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp665:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x160, r8 devc
LBB3_81:                                ; %Flow572
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_43
LBB3_82:                                ; %if.then574.12
.Ltmp666:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp667:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp668:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp669:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp670:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_84
; %bb.83:                               ; %if.then643.12
.Ltmp671:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp672:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r121, r4
.Ltmp673:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp674:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r120, r4
.Ltmp675:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp676:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r119, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r118, r4
.Ltmp677:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp678:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp679:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x180, r8 devc
LBB3_84:                                ; %Flow571
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_44
LBB3_85:                                ; %if.then574.13
.Ltmp680:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp681:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp682:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp683:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp684:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_87
; %bb.86:                               ; %if.then643.13
.Ltmp685:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp686:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r117, r4
.Ltmp687:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp688:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r116, r4
.Ltmp689:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp690:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r115, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r114, r4
.Ltmp691:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp692:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp693:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x1a0, r8 devc
LBB3_87:                                ; %Flow570
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_45
LBB3_88:                                ; %if.then574.14
.Ltmp694:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp695:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp696:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp697:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp698:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_90
; %bb.89:                               ; %if.then643.14
.Ltmp699:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp700:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r8, r113, r4
.Ltmp701:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp702:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r9, r112, r4
.Ltmp703:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp704:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r8, 16, r8
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r8, r111, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r110, r4
.Ltmp705:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp706:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp707:
	.loc	2 353 312 is_stmt 1             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r10, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r10, r1, r10
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	addc_co_u32 r11, r3, r11
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x1c0, r8 devc
LBB3_90:                                ; %Flow569
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_94
LBB3_91:                                ; %if.then574.15
.Ltmp708:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp709:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp710:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp711:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp712:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_93
; %bb.92:                               ; %if.then643.15
.Ltmp713:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp714:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r5, r109, r4
.Ltmp715:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp716:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r8, r108, r4
.Ltmp717:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp718:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r5, 16, r5
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r5, r107, r4
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r4, r106, r4
.Ltmp719:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp720:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp721:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r5, 16, r5
	and_b32 r4, 0xffff, r4
	or_b32 r8, r5, r4
	.loc	2 353 312                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:312
	shl_b64 r4, 1, r6
	.loc	2 353 28 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r4, r1, r4
	addc_co_u32 r5, r3, r5
	.loc	2 353 443                       ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r4, 0x1e0, r8 devc
LBB3_93:                                ; %Flow568
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s2
LBB3_94:                                ; %for.inc680.15
	sor_b64 xmsk, xmsk, s4
	.loc	2 339 65 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:65
	or_b32 r0, r0, 16
	.loc	2 339 94 is_stmt 0              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:94
	cmp_gt_i32 s0, s0, r0
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	snop 3
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_111
; %bb.95:                               ; %for.inc680.16
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_114
LBB3_96:                                ; %for.inc680.17
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_117
LBB3_97:                                ; %for.inc680.18
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_120
LBB3_98:                                ; %for.inc680.19
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_123
LBB3_99:                                ; %for.inc680.20
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_126
LBB3_100:                               ; %for.inc680.21
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_129
LBB3_101:                               ; %for.inc680.22
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_132
LBB3_102:                               ; %for.inc680.23
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_135
LBB3_103:                               ; %for.inc680.24
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_138
LBB3_104:                               ; %for.inc680.25
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_141
LBB3_105:                               ; %for.inc680.26
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_144
LBB3_106:                               ; %for.inc680.27
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_147
LBB3_107:                               ; %for.inc680.28
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_150
LBB3_108:                               ; %for.inc680.29
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_153
LBB3_109:                               ; %for.inc680.30
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_156
LBB3_110:                               ; %for.inc680.31
	.loc	2 358 1 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:358:1
	snop 0
	endk
LBB3_111:                               ; %if.then574.16
.Ltmp722:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp723:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp724:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_113
; %bb.112:                              ; %if.then643.16
.Ltmp727:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp728:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r105, r0
.Ltmp729:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp730:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r104, r0
.Ltmp731:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp732:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r103, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r102, r0
.Ltmp733:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp734:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp735:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_113:                               ; %Flow567
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_96
LBB3_114:                               ; %if.then574.17
.Ltmp736:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp737:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp738:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_116
; %bb.115:                              ; %if.then643.17
.Ltmp741:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp742:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r101, r0
.Ltmp743:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp744:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r100, r0
.Ltmp745:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp746:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r99, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r98, r0
.Ltmp747:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp748:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp749:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_116:                               ; %Flow566
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_97
LBB3_117:                               ; %if.then574.18
.Ltmp750:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp751:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp752:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_119
; %bb.118:                              ; %if.then643.18
.Ltmp755:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp756:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r97, r0
.Ltmp757:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp758:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r96, r0
.Ltmp759:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp760:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r95, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r94, r0
.Ltmp761:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp762:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp763:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_119:                               ; %Flow565
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_98
LBB3_120:                               ; %if.then574.19
.Ltmp764:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp765:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp766:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_122
; %bb.121:                              ; %if.then643.19
.Ltmp769:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp770:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r93, r0
.Ltmp771:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp772:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r92, r0
.Ltmp773:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp774:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r91, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r90, r0
.Ltmp775:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp776:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp777:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_122:                               ; %Flow564
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_99
LBB3_123:                               ; %if.then574.20
.Ltmp778:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp779:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp780:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_125
; %bb.124:                              ; %if.then643.20
.Ltmp783:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp784:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r89, r0
.Ltmp785:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp786:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r88, r0
.Ltmp787:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp788:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r87, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r86, r0
.Ltmp789:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp790:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp791:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_125:                               ; %Flow563
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_100
LBB3_126:                               ; %if.then574.21
.Ltmp792:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp793:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp794:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_128
; %bb.127:                              ; %if.then643.21
.Ltmp797:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp798:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r85, r0
.Ltmp799:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp800:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r84, r0
.Ltmp801:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp802:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r83, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r82, r0
.Ltmp803:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp804:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp805:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_128:                               ; %Flow562
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_101
LBB3_129:                               ; %if.then574.22
.Ltmp806:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp807:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp808:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp809:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp810:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_131
; %bb.130:                              ; %if.then643.22
.Ltmp811:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp812:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r81, r0
.Ltmp813:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp814:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r80, r0
.Ltmp815:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp816:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r79, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r78, r0
.Ltmp817:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp818:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp819:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_131:                               ; %Flow561
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_102
LBB3_132:                               ; %if.then574.23
.Ltmp820:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp821:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp822:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp823:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp824:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_134
; %bb.133:                              ; %if.then643.23
.Ltmp825:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp826:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r77, r0
.Ltmp827:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp828:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r76, r0
.Ltmp829:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp830:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r75, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r74, r0
.Ltmp831:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp832:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp833:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x380e0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_134:                               ; %Flow560
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_103
LBB3_135:                               ; %if.then574.24
.Ltmp834:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp835:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp836:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp837:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp838:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_137
; %bb.136:                              ; %if.then643.24
.Ltmp839:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp840:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r73, r0
.Ltmp841:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp842:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r72, r0
.Ltmp843:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp844:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r71, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r70, r0
.Ltmp845:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp846:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp847:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38100, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_137:                               ; %Flow559
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_138:                               ; %if.then574.25
.Ltmp848:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp849:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp850:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp851:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp852:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_140
; %bb.139:                              ; %if.then643.25
.Ltmp853:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp854:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r69, r0
.Ltmp855:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp856:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r68, r0
.Ltmp857:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp858:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r67, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r66, r0
.Ltmp859:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp860:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp861:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38120, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_140:                               ; %Flow558
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_105
LBB3_141:                               ; %if.then574.26
.Ltmp862:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp863:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp864:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp865:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp866:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_143
; %bb.142:                              ; %if.then643.26
.Ltmp867:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp868:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r65, r0
.Ltmp869:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp870:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r64, r0
.Ltmp871:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp872:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r63, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r62, r0
.Ltmp873:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp874:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp875:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38140, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_143:                               ; %Flow557
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_106
LBB3_144:                               ; %if.then574.27
.Ltmp876:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp877:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp878:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp879:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp880:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_146
; %bb.145:                              ; %if.then643.27
.Ltmp881:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp882:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r61, r0
.Ltmp883:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp884:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r60, r0
.Ltmp885:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp886:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r59, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r58, r0
.Ltmp887:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp888:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp889:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38160, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_146:                               ; %Flow556
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_107
LBB3_147:                               ; %if.then574.28
.Ltmp890:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp891:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp892:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp893:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp894:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_149
; %bb.148:                              ; %if.then643.28
.Ltmp895:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp896:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r57, r0
.Ltmp897:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp898:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r56, r0
.Ltmp899:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp900:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r55, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r54, r0
.Ltmp901:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp902:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp903:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x38180, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_149:                               ; %Flow555
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_108
LBB3_150:                               ; %if.then574.29
.Ltmp904:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp905:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp906:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp907:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp908:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_152
; %bb.151:                              ; %if.then643.29
.Ltmp909:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp910:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r53, r0
.Ltmp911:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp912:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r52, r0
.Ltmp913:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp914:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r51, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r50, r0
.Ltmp915:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp916:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp917:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x381a0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_152:                               ; %Flow554
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_109
LBB3_153:                               ; %if.then574.30
.Ltmp918:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp919:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp920:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp921:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp922:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_155
; %bb.154:                              ; %if.then643.30
.Ltmp923:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp924:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r4, r49, r0
.Ltmp925:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp926:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r5, r48, r0
.Ltmp927:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp928:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r4, 16, r4
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r4, r47, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r46, r0
.Ltmp929:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp930:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp931:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	or_b32 r8, r4, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r4, 1, r6
	add_co_u32 r0, r1, r4
	addc_co_u32 r4, r3, r5
	add_co_u32 r10, 0x381c0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_155:                               ; %Flow553
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 339 9 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:339:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_110
LBB3_156:                               ; %if.then574.31
.Ltmp932:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp933:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp934:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp935:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp936:
	.loc	2 351 11 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:351:11
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_110
; %bb.157:                              ; %if.then643.31
.Ltmp937:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r2_lo
.Ltmp938:
	.loc	2 347 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:347:22
	mul_f32 r2, r45, r0
.Ltmp939:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp940:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	mul_f32 r4, r44, r0
.Ltmp941:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp942:
	.loc	2 346 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:346:22
	shl_b32 r2, 16, r2
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	add_u16 r4_hi, 0, 0
	or_b32 r5, r2, r4
	.loc	2 345 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:345:22
	mul_f32 r2, r43, r0
	.loc	2 344 22                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:344:22
	mul_f32 r0, r42, r0
.Ltmp943:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp944:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp945:
	.loc	2 350 40 is_stmt 1              ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	shl_b32 r2, 16, r2
	and_b32 r0, 0xffff, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	shl_b64 r6, 1, r6
	.loc	2 350 40                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:350:40
	or_b32 r4, r2, r0
	.loc	2 353 28                        ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:28
	add_co_u32 r0, r1, r6
	addc_co_u32 r1, r3, r7
	add_co_u32 r0, 0x381e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 353 443 is_stmt 0             ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:353:443
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 358 1 is_stmt 1               ; race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp:358:1
	snop 2
	endk
.Ltmp946:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 21200
; NumMTRegsForWarps/PEU: 202
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
	.quad	.Ltmp45                         ; DW_AT_low_pc
	.long	.Ltmp46-.Ltmp45                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	63                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xb5:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp46                         ; DW_AT_low_pc
	.long	.Ltmp47-.Ltmp46                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	64                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc9:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp47                         ; DW_AT_low_pc
	.long	.Ltmp48-.Ltmp47                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	65                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xdd:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp47                         ; DW_AT_low_pc
	.long	.Ltmp48-.Ltmp47                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xf2:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp49                         ; DW_AT_low_pc
	.long	.Ltmp50-.Ltmp49                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	96                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x106:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp49                         ; DW_AT_low_pc
	.long	.Ltmp50-.Ltmp49                 ; DW_AT_high_pc
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
	.quad	.Ltmp72                         ; DW_AT_low_pc
	.long	.Ltmp73-.Ltmp72                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	118                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x147:0x14 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp73                         ; DW_AT_low_pc
	.long	.Ltmp74-.Ltmp73                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	119                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x15b:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp74                         ; DW_AT_low_pc
	.long	.Ltmp75-.Ltmp74                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	120                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x16f:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp74                         ; DW_AT_low_pc
	.long	.Ltmp75-.Ltmp74                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x184:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp76                         ; DW_AT_low_pc
	.long	.Ltmp77-.Ltmp76                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	151                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x198:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp76                         ; DW_AT_low_pc
	.long	.Ltmp77-.Ltmp76                 ; DW_AT_high_pc
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
	.quad	.Ltmp99                         ; DW_AT_low_pc
	.long	.Ltmp100-.Ltmp99                ; DW_AT_high_pc
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
	.quad	.Ltmp450                        ; DW_AT_low_pc
	.long	.Ltmp451-.Ltmp450               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	263                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x2be:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp451                        ; DW_AT_low_pc
	.long	.Ltmp452-.Ltmp451               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	264                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2d3:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp451                        ; DW_AT_low_pc
	.long	.Ltmp452-.Ltmp451               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2e8:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp453                        ; DW_AT_low_pc
	.long	.Ltmp454-.Ltmp453               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	281                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2fd:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp453                        ; DW_AT_low_pc
	.long	.Ltmp454-.Ltmp453               ; DW_AT_high_pc
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
	.quad	.Ltmp473                        ; DW_AT_low_pc
	.long	.Ltmp474-.Ltmp473               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	299                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x334:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp474                        ; DW_AT_low_pc
	.long	.Ltmp475-.Ltmp474               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	300                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x349:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp474                        ; DW_AT_low_pc
	.long	.Ltmp475-.Ltmp474               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x35e:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp476                        ; DW_AT_low_pc
	.long	.Ltmp477-.Ltmp476               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	317                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x373:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp476                        ; DW_AT_low_pc
	.long	.Ltmp477-.Ltmp476               ; DW_AT_high_pc
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
	.quad	.Ltmp496                        ; DW_AT_low_pc
	.long	.Ltmp497-.Ltmp496               ; DW_AT_high_pc
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
.Ldebug_ranges2:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
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
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp832-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp846-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp860-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp874-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp888-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp902-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp916-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp930-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp944-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp832-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp846-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp860-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp874-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp888-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp902-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp916-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp930-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp944-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp851-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp865-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp879-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp893-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp921-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp935-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp851-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp865-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp879-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp893-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp921-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp935-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp839-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp895-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	.Ltmp923-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp937-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp839-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp895-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	.Ltmp923-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp937-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v006_maca_async_copy_sc-16g/codegen/v006_maca_async_copy_sc-16g_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=171
.Linfo_string3:
	.asciz	"memcpy_async<16, false>"       ; string offset=192
.Linfo_string4:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=216
.Linfo_string5:
	.asciz	"__barrier"                     ; string offset=311
.Linfo_string6:
	.asciz	"__syncthreads"                 ; string offset=321
.Linfo_string7:
	.asciz	"min"                           ; string offset=335
.Linfo_string8:
	.asciz	"exp2f"                         ; string offset=339
.Linfo_string9:
	.asciz	"__float2half_rn"               ; string offset=345
.Linfo_string10:
	.asciz	"__floats2half2_rn"             ; string offset=361
.Linfo_string11:
	.asciz	"__float22half2_rn"             ; string offset=379
.Linfo_string12:
	.asciz	"__half2float"                  ; string offset=397
.Linfo_string13:
	.asciz	"operator float"                ; string offset=410
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=425
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=439
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
    .mtreg_count:    182
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
    .mtreg_count:    202
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
