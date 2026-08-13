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
	.file	2 "/tmp/v042_codegen_case1" "v042_final_case1_generated_device.cpp"
	.loc	2 87 0                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:87:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s8, s5
.Ltmp4:
	.loc	2 93 19 prologue_end            ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:93:19
	smov_b32 s9, 0
	sshl_b64 s2, 2, s8
	ldu_b64 s6, s0, 0x30
	ldu_b128 s12, s0, 0x20
	and_b32 r0, 0x3ff, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s2, s2, 0x0
	bfe_u32 r1, r0, 3, 3
	and_b32 r2, r0, 7
	cmp_gt_u32 s18, r0, 63
	xor_b32 r3, r1, r2
	shl_b32 r2, 4, r2
	shl_b32 r50, 4, r3
	arrive slcnt(0)
	sashr_i32 s3, 31, s2
	.loc	2 94 20                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:94:20
	sshl_b64 s10, 2, s2
	sadd_co_u32 s0, s22, s10
	saddc_co_u32 s1, s23, s11
	.loc	2 95 22                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:95:22
	sadd_co_u32 s22, s20, s10
	saddc_co_u32 s23, s21, s11
	cmp_lt_u32 s10, r0, 64
	cmp_gt_u32 s20, 0x80, r0
	sshl_b32 s2, 24, s2
	sshl_b32 s3, 18, s4
.Ltmp5:
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r52, 12, r1
	sadd_co_i32 s2, s2, s3
.Ltmp6:
	.loc	2 106 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:106:3
	mov_b32 r51, 0
.Ltmp7:
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_or_b32 r21, 7, r1, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r52, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	smov_b64 s24, s10
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s26, s18
	snop 0
	bra_xmskz LBB2_2
; %bb.1:                                ; %if.else.i584
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, s10, xmsk
	sand_b64 s30, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s30
LBB2_2:                                 ; %Flow519
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	ldu_b32 s0, s0, 0x0
	ldu_b32 s1, s22, 0x0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r21
	addc_co_u32 r7, r7, 0
.Ltmp8:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "maca_async.h"
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp9:
LBB2_4:                                 ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp10:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 8
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r23, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	smov_b64 s24, s10
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.else.i
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, s10, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_6:                                 ; %Flow518
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r23
	addc_co_u32 r7, r7, 0
.Ltmp11:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp12:
LBB2_8:                                 ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp13:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 16
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r25, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_10
; %bb.9:                                ; %if.else.i584.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_10:                                ; %Flow517
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.1.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r25
	addc_co_u32 r7, r7, 0
.Ltmp14:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp15:
LBB2_12:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp16:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 24
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r27, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.else.i.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_14:                                ; %Flow516
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.1.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r27
	addc_co_u32 r7, r7, 0
.Ltmp17:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp18:
LBB2_16:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp19:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 32
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r29, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.else.i584.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_18:                                ; %Flow515
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_20
; %bb.19:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.2.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r29
	addc_co_u32 r7, r7, 0
.Ltmp20:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp21:
LBB2_20:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp22:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 40
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r31, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_22
; %bb.21:                               ; %if.else.i.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_22:                                ; %Flow514
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.2.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r31
	addc_co_u32 r7, r7, 0
.Ltmp23:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp24:
LBB2_24:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp25:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 48
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r33, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_26
; %bb.25:                               ; %if.else.i584.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_26:                                ; %Flow513
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_28
; %bb.27:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.3.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r33
	addc_co_u32 r7, r7, 0
.Ltmp26:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp27:
LBB2_28:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp28:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 56
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r35, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.else.i.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_30:                                ; %Flow512
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_32
; %bb.31:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.3.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r35
	addc_co_u32 r7, r7, 0
.Ltmp29:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp30:
LBB2_32:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp31:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, r1, 64
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r37, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_34
; %bb.33:                               ; %if.else.i584.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_34:                                ; %Flow511
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.4.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r37
	addc_co_u32 r7, r7, 0
.Ltmp32:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp33:
LBB2_36:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp34:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, 0x48, r1
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r39, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_38
; %bb.37:                               ; %if.else.i.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_38:                                ; %Flow510
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_40
; %bb.39:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.4.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r39
	addc_co_u32 r7, r7, 0
.Ltmp35:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp36:
LBB2_40:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp37:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, 0x50, r1
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r41, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_42
; %bb.41:                               ; %if.else.i584.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_42:                                ; %Flow509
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_44
; %bb.43:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.5.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r41
	addc_co_u32 r7, r7, 0
.Ltmp38:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp39:
LBB2_44:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp40:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, 0x58, r1
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r43, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.else.i.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_46:                                ; %Flow508
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_48
; %bb.47:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.5.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r43
	addc_co_u32 r7, r7, 0
.Ltmp41:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp42:
LBB2_48:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp43:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, 0x60, r1
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r45, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_50
; %bb.49:                               ; %if.else.i584.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_50:                                ; %Flow507
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_52
; %bb.51:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.6.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r45
	addc_co_u32 r7, r7, 0
.Ltmp44:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp45:
LBB2_52:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp46:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, 0x68, r1
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r47, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_54
; %bb.53:                               ; %if.else.i.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_54:                                ; %Flow506
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_56
; %bb.55:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.6.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r47
	addc_co_u32 r7, r7, 0
.Ltmp47:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp48:
LBB2_56:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp49:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, 0x70, r1
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r4, 7, r3
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r3, 12, r3
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	or_b32 r49, r4, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_58
; %bb.57:                               ; %if.else.i584.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_58:                                ; %Flow505
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_60
; %bb.59:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.7.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r6, s2, 2, r6
	add_co_u32 r6, r6, r3
	add_u32 r4, r4, r49
	addc_co_u32 r7, r7, 0
.Ltmp50:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp51:
LBB2_60:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit596.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp52:
	.loc	2 28 36 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:28:36
	or_b32 r3, 0x78, r1
	.loc	2 32 45                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:32:45
	shl_b32 r1, 7, r3
	or_b32 r1, r1, r2
	.loc	2 33 46                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:33:46
	shl_b32 r2, 12, r3
	or_b32 r2, r2, r50
	shl_b64 r4, 0, s16
	mov_b32 r3, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_62
; %bb.61:                               ; %if.else.i.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r4, 0, s14
	mov_b32 r3, s3
	sor_b64 s24, s24, s26
LBB2_62:                                ; %Flow504
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_64
; %bb.63:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.7.sink.split
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	mad_i32 r4, s2, 2, r4
	add_co_u32 r4, r4, r2
	add_u32 r3, r3, r1
	addc_co_u32 r5, r5, 0
.Ltmp53:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r3
	smov_b32 s3, md
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s3
.Ltmp54:
LBB2_64:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
	.loc	2 109 3 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:109:3
	add_co_u32 r50, r52, r50
	shl_b32 r2, 10, r0
	addc_co_u32 r51, r51, 0
	and_b32 r54, 0xf0000, r2
	mov_b32 r57, s8
	mad_i32 r190, s2, 2, r50
	shl_add_u32 r54, 18, r57, r54
	shl_b32 r55, 11, r0
	smov_b32 s2, 0x7800
	and_or_b32 r60, r55, s2, r54
	add_co_u32 r50, s16, r190
	mov_b32 r51, s17
	addc_co_u32 r51, r51, r191
	mov_b32 r59, 0
	or_b32 r58, 0x8000, r60
	shr_b32 r2, 1, r0
	shr_b32 r4, 5, r0
	add_co_u32 r52, s14, r190
	mov_b32 r53, s15
	and_b32 r57, r0, 48
	shl_b64 r54, 1, r58
	and_b32 r56, r2, 24
	add_shl_u32 r4, r4, r2, 4
	shr_b32 r5, 4, r0
	addc_co_u32 r53, r53, r191
	or_b32 r54, r57, r54
	mov_b32 r61, 0
	shl_b32 r3, 6, r0
	shl_b32 r6, 3, r0
	or_b32 r180, r56, r58
	and_b32 r4, r4, 16
	add_shl_u32 r5, r5, r0, 3
	add_co_u32 r54, s12, r54
	mov_b32 r58, s13
	or_b32 r192, r56, r60
	shl_b64 r60, 1, r60
	and_b32 r11, 0x3c0, r3
	and_b32 r12, r6, 32
	and_or_b32 r19, r5, 8, r4
	addc_co_u32 r55, r58, r55
	or_b32 r56, r57, r60
	add_co_u32 r56, s12, r56
	or_b32 r13, r19, r11
	or_b32 r14, 0x400, r11
	or_b32 r15, r19, r12
	or_b32 r16, 0x800, r11
	or_b32 r17, 0xc00, r11
	or_b32 r18, 0x1000, r11
	or_b32 r20, 0x1400, r11
	or_b32 r22, 0x1800, r11
	or_b32 r24, 0x1c00, r11
	xor_b32 r26, r12, 32
	.loc	2 0 0 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:0
	shl_b64 r124, 0, 0
	sadd_co_i32 s3, 0x4000, 0
	or_b32 r4, r13, r12
	or_b32 r12, r13, r26
	or_b32 r5, r15, r14
	or_b32 r6, r15, r16
	or_b32 r7, r15, r17
	or_b32 r8, r15, r18
	or_b32 r9, r15, r20
	or_b32 r10, r15, r22
	or_b32 r11, r15, r24
	or3_b32 r15, r19, r17, r26
	or3_b32 r17, r19, r20, r26
	or3_b32 r13, r19, r14, r26
	or3_b32 r14, r19, r16, r26
	or3_b32 r16, r19, r18, r26
	or3_b32 r18, r19, r22, r26
	or3_b32 r19, r19, r24, r26
	.loc	2 109 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:109:3
	addc_co_u32 r57, r58, r61
	.loc	2 0 0                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:0
	shl_b64 r126, 0, 0
	shl_b64 r132, 0, r124
	shl_b64 r140, 0, r124
	shl_b64 r148, 0, r124
	shl_b64 r156, 0, r124
	shl_b64 r164, 0, r124
	shl_b64 r172, 0, r124
	shl_b64 r182, 0, r124
	shl_b64 r60, 0, r124
	shl_b64 r68, 0, r124
	shl_b64 r76, 0, r124
	shl_b64 r84, 0, r124
	shl_b64 r92, 0, r124
	shl_b64 r100, 0, r124
	shl_b64 r108, 0, r124
	shl_b64 r116, 0, r124
	shl_b64 r128, 0, r124
	shl_b64 r136, 0, r124
	shl_b64 r144, 0, r124
	shl_b64 r152, 0, r124
	shl_b64 r160, 0, r124
	shl_b64 r168, 0, r124
	shl_b64 r176, 0, r124
	shl_b64 r186, 0, r124
	shl_b64 r120, 0, r124
	shl_b64 r112, 0, r124
	shl_b64 r104, 0, r124
	shl_b64 r96, 0, r124
	shl_b64 r88, 0, r124
	shl_b64 r80, 0, r124
	shl_b64 r72, 0, r124
	shl_b64 r64, 0, r124
	add_u32 r20, s3, r21
	add_u32 r22, s3, r23
	add_u32 r24, s3, r25
	add_u32 r26, s3, r27
	add_u32 r28, s3, r29
	add_u32 r30, s3, r31
	add_u32 r32, s3, r33
	add_u32 r34, s3, r35
	add_u32 r36, s3, r37
	add_u32 r38, s3, r39
	add_u32 r40, s3, r41
	add_u32 r42, s3, r43
	add_u32 r44, s3, r45
	add_u32 r46, s3, r47
	add_u32 r48, s3, r49
	shr_b32 r3, 2, r0
	.loc	2 109 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:109:3
	mov_b32 r181, 0
	shl_add_u32 r4, 1, r4, 0
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
	add_u32 r21, 0, r21
	add_u32 r23, 0, r23
	add_u32 r25, 0, r25
	add_u32 r27, 0, r27
	add_u32 r29, 0, r29
	add_u32 r31, 0, r31
	add_u32 r33, 0, r33
	add_u32 r35, 0, r35
	add_u32 r37, 0, r37
	add_u32 r39, 0, r39
	add_u32 r41, 0, r41
	add_u32 r43, 0, r43
	add_u32 r45, 0, r45
	add_u32 r47, 0, r47
	add_u32 r49, 0, r49
	mov_b32 r193, 0
	smov_b64 s2, 0
	shl_b64 r134, 0, r126
	shl_b64 r142, 0, r126
	shl_b64 r150, 0, r126
	shl_b64 r158, 0, r126
	shl_b64 r166, 0, r126
	shl_b64 r174, 0, r126
	shl_b64 r184, 0, r126
	shl_b64 r62, 0, r126
	shl_b64 r70, 0, r126
	shl_b64 r78, 0, r126
	shl_b64 r86, 0, r126
	shl_b64 r94, 0, r126
	shl_b64 r102, 0, r126
	shl_b64 r110, 0, r126
	shl_b64 r118, 0, r126
	shl_b64 r130, 0, r126
	shl_b64 r138, 0, r126
	shl_b64 r146, 0, r126
	shl_b64 r154, 0, r126
	shl_b64 r162, 0, r126
	shl_b64 r170, 0, r126
	shl_b64 r178, 0, r126
	shl_b64 r188, 0, r126
	shl_b64 r122, 0, r126
	shl_b64 r114, 0, r126
	shl_b64 r106, 0, r126
	shl_b64 r98, 0, r126
	shl_b64 r90, 0, r126
	shl_b64 r82, 0, r126
	shl_b64 r74, 0, r126
	shl_b64 r66, 0, r126
	bra LBB2_67
	.p2align	5
LBB2_65:                                ; %Flow472
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 3                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s22
LBB2_66:                                ; %for.inc295
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 109 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:109:45
	sadd_co_u32 s2, 0x80, s2
	add_co_u32 r180, r180, 64
	saddc_co_u32 s3, s3, 0
	addc_co_u32 r181, r181, 0
	add_co_u32 r192, r192, 64
	scmp_eq_u64 0x1000, s2
	addc_co_u32 r193, r193, 0
	bra_smsks LBB2_162
LBB2_67:                                ; %for.cond52.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 112 43 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:43
	add_co_u32 r194, r56, s2
	mov_b32 r58, s3
	addc_co_u32 r195, r57, r58
	add_co_u32 r196, r54, s2
	addc_co_u32 r197, r55, r58
	.loc	2 112 243 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:243
	shl_b64 r58, 1, r192
	.loc	2 112 61                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:61
	or_b32 r58, r58, 64
	.loc	2 112 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:43
	ldg_b128 r206, r196, 0x0
	ldg_b128 r202, r194, 0x0
	.loc	2 112 61                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:61
	add_co_u32 r194, s12, r58
	mov_b32 r58, s13
	.loc	2 112 243                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:243
	shl_b64 r196, 1, r180
	.loc	2 112 61                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:61
	addc_co_u32 r195, r58, r59
	or_b32 r59, r196, 64
	add_co_u32 r198, s12, r59
	addc_co_u32 r199, r58, r197
	.loc	2 112 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:112:43
	ldg_b128 r194, r194, 0x0
	snop 0
	ldg_b128 r198, r198, 0x0
.Ltmp55:
	.file	4 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive 0
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp56:
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r210, r4, 0x0
	lds_b128 r214, r5, 0x0
	lds_b128 r218, r6, 0x0
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	add_i32 r58, 0x4000, r4
	.loc	2 145 23                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:145:23
	scmp_ne_u64 0xf80, s2
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r210, r202, r182
	mma_16x16x16f16 r120, r210, r206, r120
	mma_16x16x16f16 r182, r212, r204, r182
	mma_16x16x16f16 r120, r212, r208, r120
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r210, r7, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r214, r202, r172
	mma_16x16x16f16 r112, r214, r206, r112
	mma_16x16x16f16 r172, r216, r204, r172
	mma_16x16x16f16 r112, r216, r208, r112
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r214, r8, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r218, r202, r164
	mma_16x16x16f16 r104, r218, r206, r104
	mma_16x16x16f16 r164, r220, r204, r164
	mma_16x16x16f16 r104, r220, r208, r104
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r218, r9, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r210, r202, r156
	mma_16x16x16f16 r96, r210, r206, r96
	mma_16x16x16f16 r156, r212, r204, r156
	mma_16x16x16f16 r96, r212, r208, r96
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r210, r10, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r214, r202, r148
	mma_16x16x16f16 r88, r214, r206, r88
	mma_16x16x16f16 r148, r216, r204, r148
	mma_16x16x16f16 r88, r216, r208, r88
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r214, r11, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r218, r202, r140
	mma_16x16x16f16 r80, r218, r206, r80
	mma_16x16x16f16 r140, r220, r204, r140
	mma_16x16x16f16 r80, r220, r208, r80
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r5
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r210, r202, r132
	mma_16x16x16f16 r72, r210, r206, r72
	mma_16x16x16f16 r132, r212, r204, r132
	mma_16x16x16f16 r72, r212, r208, r72
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r6
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r214, r202, r124
	mma_16x16x16f16 r64, r214, r206, r64
	mma_16x16x16f16 r124, r216, r204, r124
	mma_16x16x16f16 r64, r216, r208, r64
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r214, r58, 0x0
	add_i32 r58, 0x4000, r7
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r186, r218, r202, r186
	mma_16x16x16f16 r116, r218, r206, r116
	mma_16x16x16f16 r186, r220, r204, r186
	mma_16x16x16f16 r116, r220, r208, r116
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r8
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r210, r202, r176
	mma_16x16x16f16 r108, r210, r206, r108
	mma_16x16x16f16 r176, r212, r204, r176
	mma_16x16x16f16 r108, r212, r208, r108
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r9
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r214, r202, r168
	mma_16x16x16f16 r100, r214, r206, r100
	mma_16x16x16f16 r168, r216, r204, r168
	mma_16x16x16f16 r100, r216, r208, r100
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r214, r58, 0x0
	add_i32 r58, 0x4000, r10
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r218, r202, r160
	mma_16x16x16f16 r92, r218, r206, r92
	mma_16x16x16f16 r160, r220, r204, r160
	mma_16x16x16f16 r92, r220, r208, r92
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r11
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r210, r202, r152
	mma_16x16x16f16 r84, r210, r206, r84
	mma_16x16x16f16 r152, r212, r204, r152
	mma_16x16x16f16 r84, r212, r208, r84
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r12
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r214, r202, r144
	mma_16x16x16f16 r76, r214, r206, r76
	mma_16x16x16f16 r144, r216, r204, r144
	mma_16x16x16f16 r76, r216, r208, r76
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r214, r12, 0x0
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r218, r202, r136
	mma_16x16x16f16 r68, r218, r206, r68
	mma_16x16x16f16 r136, r220, r204, r136
	mma_16x16x16f16 r68, r220, r208, r68
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r218, r13, 0x0
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r210, r202, r128
	mma_16x16x16f16 r60, r210, r206, r60
	mma_16x16x16f16 r128, r212, r204, r128
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r202, r14, 0x0
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	mma_16x16x16f16 r60, r212, r208, r60
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r206, r15, 0x0
	lds_b128 r210, r16, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(4)
	mma_16x16x16f16 r182, r214, r194, r182
	mma_16x16x16f16 r120, r214, r198, r120
	mma_16x16x16f16 r182, r216, r196, r182
	mma_16x16x16f16 r120, r216, r200, r120
	arrive bsmcnt(3)
	mma_16x16x16f16 r172, r218, r194, r172
	mma_16x16x16f16 r112, r218, r198, r112
	mma_16x16x16f16 r172, r220, r196, r172
	mma_16x16x16f16 r112, r220, r200, r112
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r202, r194, r164
	mma_16x16x16f16 r104, r202, r198, r104
	mma_16x16x16f16 r164, r204, r196, r164
	mma_16x16x16f16 r104, r204, r200, r104
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r202, r17, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r194, r156
	mma_16x16x16f16 r96, r206, r198, r96
	mma_16x16x16f16 r156, r208, r196, r156
	mma_16x16x16f16 r96, r208, r200, r96
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r206, r18, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r210, r194, r148
	mma_16x16x16f16 r88, r210, r198, r88
	mma_16x16x16f16 r148, r212, r196, r148
	mma_16x16x16f16 r88, r212, r200, r88
	.loc	2 117 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:117:43
	lds_b128 r210, r19, 0x0
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r194, r140
	mma_16x16x16f16 r80, r202, r198, r80
	mma_16x16x16f16 r140, r204, r196, r140
	mma_16x16x16f16 r80, r204, r200, r80
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r202, r58, 0x0
	add_i32 r58, 0x4000, r13
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r206, r194, r132
	mma_16x16x16f16 r72, r206, r198, r72
	mma_16x16x16f16 r132, r208, r196, r132
	mma_16x16x16f16 r72, r208, r200, r72
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r206, r58, 0x0
	add_i32 r58, 0x4000, r14
	.loc	2 123 57                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:123:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r210, r194, r124
	mma_16x16x16f16 r64, r210, r198, r64
	mma_16x16x16f16 r124, r212, r196, r124
	mma_16x16x16f16 r64, r212, r200, r64
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r15
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r186, r202, r194, r186
	mma_16x16x16f16 r116, r202, r198, r116
	mma_16x16x16f16 r186, r204, r196, r186
	mma_16x16x16f16 r116, r204, r200, r116
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r202, r58, 0x0
	add_i32 r58, 0x4000, r16
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r206, r194, r176
	mma_16x16x16f16 r108, r206, r198, r108
	mma_16x16x16f16 r176, r208, r196, r176
	mma_16x16x16f16 r108, r208, r200, r108
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r206, r58, 0x0
	add_i32 r58, 0x4000, r17
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r210, r194, r168
	mma_16x16x16f16 r100, r210, r198, r100
	mma_16x16x16f16 r168, r212, r196, r168
	mma_16x16x16f16 r100, r212, r200, r100
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r18
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r202, r194, r160
	mma_16x16x16f16 r92, r202, r198, r92
	mma_16x16x16f16 r160, r204, r196, r160
	mma_16x16x16f16 r92, r204, r200, r92
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r202, r58, 0x0
	add_i32 r58, 0x4000, r19
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r206, r194, r152
	mma_16x16x16f16 r84, r206, r198, r84
	mma_16x16x16f16 r152, r208, r196, r152
	mma_16x16x16f16 r84, r208, r200, r84
	.loc	2 131 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:131:45
	lds_b128 r206, r58, 0x0
	.loc	2 137 55                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:137:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r210, r194, r144
	mma_16x16x16f16 r76, r210, r198, r76
	mma_16x16x16f16 r144, r212, r196, r144
	mma_16x16x16f16 r76, r212, r200, r76
	arrive bsmcnt(1)
	mma_16x16x16f16 r136, r202, r194, r136
	mma_16x16x16f16 r68, r202, r198, r68
	mma_16x16x16f16 r136, r204, r196, r136
	mma_16x16x16f16 r68, r204, r200, r68
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r206, r194, r128
	mma_16x16x16f16 r60, r206, r198, r60
	mma_16x16x16f16 r128, r208, r196, r128
	mma_16x16x16f16 r60, r208, r200, r60
	.loc	2 145 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:145:9
	bra_smskz LBB2_66
; %bb.68:                               ; %if.then
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp57:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp58:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_103
; %bb.69:                               ; %Flow502
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_106
.Ltmp59:
LBB2_70:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp60:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_107
LBB2_71:                                ; %Flow500
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_110
.Ltmp61:
LBB2_72:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp62:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_111
LBB2_73:                                ; %Flow498
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_114
.Ltmp63:
LBB2_74:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp64:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_115
LBB2_75:                                ; %Flow496
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_118
.Ltmp65:
LBB2_76:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp66:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_119
LBB2_77:                                ; %Flow494
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_122
.Ltmp67:
LBB2_78:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp68:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_123
LBB2_79:                                ; %Flow492
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_126
.Ltmp69:
LBB2_80:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp70:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_127
LBB2_81:                                ; %Flow490
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_130
.Ltmp71:
LBB2_82:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp72:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_131
LBB2_83:                                ; %Flow488
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_134
.Ltmp73:
LBB2_84:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp74:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_135
LBB2_85:                                ; %Flow486
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_138
.Ltmp75:
LBB2_86:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp76:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_139
LBB2_87:                                ; %Flow484
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_142
.Ltmp77:
LBB2_88:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp78:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_143
LBB2_89:                                ; %Flow482
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_146
.Ltmp79:
LBB2_90:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp80:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_147
LBB2_91:                                ; %Flow480
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_150
.Ltmp81:
LBB2_92:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp82:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_151
LBB2_93:                                ; %Flow478
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_154
.Ltmp83:
LBB2_94:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp84:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_155
LBB2_95:                                ; %Flow476
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_158
.Ltmp85:
LBB2_96:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp86:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_159
LBB2_97:                                ; %Flow474
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_99
LBB2_98:                                ; %if.then.i643.7
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp87:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x70080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r49
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp88:
LBB2_99:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit648.7
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
	mov_b32 r58, 0
	shl_b64 r194, 0, s16
	smov_b64 s24, s10
.Ltmp89:
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_101
; %bb.100:                              ; %if.else.i610.7
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s5, 0x4000, 0
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	sandn_b64 s24, s10, xmsk
	sand_b64 s26, s20, xmsk
	mov_b32 r58, s5
	shl_b64 r194, 0, s14
	sor_b64 s24, s24, s26
LBB2_101:                               ; %Flow
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_65
; %bb.102:                              ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit622.7.sink.split
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp90:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r59, r194, r190
	addc_co_u32 r194, r195, r191
	add_co_u32 r59, r59, s2
	mov_b32 r195, s3
	addc_co_u32 r194, r194, r195
	add_co_u32 r196, 0x78080, r59
	add_u32 r58, r58, r1
	addc_co_u32 r197, r194, 0
	rfl_b32 s9, r58
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r196, 0x0 bsm
	smov_b32 md, s5
	bra LBB2_65
.Ltmp91:
	.p2align	5
LBB2_103:                               ; %if.else.i636
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_105
; %bb.104:                              ; %if.then13.i638
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp92:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x80, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r20
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp93:
LBB2_105:                               ; %Flow501
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_70
LBB2_106:                               ; %if.then.i643
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp94:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x80, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r21
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp95:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_71
LBB2_107:                               ; %if.else.i610
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_109
; %bb.108:                              ; %if.then13.i612
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp96:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x8080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r22
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp97:
LBB2_109:                               ; %Flow499
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_72
LBB2_110:                               ; %if.then.i617
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp98:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x8080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r23
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp99:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_73
LBB2_111:                               ; %if.else.i636.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_113
; %bb.112:                              ; %if.then13.i638.1
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp100:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x10080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r24
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp101:
LBB2_113:                               ; %Flow497
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_74
LBB2_114:                               ; %if.then.i643.1
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp102:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x10080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r25
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp103:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_75
LBB2_115:                               ; %if.else.i610.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_117
; %bb.116:                              ; %if.then13.i612.1
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp104:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x18080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r26
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp105:
LBB2_117:                               ; %Flow495
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_76
LBB2_118:                               ; %if.then.i617.1
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp106:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x18080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r27
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp107:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_77
LBB2_119:                               ; %if.else.i636.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_121
; %bb.120:                              ; %if.then13.i638.2
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp108:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x20080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r28
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp109:
LBB2_121:                               ; %Flow493
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_78
LBB2_122:                               ; %if.then.i643.2
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp110:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x20080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r29
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp111:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_79
LBB2_123:                               ; %if.else.i610.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_125
; %bb.124:                              ; %if.then13.i612.2
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp112:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x28080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r30
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp113:
LBB2_125:                               ; %Flow491
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_80
LBB2_126:                               ; %if.then.i617.2
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp114:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x28080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r31
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp115:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_81
LBB2_127:                               ; %if.else.i636.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_129
; %bb.128:                              ; %if.then13.i638.3
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp116:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x30080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r32
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp117:
LBB2_129:                               ; %Flow489
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_82
LBB2_130:                               ; %if.then.i643.3
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp118:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x30080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r33
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp119:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_83
LBB2_131:                               ; %if.else.i610.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_133
; %bb.132:                              ; %if.then13.i612.3
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp120:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x38080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r34
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp121:
LBB2_133:                               ; %Flow487
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_84
LBB2_134:                               ; %if.then.i617.3
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp122:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x38080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r35
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp123:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_85
LBB2_135:                               ; %if.else.i636.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_137
; %bb.136:                              ; %if.then13.i638.4
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp124:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x40080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r36
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp125:
LBB2_137:                               ; %Flow485
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_86
LBB2_138:                               ; %if.then.i643.4
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp126:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x40080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r37
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp127:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_87
LBB2_139:                               ; %if.else.i610.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_141
; %bb.140:                              ; %if.then13.i612.4
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp128:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x48080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r38
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp129:
LBB2_141:                               ; %Flow483
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_88
LBB2_142:                               ; %if.then.i617.4
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp130:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x48080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r39
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp131:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_89
LBB2_143:                               ; %if.else.i636.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_145
; %bb.144:                              ; %if.then13.i638.5
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp132:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x50080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r40
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp133:
LBB2_145:                               ; %Flow481
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_90
LBB2_146:                               ; %if.then.i643.5
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp134:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x50080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r41
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp135:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_91
LBB2_147:                               ; %if.else.i610.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_149
; %bb.148:                              ; %if.then13.i612.5
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp136:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x58080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r42
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp137:
LBB2_149:                               ; %Flow479
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_92
LBB2_150:                               ; %if.then.i617.5
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp138:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x58080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r43
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp139:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_93
LBB2_151:                               ; %if.else.i636.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_153
; %bb.152:                              ; %if.then13.i638.6
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp140:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x60080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r44
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp141:
LBB2_153:                               ; %Flow477
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_94
LBB2_154:                               ; %if.then.i643.6
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp142:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x60080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r45
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp143:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_95
LBB2_155:                               ; %if.else.i610.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_157
; %bb.156:                              ; %if.then13.i612.6
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp144:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x68080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r46
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp145:
LBB2_157:                               ; %Flow475
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_96
LBB2_158:                               ; %if.then.i617.6
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp146:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r50, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r51, r59
	add_co_u32 r58, 0x68080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r47
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s22
.Ltmp147:
	.loc	2 34 7                          ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_97
LBB2_159:                               ; %if.else.i636.7
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 38 14                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:38:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_161
; %bb.160:                              ; %if.then13.i638.7
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp148:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s2
	mov_b32 r59, s3
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x70080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s9, r48
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s5
.Ltmp149:
LBB2_161:                               ; %Flow473
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	.loc	2 34 7 is_stmt 1                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:34:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_98
	bra LBB2_99
.Ltmp150:
LBB2_162:                               ; %for.cond298.preheader
	.loc	2 0 7 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:7
	sshl_b32 s2, 7, s8
	ssub_co_i32 s0, s0, s2
	sadd_co_i32 s0, s0, s1
	sshl_b32 s1, 20, s8
	sshl_b32 s2, 7, s4
	sadd_co_i32 s1, s2, s1
	and_b32 r1, r0, 15
	smov_b32 s2, 0x1e0
	shl_b32 r4, 12, r0
	.loc	2 194 65 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:65
	and_or_b32 r1, r2, s2, r1
	shl_b32 r0, 13, r0
	and_b32 r4, 0x3c0000, r4
	.loc	2 194 94 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:94
	cmp_lt_i32 s2, r1, s0
	and_b32 r0, 0x1e000, r0
	add_u32 r2, s1, r4
	add_u32 r0, r2, r0
	and_or_b32 r0, r3, 12, r0
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_180
; %bb.163:                              ; %if.end474
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_181
LBB2_164:                               ; %if.end474.1
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_182
LBB2_165:                               ; %if.end474.2
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_183
LBB2_166:                               ; %if.end474.3
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_184
LBB2_167:                               ; %if.end474.4
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_185
LBB2_168:                               ; %if.end474.5
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_186
LBB2_169:                               ; %if.end474.6
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_171
LBB2_170:                               ; %if.then414.7
	.loc	2 176 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r127
.Ltmp151:
	.file	5 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s2
	fmka_f32 r6, r127, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s2
	exp_f32 r6, r6
.Ltmp152:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r126
.Ltmp153:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp154:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r127, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r131
.Ltmp155:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s2
	fmka_f32 r7, r126, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s2
	exp_f32 r7, r7
.Ltmp156:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r125
.Ltmp157:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp158:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r126, r6
.Ltmp159:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s2
	fmka_f32 r8, r125, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s2
	exp_f32 r8, r8
.Ltmp160:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r124
.Ltmp161:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp162:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r125, r7
.Ltmp163:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s2
	fmka_f32 r5, r124, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s2
	exp_f32 r5, r5
.Ltmp164:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r124, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r128
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r129
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r130
.Ltmp165:
	.file	6 "/opt/maca/include/common" "maca_fp16.hpp"
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp166:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp167:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp168:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp169:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	mov_b32 r4, 0xe0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
LBB2_171:                               ; %if.end474.7
	.loc	2 0 260                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:260
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 65 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:65
	or_b32 r1, r1, 16
	.loc	2 194 94 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:94
	cmp_lt_i32 s0, r1, s0
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	snop 3
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_187
; %bb.172:                              ; %if.end474.8
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_188
LBB2_173:                               ; %if.end474.9
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_189
LBB2_174:                               ; %if.end474.10
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_190
LBB2_175:                               ; %if.end474.11
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_191
LBB2_176:                               ; %if.end474.12
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_192
LBB2_177:                               ; %if.end474.13
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_193
LBB2_178:                               ; %if.end474.14
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_194
LBB2_179:                               ; %if.end474.15
	.loc	2 208 1 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:208:1
	snop 1
	endk
LBB2_180:                               ; %if.then414
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r185
.Ltmp170:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r185, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp171:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r184
.Ltmp172:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp173:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r185, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r189
.Ltmp174:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r184, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp175:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r183
.Ltmp176:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp177:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r184, r6
.Ltmp178:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r183, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp179:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r182
.Ltmp180:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp181:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r183, r7
.Ltmp182:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r182, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp183:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r182, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r186
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r187
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r188
.Ltmp184:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp185:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp186:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp187:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp188:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_b32 r4, 1, r0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_164
LBB2_181:                               ; %if.then414.1
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r175
.Ltmp189:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r175, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp190:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r174
.Ltmp191:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp192:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r175, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r179
.Ltmp193:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r174, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp194:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r173
.Ltmp195:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp196:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r174, r6
.Ltmp197:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r173, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp198:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r172
.Ltmp199:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp200:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r173, r7
.Ltmp201:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r172, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp202:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r172, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r176
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r177
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r178
.Ltmp203:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp204:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp205:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp206:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp207:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_or_b32 r4, 1, r0, 32
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_165
LBB2_182:                               ; %if.then414.2
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r167
.Ltmp208:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r167, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp209:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r166
.Ltmp210:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp211:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r167, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r171
.Ltmp212:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r166, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp213:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r165
.Ltmp214:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp215:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r166, r6
.Ltmp216:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r165, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp217:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r164
.Ltmp218:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp219:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r165, r7
.Ltmp220:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r164, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp221:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r164, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r168
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r169
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r170
.Ltmp222:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp223:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp224:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp225:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp226:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_or_b32 r4, 1, r0, 64
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_166
LBB2_183:                               ; %if.then414.3
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r159
.Ltmp227:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r159, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp228:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r158
.Ltmp229:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp230:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r159, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r163
.Ltmp231:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r158, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp232:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r157
.Ltmp233:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp234:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r158, r6
.Ltmp235:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r157, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp236:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r156
.Ltmp237:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp238:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r157, r7
.Ltmp239:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r156, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp240:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r156, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r160
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r161
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r162
.Ltmp241:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp242:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp243:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp244:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp245:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	mov_b32 r4, 0x60
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_167
LBB2_184:                               ; %if.then414.4
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r151
.Ltmp246:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r151, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp247:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r150
.Ltmp248:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp249:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r151, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r155
.Ltmp250:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r150, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp251:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r149
.Ltmp252:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp253:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r150, r6
.Ltmp254:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r149, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp255:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r148
.Ltmp256:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp257:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r149, r7
.Ltmp258:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r148, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp259:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r148, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r152
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r153
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r154
.Ltmp260:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp261:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp262:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp263:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp264:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	mov_b32 r4, 0x80
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_168
LBB2_185:                               ; %if.then414.5
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r143
.Ltmp265:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r143, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp266:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r142
.Ltmp267:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp268:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r143, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r147
.Ltmp269:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r142, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp270:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r141
.Ltmp271:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp272:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r142, r6
.Ltmp273:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r141, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp274:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r140
.Ltmp275:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp276:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r141, r7
.Ltmp277:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r140, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp278:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r140, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r144
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r145
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r146
.Ltmp279:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp280:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp281:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp282:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp283:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	mov_b32 r4, 0xa0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_169
LBB2_186:                               ; %if.then414.6
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r2, 0xbfb8aa3b, r135
.Ltmp284:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r5, 0x42800000
	mov_b32 r2, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r135, 0xbfb8aa3b, r6
	csel_b32 r4, r2, r3, s8
	exp_f32 r6, r6
.Ltmp285:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r6, 0xbfb8aa3b, r134
.Ltmp286:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp287:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r4, r135, r4
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r4, r4, r139
.Ltmp288:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r134, 0xbfb8aa3b, r7
	csel_b32 r6, r2, r3, s8
	exp_f32 r7, r7
.Ltmp289:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r7, 0xbfb8aa3b, r133
.Ltmp290:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp291:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r6, r134, r6
.Ltmp292:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r133, 0xbfb8aa3b, r8
	csel_b32 r7, r2, r3, s8
	exp_f32 r8, r8
.Ltmp293:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r8, 0xbfb8aa3b, r132
.Ltmp294:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp295:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r7, r133, r7
.Ltmp296:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r132, 0xbfb8aa3b, r5
	csel_b32 r2, r2, r3, s8
	exp_f32 r5, r5
.Ltmp297:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r2, r2, r5, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r2, r132, r2
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r2, r2, r136
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r3, r7, r137
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r5, r6, r138
.Ltmp298:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp299:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp300:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp301:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp302:
	.loc	2 205 260 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	snop 0
	shl_b32 r5, 16, r5
	add_u16 r3_hi, 0, 0
	.loc	2 205 27 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	mov_b32 r4, 0xc0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r7, r5, r3
	shl_b32 r3, 16, r6
	and_b32 r2, 0xffff, r2
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	shl_or_b32 r4, 1, r0, r4
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r6, r3, r2
	snop 1
	stg_b64 s6, r4, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_170
	bra LBB2_171
LBB2_187:                               ; %if.then414.8
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r123
.Ltmp303:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r123, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp304:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r122
.Ltmp305:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp306:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r123, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r119
.Ltmp307:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r122, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp308:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r121
.Ltmp309:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp310:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r122, r5
.Ltmp311:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r121, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp312:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r120
.Ltmp313:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp314:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r121, r6
.Ltmp315:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r120, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp316:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r120, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r116
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r117
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r118
.Ltmp317:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp318:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp319:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp320:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp321:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40000, r3
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r9, r4, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_173
LBB2_188:                               ; %if.then414.9
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r115
.Ltmp322:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r115, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp323:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r114
.Ltmp324:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp325:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r115, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r111
.Ltmp326:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r114, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp327:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r113
.Ltmp328:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp329:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r114, r5
.Ltmp330:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r113, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp331:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r112
.Ltmp332:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp333:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r113, r6
.Ltmp334:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r112, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp335:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r112, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r108
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r109
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r110
.Ltmp336:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp337:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp338:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp339:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp340:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40020, r3
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r9, r4, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_174
LBB2_189:                               ; %if.then414.10
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r107
.Ltmp341:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r107, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp342:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r106
.Ltmp343:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp344:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r107, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r103
.Ltmp345:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r106, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp346:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r105
.Ltmp347:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp348:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r106, r5
.Ltmp349:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r105, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp350:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r104
.Ltmp351:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp352:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r105, r6
.Ltmp353:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r104, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp354:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r104, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r100
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r101
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r102
.Ltmp355:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp356:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp357:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp358:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp359:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40040, r3
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r9, r4, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_175
LBB2_190:                               ; %if.then414.11
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r99
.Ltmp360:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r99, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp361:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r98
.Ltmp362:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp363:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r99, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r95
.Ltmp364:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r98, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp365:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r97
.Ltmp366:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp367:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r98, r5
.Ltmp368:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r97, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp369:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r96
.Ltmp370:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp371:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r97, r6
.Ltmp372:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r96, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp373:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r96, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r92
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r93
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r94
.Ltmp374:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp375:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp376:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp377:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp378:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40060, r3
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r9, r4, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_176
LBB2_191:                               ; %if.then414.12
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r91
.Ltmp379:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r91, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp380:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r90
.Ltmp381:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp382:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r91, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r87
.Ltmp383:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r90, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp384:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r89
.Ltmp385:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp386:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r90, r5
.Ltmp387:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r89, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp388:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r88
.Ltmp389:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp390:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r89, r6
.Ltmp391:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r88, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp392:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r88, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r84
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r85
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r86
.Ltmp393:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp394:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp395:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp396:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp397:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x40080, r3
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r9, r4, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_177
LBB2_192:                               ; %if.then414.13
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r83
.Ltmp398:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r83, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp399:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r82
.Ltmp400:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp401:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r83, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r79
.Ltmp402:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r82, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp403:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r81
.Ltmp404:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp405:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r82, r5
.Ltmp406:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r81, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp407:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r80
.Ltmp408:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp409:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r81, r6
.Ltmp410:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r80, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp411:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r80, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r76
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r77
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r78
.Ltmp412:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp413:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp414:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp415:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp416:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400a0, r3
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r9, r4, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_178
LBB2_193:                               ; %if.then414.14
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r75
.Ltmp417:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r75, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s4
	exp_f32 r5, r5
.Ltmp418:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r74
.Ltmp419:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp420:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r75, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r71
.Ltmp421:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r74, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s4
	exp_f32 r6, r6
.Ltmp422:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r73
.Ltmp423:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp424:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r74, r5
.Ltmp425:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r73, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s4
	exp_f32 r7, r7
.Ltmp426:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r72
.Ltmp427:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp428:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r73, r6
.Ltmp429:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r72, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s4
	exp_f32 r4, r4
.Ltmp430:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r72, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r68
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r69
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r70
.Ltmp431:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp432:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp433:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp434:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp435:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r4, 1, r0
	add_co_u32 r3, s6, r4
	mov_b32 r7, 0
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r7
	add_co_u32 r8, 0x400c0, r3
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r3, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r9, r4, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 194 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:194:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_179
LBB2_194:                               ; %if.then414.15
	.loc	2 176 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:176:27
	mul_f32 r1, 0xbfb8aa3b, r67
.Ltmp436:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r67, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp437:
	.loc	2 184 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:184:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
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
	.loc	2 175 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:175:27
	mul_f32 r5, 0xbfb8aa3b, r66
.Ltmp438:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp439:
	.loc	2 188 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:188:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 192 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:192:20
	mul_f32 r3, r67, r3
	.loc	2 202 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:202:24
	mul_f32 r3, r3, r63
.Ltmp440:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r66, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp441:
	.loc	2 183 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:183:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
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
	.loc	2 174 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:174:27
	mul_f32 r6, 0xbfb8aa3b, r65
.Ltmp442:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp443:
	.loc	2 187 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:187:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 191 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:191:20
	mul_f32 r5, r66, r5
.Ltmp444:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r65, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp445:
	.loc	2 182 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:182:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
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
	.loc	2 173 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:173:27
	mul_f32 r7, 0xbfb8aa3b, r64
.Ltmp446:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp447:
	.loc	2 186 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:186:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 190 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:190:20
	mul_f32 r6, r65, r6
.Ltmp448:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r64, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp449:
	.loc	2 181 26                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:181:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 185 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:185:24
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
	.loc	2 189 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:189:20
	mul_f32 r1, r64, r1
	.loc	2 199 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:199:24
	mul_f32 r1, r1, r60
	.loc	2 200 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:200:24
	mul_f32 r2, r6, r61
	.loc	2 201 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:201:24
	mul_f32 r4, r5, r62
.Ltmp450:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp451:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp452:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp453:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp454:
	.loc	2 205 27 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	snop 0
	shl_b32 r0, 1, r0
	mov_b32 r7, 0
	add_co_u32 r0, s6, r0
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x400e0, r0
	.loc	2 205 260 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	shl_b32 r0, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 205 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:27
	addc_co_u32 r7, r3, 0
	.loc	2 205 260                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:205:260
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 208 1 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:208:1
	snop 2
	endk
.Ltmp455:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 28
		.macahca_streg_size 3
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
; codeLenInByte = 31240
; NumMTRegsForWarps/PEU: 222
; NumSTRegsForWarps/PEU: 36
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 210 0                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:210:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp456:
	.loc	2 221 19 prologue_end           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:221:19
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
	.loc	2 222 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:222:20
	sshl_b64 s2, 2, s18
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 223 19                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:223:19
	sadd_co_u32 s6, s44, s2
	saddc_co_u32 s7, s45, s3
	.loc	2 224 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:224:22
	sadd_co_u32 s8, s46, s2
	smov_b32 s2, 0x1e000
	.loc	2 237 168                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:168
	and_or_b32 r35, r3, s2, r1
	.loc	2 237 227 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:227
	or_b32 r156, r35, r4
	.loc	2 237 67                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:67
	shl_b32 r1, 1, r156
	shl_b32 r8, 3, r0
	.loc	2 224 22 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:224:22
	saddc_co_u32 s9, s47, s3
	.loc	2 237 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:45
	ldg_b128 r160, s14, r1, 0x0
	shl_b32 r1, 10, r0
	sshl_b32 s19, 21, s4
	and_b32 r31, 0xfe000, r1
	and_b32 r7, r8, 56
	sshl_b32 s18, 24, s18
	or3_b32 r7, s19, r7, r31
	add_u32 r7, r7, s18
	.loc	2 241 356                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:356
	mad_i32 r10, r7, 2, s40
	add_co_u32 r12, 0x80000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 237 168                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:168
	or_b32 r33, 0x20000, r35
	.loc	2 241 339                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:339
	ldg_b128 r18, r10, 0x0
	ldg_b128 r22, r12, 0x0
	.loc	2 241 356 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:356
	add_co_u32 r12, 0x100000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 237 227 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:227
	or_b32 r158, r33, r4
	.loc	2 241 356                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:356
	add_co_u32 r10, 0x180000, r10
	.loc	2 237 67                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:67
	shl_b32 r3, 1, r158
	.loc	2 237 227 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:227
	or_b32 r5, 0x20020, r156
	or_b32 r4, r156, 32
	.loc	2 237 67                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:67
	shl_b32 r6, 1, r5
	.loc	2 237 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:45
	ldg_b128 r164, s14, r3, 0x0
	.loc	2 237 67                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:67
	shl_b32 r3, 1, r4
	.loc	2 241 356 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:356
	addc_co_u32 r11, r11, 0
	.loc	2 237 45                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:237:45
	ldg_b128 r180, s14, r6, 0x0
	ldg_b128 r176, s14, r3, 0x0
	.loc	2 241 339                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:339
	ldg_b128 r36, r12, 0x0
	ldg_b128 r40, r10, 0x0
	and_b32 r6, r8, 16
	and_b32 r17, r8, 32
	.loc	2 222 20                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:222:20
	ldu_b32 s2, s0, 0x0
	.loc	2 223 19                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:223:19
	ldu_b32 s1, s6, 0x0
	.loc	2 224 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:224:22
	ldu_b32 s0, s8, 0x0
	mul_u24 r3, r0, 9
	add_u32 r9, r17, r0
	add_u32 r6, r6, r0
	and_b32 r7, 0x1fc0, r8
	and_b32 r3, r3, 8
	and_b32 r9, r9, 32
	and_b32 r6, r6, 16
	.loc	2 241 47                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:47
	add_u32 r27, 0x800, r7
	add_u32 r28, 0x1000, r7
	add_u32 r29, 0x1800, r7
	.loc	2 241 83 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:83
	or_b32 r10, r9, r3
	.loc	2 241 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:27
	or_b32 r3, r6, r3
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 241 253                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:253
	or3_b32 r11, r10, r7, r6
	.loc	2 241 27                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:27
	or3_b32 r12, r10, r27, r6
	or3_b32 r6, r10, r28, r6
	mov_b32 r10, s3
	or3_b32 r3, r3, r29, r9
	shl_add_u32 r11, 1, r11, r10
	shl_add_u32 r12, 1, r12, r10
	shl_add_u32 r6, 1, r6, r10
	shl_add_u32 r3, 1, r3, r10
	.loc	2 241 339                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:241:339
	arrive gvmcnt(6)
	sts_b128 r11, 0x0, r18
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r22
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r36
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r40
.Ltmp457:
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
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
.Ltmp458:
	.loc	2 244 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:3
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
	.loc	2 244 8 is_stmt 0               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:8
	sadd_co_u32 s18, 0x80080, s40
	or_b32 r18, r24, r16
	.loc	2 244 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:3
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
	.loc	2 244 8                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:8
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
	.loc	2 244 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:3
	addc_co_u32 r34, r34, r37
	shl_or_b32 r36, 1, r35, r36
	.loc	2 0 0                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:0
	shl_b64 r136, 0, 0
	shl_add_u32 r6, 1, r6, 0
	sadd_co_u32 s14, 0x100, s14
	or_b32 r12, r20, r22
	or_b32 r14, r20, r25
	or_b32 r16, r20, r41
	or3_b32 r20, r24, r22, r42
	or3_b32 r22, r24, r25, r42
	or3_b32 r24, r24, r41, r42
	.loc	2 244 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:3
	add_co_u32 r35, s3, r36
	mov_b32 r36, s5
	smov_b64 s20, 0
	shl_add_u32 r8, 1, r8, 0
	add_u32 r26, 0x6000, r40
	add_u32 r30, 0x4000, r40
	.loc	2 0 0                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:0
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
	.loc	2 244 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:3
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
	.loc	2 244 31                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:31
	sadd_co_u32 s22, 0x100, s22
	saddc_co_u32 s23, s23, 0
	sadd_co_u32 s20, 0x80, s20
	saddc_co_u32 s21, s21, 0
	scmp_eq_u64 0x4000, s22
	.loc	2 244 3                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:244:3
	snop 0
	bra_smsks LBB3_12
LBB3_2:                                 ; %for.body127
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 245 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:245:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %for.cond130.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp459:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
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
.Ltmp460:
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 252 71 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:71
	add_co_u32 r192, r156, s20
	mov_b32 r37, s21
	addc_co_u32 r193, r157, r37
	.loc	2 252 49 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:49
	add_co_u32 r194, r35, s22
	mov_b32 r38, s23
	addc_co_u32 r195, r36, r38
	.loc	2 252 71                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:71
	add_co_u32 r196, r158, s20
	addc_co_u32 r197, r39, r37
	.loc	2 252 49                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:49
	add_co_u32 r198, r33, s22
	.loc	2 252 251                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:251
	shl_b64 r192, 1, r192
	.loc	2 252 49                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:49
	addc_co_u32 r199, r34, r38
	.loc	2 252 71                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:71
	or_b32 r37, r192, 64
	add_co_u32 r192, s3, r37
	mov_b32 r37, s5
	.loc	2 252 49                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:49
	ldg_b128 r200, r194, 0x0
	.loc	2 252 251                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:251
	shl_b64 r194, 1, r196
	.loc	2 252 71                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:71
	addc_co_u32 r193, r37, r193
	or_b32 r38, r194, 64
	add_co_u32 r196, s3, r38
	addc_co_u32 r197, r37, r195
	.loc	2 256 41 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	add_i32 r37, 0x4000, r9
	add_i32 r38, 0x4000, r10
	.loc	2 252 49                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:49
	ldg_b128 r204, r198, 0x0
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r208, r37, 0x0
	lds_b128 r212, r38, 0x0
	add_i32 r37, 0x4000, r11
	.loc	2 252 49                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:252:49
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r196, 0x0
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r216, r37, 0x0
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r208, r160, r184
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	add_i32 r37, 0x4000, r12
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	mma_16x16x16f16 r132, r208, r164, r132
	mma_16x16x16f16 r184, r210, r162, r184
	mma_16x16x16f16 r132, r210, r166, r132
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r13
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r160, r172
	mma_16x16x16f16 r128, r212, r164, r128
	mma_16x16x16f16 r172, r214, r162, r172
	mma_16x16x16f16 r128, r214, r166, r128
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r14
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r216, r160, r168
	mma_16x16x16f16 r124, r216, r164, r124
	mma_16x16x16f16 r168, r218, r162, r168
	mma_16x16x16f16 r124, r218, r166, r124
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r15
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r208, r160, r152
	mma_16x16x16f16 r120, r208, r164, r120
	mma_16x16x16f16 r152, r210, r162, r152
	mma_16x16x16f16 r120, r210, r166, r120
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r16
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r212, r160, r148
	mma_16x16x16f16 r116, r212, r164, r116
	mma_16x16x16f16 r148, r214, r162, r148
	mma_16x16x16f16 r116, r214, r166, r116
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r17
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r216, r160, r144
	mma_16x16x16f16 r112, r216, r164, r112
	mma_16x16x16f16 r144, r218, r162, r144
	mma_16x16x16f16 r112, r218, r166, r112
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r18
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r160, r140
	mma_16x16x16f16 r108, r208, r164, r108
	mma_16x16x16f16 r140, r210, r162, r140
	mma_16x16x16f16 r108, r210, r166, r108
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r19
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r160, r136
	mma_16x16x16f16 r104, r212, r164, r104
	mma_16x16x16f16 r136, r214, r162, r136
	mma_16x16x16f16 r104, r214, r166, r104
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r20
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r216, r176, r184
	mma_16x16x16f16 r132, r216, r180, r132
	mma_16x16x16f16 r184, r218, r178, r184
	mma_16x16x16f16 r132, r218, r182, r132
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r21
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r208, r176, r172
	mma_16x16x16f16 r128, r208, r180, r128
	mma_16x16x16f16 r172, r210, r178, r172
	mma_16x16x16f16 r128, r210, r182, r128
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r22
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r212, r176, r168
	mma_16x16x16f16 r124, r212, r180, r124
	mma_16x16x16f16 r168, r214, r178, r168
	mma_16x16x16f16 r124, r214, r182, r124
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r23
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r216, r176, r152
	mma_16x16x16f16 r120, r216, r180, r120
	mma_16x16x16f16 r152, r218, r178, r152
	mma_16x16x16f16 r120, r218, r182, r120
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r24
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r208, r176, r148
	mma_16x16x16f16 r116, r208, r180, r116
	mma_16x16x16f16 r148, r210, r178, r148
	mma_16x16x16f16 r116, r210, r182, r116
	.loc	2 256 41                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:256:41
	lds_b128 r208, r37, 0x0
	.loc	2 262 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:262:58
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
.Ltmp461:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp462:
	.loc	2 271 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:271:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %for.cond347.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp463:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
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
.Ltmp464:
LBB3_6:                                 ; %if.end431
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 276 584 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:276:584
	or_b32 r37, r7, s20
	.loc	2 276 462 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:276:462
	mad_i32 r208, r37, 2, s18
.Ltmp465:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	mov_b32 r38, s23
	add_co_u32 r37, r190, s22
.Ltmp466:
	.loc	2 10 41                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:10:41
	ldg_b128 r208, r208, 0x0
.Ltmp467:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	addc_co_u32 r159, r191, r38
	add_co_u32 r212, 0x100000, r37
	addc_co_u32 r213, r159, 0
	add_co_u32 r214, 0x180000, r37
	rfl_b32 s7, r26
	smov_b32 s6, md
	addc_co_u32 r215, r159, 0
.Ltmp468:
	.loc	2 10 41                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:10:41
	arrive gvmcnt(0)
	sts_b128 r6, 0x0, r208
.Ltmp469:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r212, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r214, 0x0 bsm
.Ltmp470:
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r160, r100
	mma_16x16x16f16 r68, r208, r164, r68
	mma_16x16x16f16 r100, r210, r162, r100
	mma_16x16x16f16 r68, r210, r166, r68
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r208, r12, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r160, r96
	mma_16x16x16f16 r64, r212, r164, r64
	mma_16x16x16f16 r96, r214, r162, r96
	mma_16x16x16f16 r64, r214, r166, r64
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r212, r13, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r160, r92
	mma_16x16x16f16 r60, r216, r164, r60
	mma_16x16x16f16 r92, r218, r162, r92
	mma_16x16x16f16 r60, r218, r166, r60
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r216, r14, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r160, r88
	mma_16x16x16f16 r56, r208, r164, r56
	mma_16x16x16f16 r88, r210, r162, r88
	mma_16x16x16f16 r56, r210, r166, r56
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r208, r15, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r160, r84
	mma_16x16x16f16 r52, r212, r164, r52
	mma_16x16x16f16 r84, r214, r162, r84
	mma_16x16x16f16 r52, r214, r166, r52
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r212, r16, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r160, r80
	mma_16x16x16f16 r48, r216, r164, r48
	mma_16x16x16f16 r80, r218, r162, r80
	mma_16x16x16f16 r48, r218, r166, r48
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r216, r17, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r160, r76
	mma_16x16x16f16 r44, r208, r164, r44
	mma_16x16x16f16 r76, r210, r162, r76
	mma_16x16x16f16 r44, r210, r166, r44
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r208, r18, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r160, r72
	mma_16x16x16f16 r40, r212, r164, r40
	mma_16x16x16f16 r72, r214, r162, r72
	mma_16x16x16f16 r40, r214, r166, r40
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r212, r19, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r216, r176, r100
	mma_16x16x16f16 r68, r216, r180, r68
	mma_16x16x16f16 r100, r218, r178, r100
	mma_16x16x16f16 r68, r218, r182, r68
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r216, r20, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r208, r176, r96
	mma_16x16x16f16 r64, r208, r180, r64
	mma_16x16x16f16 r96, r210, r178, r96
	mma_16x16x16f16 r64, r210, r182, r64
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r208, r21, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r212, r176, r92
	mma_16x16x16f16 r60, r212, r180, r60
	mma_16x16x16f16 r92, r214, r178, r92
	mma_16x16x16f16 r60, r214, r182, r60
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r212, r22, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r216, r176, r88
	mma_16x16x16f16 r56, r216, r180, r56
	mma_16x16x16f16 r88, r218, r178, r88
	mma_16x16x16f16 r56, r218, r182, r56
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r216, r23, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r176, r84
	mma_16x16x16f16 r52, r208, r180, r52
	mma_16x16x16f16 r84, r210, r178, r84
	mma_16x16x16f16 r52, r210, r182, r52
	.loc	2 282 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:282:43
	lds_b128 r208, r24, 0x0
	.loc	2 288 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:288:58
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
.Ltmp471:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp472:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r37, r188, s22
	addc_co_u32 r38, r189, r38
	add_co_u32 r208, 0x200080, r37
	addc_co_u32 r209, r38, 0
	sadd_co_u32 md, 0xffff9000, md
	rfl_b32 s7, r27
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x280080, r37
	addc_co_u32 r209, r38, 0
.Ltmp473:
	.loc	2 300 16                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:300:16
	mov_b32 r210, 0x3f00
.Ltmp474:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r28
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x300080, r37
	addc_co_u32 r209, r38, 0
.Ltmp475:
	.loc	2 300 16                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:300:16
	mov_b32 r211, 0
.Ltmp476:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r29
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x380080, r37
	addc_co_u32 r209, r38, 0
.Ltmp477:
	.loc	2 300 16                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:300:16
	cmp_lg_u64 s24, s22, r210
.Ltmp478:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
.Ltmp479:
	.loc	2 300 16                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:300:16
	scmp_eq_u64 0x3f00, s22
.Ltmp480:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldg_b128 r0, r208, 0x0 bsm
.Ltmp481:
	.loc	3 268 5 is_stmt 0               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s6
.Ltmp482:
	.loc	2 300 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:300:9
	bra_smsks LBB3_8
; %bb.7:                                ; %for.body769.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 303 251                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:251
	or_b32 r159, r156, s20
	.loc	2 303 71 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:71
	mad_i32 r160, r159, 2, s14
	.loc	2 303 251                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:251
	or_b32 r159, r158, s20
	.loc	2 303 71                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:71
	mad_i32 r164, r159, 2, s14
	.loc	2 303 251                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:251
	or_b32 r159, r4, s20
	.loc	2 303 71                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:71
	mad_i32 r176, r159, 2, s14
	.loc	2 303 251                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:251
	or_b32 r159, r5, s20
	.loc	2 303 71                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:71
	mad_i32 r180, r159, 2, s14
	.loc	2 303 49                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:303:49
	ldg_b128 r160, r160, 0x0
	ldg_b128 r164, r164, 0x0
	ldg_b128 r176, r176, 0x0
	ldg_b128 r180, r180, 0x0
LBB3_8:                                 ; %if.end803
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 308 43 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	add_i32 r159, 0x4000, r9
	add_i32 r208, 0x4000, r10
	snop 0
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r11
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r12
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r13
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r210, r200, r184
	mma_16x16x16f16 r132, r210, r204, r132
	mma_16x16x16f16 r184, r212, r202, r184
	mma_16x16x16f16 r132, r212, r206, r132
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r210, r208, 0x0
	add_i32 r208, 0x4000, r14
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r214, r200, r172
	mma_16x16x16f16 r128, r214, r204, r128
	mma_16x16x16f16 r172, r216, r202, r172
	mma_16x16x16f16 r128, r216, r206, r128
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r15
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r218, r200, r168
	mma_16x16x16f16 r124, r218, r204, r124
	mma_16x16x16f16 r168, r220, r202, r168
	mma_16x16x16f16 r124, r220, r206, r124
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r16
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r210, r200, r152
	mma_16x16x16f16 r120, r210, r204, r120
	mma_16x16x16f16 r152, r212, r202, r152
	mma_16x16x16f16 r120, r212, r206, r120
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r17
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r214, r200, r148
	mma_16x16x16f16 r116, r214, r204, r116
	mma_16x16x16f16 r148, r216, r202, r148
	mma_16x16x16f16 r116, r216, r206, r116
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r20
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r218, r200, r144
	mma_16x16x16f16 r112, r218, r204, r112
	mma_16x16x16f16 r144, r220, r202, r144
	mma_16x16x16f16 r112, r220, r206, r112
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r18
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r210, r200, r140
	mma_16x16x16f16 r108, r210, r204, r108
	mma_16x16x16f16 r140, r212, r202, r140
	mma_16x16x16f16 r108, r212, r206, r108
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r19
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r214, r200, r136
	mma_16x16x16f16 r104, r214, r204, r104
	mma_16x16x16f16 r136, r216, r202, r136
	mma_16x16x16f16 r104, r216, r206, r104
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r21
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r218, r192, r184
	mma_16x16x16f16 r132, r218, r196, r132
	mma_16x16x16f16 r184, r220, r194, r184
	mma_16x16x16f16 r132, r220, r198, r132
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r22
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r210, r192, r172
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r172, r212, r194, r172
	mma_16x16x16f16 r128, r212, r198, r128
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r23
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r214, r192, r168
	mma_16x16x16f16 r124, r214, r196, r124
	mma_16x16x16f16 r168, r216, r194, r168
	mma_16x16x16f16 r124, r216, r198, r124
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r24
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r218, r192, r152
	mma_16x16x16f16 r120, r218, r196, r120
	mma_16x16x16f16 r152, r220, r194, r152
	mma_16x16x16f16 r120, r220, r198, r120
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r218, r159, 0x0
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r210, r192, r148
	mma_16x16x16f16 r116, r210, r196, r116
	.loc	2 308 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:308:43
	lds_b128 r208, r208, 0x0
	.loc	2 314 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:314:58
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
.Ltmp483:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp484:
	.loc	2 323 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:323:9
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond901.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	add_co_u32 r208, 0x180100, r37
	addc_co_u32 r209, r38, 0
	add_co_u32 r210, 0x100100, r37
	addc_co_u32 r211, r38, 0
	add_co_u32 r212, 0x80100, r37
	addc_co_u32 r213, r38, 0
.Ltmp485:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
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
.Ltmp486:
LBB3_10:                                ; %if.end985
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 344 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:344:9
	sandn_b64 cmsk, xmsk, s24
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r200, r100
	mma_16x16x16f16 r68, r208, r204, r68
	mma_16x16x16f16 r100, r210, r202, r100
	mma_16x16x16f16 r68, r210, r206, r68
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r208, r12, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r200, r96
	mma_16x16x16f16 r64, r212, r204, r64
	mma_16x16x16f16 r96, r214, r202, r96
	mma_16x16x16f16 r64, r214, r206, r64
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r212, r13, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r200, r92
	mma_16x16x16f16 r60, r216, r204, r60
	mma_16x16x16f16 r92, r218, r202, r92
	mma_16x16x16f16 r60, r218, r206, r60
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r216, r14, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r200, r88
	mma_16x16x16f16 r56, r208, r204, r56
	mma_16x16x16f16 r88, r210, r202, r88
	mma_16x16x16f16 r56, r210, r206, r56
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r208, r15, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r200, r84
	mma_16x16x16f16 r52, r212, r204, r52
	mma_16x16x16f16 r84, r214, r202, r84
	mma_16x16x16f16 r52, r214, r206, r52
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r212, r16, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r200, r80
	mma_16x16x16f16 r48, r216, r204, r48
	mma_16x16x16f16 r80, r218, r202, r80
	mma_16x16x16f16 r48, r218, r206, r48
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r216, r17, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r200, r76
	mma_16x16x16f16 r44, r208, r204, r44
	mma_16x16x16f16 r76, r210, r202, r76
	mma_16x16x16f16 r44, r210, r206, r44
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r208, r18, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r200, r72
	mma_16x16x16f16 r40, r212, r204, r40
	mma_16x16x16f16 r72, r214, r202, r72
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r200, r19, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	mma_16x16x16f16 r40, r214, r206, r40
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r204, r20, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
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
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r208, r21, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r200, r192, r92
	mma_16x16x16f16 r60, r200, r196, r60
	mma_16x16x16f16 r92, r202, r194, r92
	mma_16x16x16f16 r60, r202, r198, r60
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r200, r22, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r204, r192, r88
	mma_16x16x16f16 r56, r204, r196, r56
	mma_16x16x16f16 r88, r206, r194, r88
	mma_16x16x16f16 r56, r206, r198, r56
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r204, r23, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r192, r84
	mma_16x16x16f16 r52, r208, r196, r52
	mma_16x16x16f16 r84, r210, r194, r84
	mma_16x16x16f16 r52, r210, r198, r52
	.loc	2 330 43                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:330:43
	lds_b128 r208, r24, 0x0
	.loc	2 336 58                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:336:58
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
	.loc	2 344 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:344:9
	bra_cmsks LBB3_1
; %bb.11:                               ; %if.then1081
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp487:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp488:
LBB3_12:                                ; %for.cond1086.preheader
	.loc	4 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
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
	.loc	2 350 92 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:350:92
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
	.loc	2 350 9 is_stmt 0               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:350:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then1104
	.loc	2 0 9                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sub_u32 r4, r5, s0
	cmp_gt_i32 s20, 0x8e0, r4
	.loc	2 352 15 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:352:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r4, 0
	.loc	2 352 163 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:352:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1133
	.loc	2 0 163                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r4, s13
	addc_co_u32 r9, r4, r9
	.loc	2 353 19 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:353:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB3_15:                                ; %Flow558
	.loc	2 0 19 is_stmt 0                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_16:                                ; %for.inc1157
	sor_b64 xmsk, xmsk, s6
	.loc	2 350 63 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:350:63
	or_b32 r2, r2, 16
	.loc	2 350 92 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:350:92
	cmp_ge_i32 s6, r2, s2
	cmp_lt_i32 s2, r2, s2
	.loc	2 0 0                           ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 350 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:350:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then1104.1
	.loc	2 352 117 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:352:117
	add_u32 r2, r5, 16
	.loc	2 352 15 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:352:15
	cmp_ge_i32 s20, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x8e0, r2
	mov_b32 r2, 0
	.loc	2 352 163                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:352:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1133.1
	.loc	2 0 163                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 353 19 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:353:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow557
	.loc	2 0 19 is_stmt 0                ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:19
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
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1178
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(0)
	mul_f32 r1, r184, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r185, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r186, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r6, r187, r4
.Ltmp489:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp490:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp491:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp492:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp493:
LBB3_22:                                ; %if.end1233
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 22 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mov_b32 r1, 0
	shl_b64 r6, 1, r0
	add_co_u32 r6, s10, r6
	mov_b32 r1, s11
	addc_co_u32 r7, r1, r7
	.loc	2 378 254 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1178.1
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(1)
	mul_f32 r1, r172, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r173, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r174, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r10, r175, r4
.Ltmp494:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp495:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp496:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp497:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp498:
LBB3_24:                                ; %if.end1233.1
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 16
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 0
	stg_b64 r22, 0x0, r8 devc
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1178.2
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(2)
	mul_f32 r1, r168, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r169, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r170, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r8, r171, r4
.Ltmp499:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp500:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp501:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp502:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp503:
LBB3_26:                                ; %if.end1233.2
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 32
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r8, r1, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1178.3
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(3)
	mul_f32 r1, r152, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r153, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r154, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r12, r155, r4
.Ltmp504:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp505:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp506:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp507:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp508:
LBB3_28:                                ; %if.end1233.3
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 48
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r26, r1, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r26, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1178.4
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(4)
	mul_f32 r1, r148, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r149, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r150, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r12, r151, r4
.Ltmp509:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp510:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp511:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp512:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp513:
LBB3_30:                                ; %if.end1233.4
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 64
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r14, r1, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r14, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1178.5
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(5)
	mul_f32 r1, r144, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r145, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r146, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r12, r147, r4
.Ltmp514:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp515:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp516:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp517:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp518:
LBB3_32:                                ; %if.end1233.5
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, 0x50, r0
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r12, 0, 0
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 0
	stg_b64 r28, 0x0, r10 devc
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1178.6
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(6)
	mul_f32 r1, r140, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r141, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r142, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r10, r143, r4
.Ltmp519:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp520:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp521:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp522:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp523:
LBB3_34:                                ; %if.end1233.6
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, 0x60, r0
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r10, r1, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r10, 0x0, r12 devc
	shl_b64 r12, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1178.7
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(7)
	mul_f32 r1, r136, r4
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r137, r4
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r138, r4
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r16, r139, r4
.Ltmp524:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp525:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp526:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp527:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp528:
LBB3_36:                                ; %if.end1233.7
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, 0x70, r0
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r24, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 0
	stg_b64 r24, 0x0, r12 devc
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1178.8
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(8)
	mul_f32 r1, r132, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r133, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r134, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r12, r135, r2
.Ltmp529:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp530:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp531:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp532:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp533:
LBB3_38:                                ; %if.end1233.8
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 22 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	add_co_u32 r12, 0x10000, r6
	addc_co_u32 r13, r7, 0
	.loc	2 378 190 is_stmt 0             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:190
	add_u32 r0, 0x8000, r0
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 0
	stg_b64 r12, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1178.9
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(9)
	mul_f32 r1, r128, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r129, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r130, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r18, r131, r2
.Ltmp534:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp535:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp536:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp537:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp538:
LBB3_40:                                ; %if.end1233.9
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 16
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1178.10
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(10)
	mul_f32 r1, r124, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r125, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r126, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r16, r127, r2
.Ltmp539:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp540:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp541:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp542:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp543:
LBB3_42:                                ; %if.end1233.10
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 32
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r16, r1, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1178.11
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(11)
	mul_f32 r1, r120, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r121, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r122, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r20, r123, r2
.Ltmp544:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp545:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp546:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp547:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp548:
LBB3_44:                                ; %if.end1233.11
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 48
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r32, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 0
	stg_b64 r32, 0x0, r18 devc
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1178.12
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(12)
	mul_f32 r1, r116, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r117, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r118, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r18, r119, r2
.Ltmp549:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp550:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp551:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp552:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp553:
LBB3_46:                                ; %if.end1233.12
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, r0, 64
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r18, r1, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r18, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1178.13
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(13)
	mul_f32 r1, r112, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r113, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r114, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r34, r115, r2
.Ltmp554:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp555:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp556:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp557:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r34
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp558:
LBB3_48:                                ; %if.end1233.13
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, 0x50, r0
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r34, r1, 2, s10
	shl_b64 r36, 0, 0
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 0
	stg_b64 r34, 0x0, r20 devc
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1178.14
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(14)
	mul_f32 r1, r108, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r109, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r110, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r20, r111, r2
.Ltmp559:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp560:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp561:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp562:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp563:
LBB3_50:                                ; %if.end1233.14
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r1, 0x60, r0
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r20, r1, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r20, 0x0, r36 devc
	shl_b64 r36, 0, 0
	.loc	2 362 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:362:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1178.15
	.loc	2 367 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:367:22
	arrive gvmcnt(15)
	mul_f32 r1, r104, r2
	.loc	2 368 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:368:22
	mul_f32 r3, r105, r2
	.loc	2 369 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:369:22
	mul_f32 r5, r106, r2
	.loc	2 370 22                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:370:22
	mul_f32 r38, r107, r2
.Ltmp564:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp565:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp566:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp567:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r38
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp568:
LBB3_52:                                ; %if.end1233.15
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 378 211 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:211
	or_b32 r0, 0x70, r0
	.loc	2 378 22 is_stmt 0              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:22
	mad_i32 r0, r0, 2, s10
	.loc	2 378 254                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:378:254
	snop 1
	stg_b64 r0, 0x0, r36 devc
	.loc	2 382 9 is_stmt 1               ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1344.1.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	shl_b64 r36, 0, 0
	snop 1
	stg_b64 r6, 0x100, r36 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow556
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	shl_b64 r36, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1283
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	arrive gvmcnt(16)
	mul_f32 r36, r102, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r37, r103, r4
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r100, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r101, r4
.Ltmp569:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp570:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp571:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_lo, r36
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp572:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_hi, r37
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp573:
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r6, 0x100, r38 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r96, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r97, r4
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r6, r98, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r7, r99, r4
.Ltmp574:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp575:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp576:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp577:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp578:
LBB3_56:                                ; %if.end1344.1
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r22, 0x100, r36 devc
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1344.3.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r8, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_58:                                ; %Flow555
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1283.2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	arrive gvmcnt(17)
	mul_f32 r6, r94, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r7, r95, r4
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r92, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r93, r4
.Ltmp579:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp580:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp581:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp582:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp583:
	.loc	2 389 24 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	snop 0
	mul_f32 r7, r90, r4
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	stg_b64 r8, 0x100, r22 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r88, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r89, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r8, r91, r4
.Ltmp584:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp585:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp586:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp587:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp588:
LBB3_60:                                ; %if.end1344.3
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1344.5.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r14, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_62:                                ; %Flow554
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1283.4
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	arrive gvmcnt(18)
	mul_f32 r6, r86, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r7, r87, r4
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r84, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r85, r4
.Ltmp589:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp590:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp591:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp592:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp593:
	.loc	2 389 24 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	stg_b64 r14, 0x100, r8 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r80, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r81, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r8, r83, r4
.Ltmp594:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp595:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp596:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp597:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp598:
LBB3_64:                                ; %if.end1344.5
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1344.7.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_10
LBB3_66:                                ; %Flow553
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1283.6
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	arrive gvmcnt(19)
	mul_f32 r6, r78, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r7, r79, r4
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r76, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r77, r4
.Ltmp599:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp600:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp601:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp602:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp603:
	.loc	2 389 24 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	stg_b64 r10, 0x100, r8 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r72, r4
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r5, r73, r4
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r4, r75, r4
.Ltmp604:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp605:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp606:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp607:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp608:
LBB3_68:                                ; %if.end1344.7
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1344.9.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_70:                                ; %Flow551
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1283.8
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r4, r69, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r5, r70, r2
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r68, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r6, r71, r2
.Ltmp609:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp610:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp611:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp612:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp613:
	.loc	2 388 24 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	snop 0
	mul_f32 r5, r65, r2
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	stg_b64 r12, 0x100, r8 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r64, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r6, r66, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r7, r67, r2
.Ltmp614:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp615:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp616:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp617:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp618:
LBB3_72:                                ; %if.end1344.9
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1344.11.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow550
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1283.10
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r4, r61, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r5, r62, r2
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r60, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r6, r63, r2
.Ltmp619:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp620:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp621:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp622:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp623:
	.loc	2 388 24 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	stg_b64 r16, 0x100, r8 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r56, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r6, r58, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r7, r59, r2
.Ltmp624:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp625:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp626:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp627:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp628:
LBB3_76:                                ; %if.end1344.11
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r32, 0x100, r4 devc
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1344.13.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r18, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_18
LBB3_78:                                ; %Flow549
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1283.12
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r4, r53, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r5, r54, r2
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r52, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r6, r55, r2
.Ltmp629:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp630:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp631:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp632:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp633:
	.loc	2 388 24 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	stg_b64 r18, 0x100, r8 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r48, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r6, r50, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r7, r51, r2
.Ltmp634:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp635:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp636:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp637:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp638:
LBB3_80:                                ; %if.end1344.13
	.loc	6 0 10                          ; /opt/maca/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r34, 0x100, r4 devc
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
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
	.loc	2 0 9 is_stmt 0                 ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 400 1                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:400:1
	snop 0
	endk
LBB3_83:                                ; %if.end1344.15.critedge
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r20, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_20
	.loc	2 382 9                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:382:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1283.14
	.loc	2 388 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	mul_f32 r4, r45, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r5, r46, r2
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r44, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r6, r47, r2
.Ltmp639:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp640:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp641:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp642:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp643:
	.loc	2 388 24 is_stmt 1              ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:388:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 398 262                       ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	stg_b64 r20, 0x100, r8 devc
	.loc	2 387 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:387:24
	mul_f32 r3, r40, r2
	.loc	2 389 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:389:24
	mul_f32 r6, r42, r2
	.loc	2 390 24                        ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:390:24
	mul_f32 r2, r43, r2
.Ltmp644:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp645:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp646:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp647:
	.loc	6 1007 10                       ; /opt/maca/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp648:
	.loc	2 398 262 is_stmt 1             ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:398:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 400 1                         ; /tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp:400:1
	snop 0
	endk
.Ltmp649:
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
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
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
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
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
	.byte	11                              ; Abbreviation Code
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
	.byte	12                              ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x488 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x60:0x1ad DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x71:0x3d DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	107                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	48                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x89:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x95:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	50                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa1:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xae:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc2:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xd7:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp57                         ; DW_AT_low_pc
	.long	.Ltmp58-.Ltmp57                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	146                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xeb:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp57                         ; DW_AT_low_pc
	.long	.Ltmp58-.Ltmp57                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x100:0x72 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp58                         ; DW_AT_low_pc
	.long	.Ltmp150-.Ltmp58                ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	148                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x114:0x25 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	48                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x120:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	35                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x12c:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	39                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x139:0x38 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	50                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x145:0x13 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp90                         ; DW_AT_low_pc
	.long	.Ltmp91-.Ltmp90                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	8                               ; Abbrev [8] 0x158:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	39                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x164:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	35                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x172:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	180                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x17e:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	179                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x18a:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	178                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x196:0xc DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	177                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x1a2:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	203                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1ae:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x1bb:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x1c8:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1d7:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	204                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1e3:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x1f0:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x1fd:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x20d:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x213:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x219:0x279 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	6                               ; Abbrev [6] 0x22a:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp457                        ; DW_AT_low_pc
	.long	.Ltmp458-.Ltmp457               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x23e:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp457                        ; DW_AT_low_pc
	.long	.Ltmp458-.Ltmp457               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x253:0x29 DW_TAG_inlined_subroutine
	.long	525                             ; DW_AT_abstract_origin
	.quad	.Ltmp459                        ; DW_AT_low_pc
	.long	.Ltmp460-.Ltmp459               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	247                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x267:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp459                        ; DW_AT_low_pc
	.long	.Ltmp460-.Ltmp459               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	61                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x27c:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp461                        ; DW_AT_low_pc
	.long	.Ltmp462-.Ltmp461               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	270                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x291:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp461                        ; DW_AT_low_pc
	.long	.Ltmp462-.Ltmp461               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x2a6:0x2a DW_TAG_inlined_subroutine
	.long	525                             ; DW_AT_abstract_origin
	.quad	.Ltmp463                        ; DW_AT_low_pc
	.long	.Ltmp464-.Ltmp463               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	273                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x2bb:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp463                        ; DW_AT_low_pc
	.long	.Ltmp464-.Ltmp463               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	61                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2d0:0x1a DW_TAG_inlined_subroutine
	.long	525                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	278                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2dd:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	61                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2ea:0xd DW_TAG_inlined_subroutine
	.long	531                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	276                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x2f7:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp471                        ; DW_AT_low_pc
	.long	.Ltmp472-.Ltmp471               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	296                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x30c:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp471                        ; DW_AT_low_pc
	.long	.Ltmp472-.Ltmp471               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x321:0x1a DW_TAG_inlined_subroutine
	.long	525                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	298                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x32e:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	61                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x33b:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp483                        ; DW_AT_low_pc
	.long	.Ltmp484-.Ltmp483               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	322                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x350:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp483                        ; DW_AT_low_pc
	.long	.Ltmp484-.Ltmp483               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x365:0x2a DW_TAG_inlined_subroutine
	.long	525                             ; DW_AT_abstract_origin
	.quad	.Ltmp485                        ; DW_AT_low_pc
	.long	.Ltmp486-.Ltmp485               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	325                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x37a:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp485                        ; DW_AT_low_pc
	.long	.Ltmp486-.Ltmp485               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	61                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x38f:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp487                        ; DW_AT_low_pc
	.long	.Ltmp488-.Ltmp487               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	345                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3a4:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp487                        ; DW_AT_low_pc
	.long	.Ltmp488-.Ltmp487               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x3b9:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	371                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x3c6:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x3d3:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x3e0:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x3ef:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	372                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x3fc:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x409:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x416:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x425:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	391                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x432:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x43f:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x44c:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x45b:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	392                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x468:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges41                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x475:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges42                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x482:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges43                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges
.Ldebug_ranges0:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
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
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
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
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
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
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
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
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
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
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
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
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
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
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
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
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges35:
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
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges36:
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges37:
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges38:
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges39:
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges40:
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges41:
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges42:
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges43:
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v042_codegen_case1/v042_final_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=94
.Linfo_string3:
	.asciz	"moe_stage_gate_up_one_wave"    ; string offset=115
.Linfo_string4:
	.asciz	"moe_stage_gate_up_one_wave_2rows" ; string offset=142
.Linfo_string5:
	.asciz	"continuous_pipeline_memcpy_async<16UL>" ; string offset=175
.Linfo_string6:
	.asciz	"__barrier"                     ; string offset=214
.Linfo_string7:
	.asciz	"__syncthreads"                 ; string offset=224
.Linfo_string8:
	.asciz	"exp2f"                         ; string offset=238
.Linfo_string9:
	.asciz	"__float2half_rn"               ; string offset=244
.Linfo_string10:
	.asciz	"__floats2half2_rn"             ; string offset=260
.Linfo_string11:
	.asciz	"__float22half2_rn"             ; string offset=278
.Linfo_string12:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=296
.Linfo_string13:
	.asciz	"moe_memcpy_sync_16"            ; string offset=323
.Linfo_string14:
	.asciz	"kernel_kernel"                 ; string offset=342
.Linfo_string15:
	.asciz	"kernel_kernel_1"               ; string offset=356
	.section	".note.GNU-stack"
	.metaxgpu_metadata
---
macahca.kernels:
  - .args:
      - .arg_name:       gate.coerce
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
      - .arg_name:       up.coerce
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
    .mtreg_count:    222
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    36
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
