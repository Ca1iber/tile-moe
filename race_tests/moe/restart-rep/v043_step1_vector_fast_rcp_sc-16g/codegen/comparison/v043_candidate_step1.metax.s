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
	.file	2 "/tmp/v043_final_codegen" "v043_final_case1_generated_device.cpp"
	.loc	2 98 0                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:98:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s8, s5
.Ltmp4:
	.loc	2 105 19 prologue_end           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:105:19
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
	.loc	2 106 20                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:106:20
	sshl_b64 s10, 2, s2
	sadd_co_u32 s0, s22, s10
	saddc_co_u32 s1, s23, s11
	.loc	2 107 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:107:22
	sadd_co_u32 s22, s20, s10
	saddc_co_u32 s23, s21, s11
	cmp_lt_u32 s10, r0, 64
	cmp_gt_u32 s20, 0x80, r0
	sshl_b32 s2, 24, s2
	sshl_b32 s3, 18, s4
.Ltmp5:
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r52, 12, r1
	sadd_co_i32 s2, s2, s3
.Ltmp6:
	.loc	2 118 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:118:3
	mov_b32 r51, 0
.Ltmp7:
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_or_b32 r21, 7, r1, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r52, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	smov_b64 s24, s10
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s26, s18
	snop 0
	bra_xmskz LBB2_2
; %bb.1:                                ; %if.else.i471
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, s10, xmsk
	sand_b64 s30, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s30
LBB2_2:                                 ; %Flow519
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	ldu_b32 s0, s0, 0x0
	ldu_b32 s1, s22, 0x0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_4:                                 ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp10:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 8
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r23, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	smov_b64 s24, s10
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.else.i
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, s10, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_6:                                 ; %Flow518
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 16
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r25, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_10
; %bb.9:                                ; %if.else.i471.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_10:                                ; %Flow517
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.1.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_12:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp16:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 24
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r27, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.else.i.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_14:                                ; %Flow516
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.1.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 32
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r29, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.else.i471.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_18:                                ; %Flow515
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_20
; %bb.19:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.2.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_20:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp22:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 40
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r31, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_22
; %bb.21:                               ; %if.else.i.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_22:                                ; %Flow514
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.2.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 48
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r33, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_26
; %bb.25:                               ; %if.else.i471.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_26:                                ; %Flow513
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_28
; %bb.27:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.3.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_28:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp28:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 56
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r35, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.else.i.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_30:                                ; %Flow512
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_32
; %bb.31:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.3.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, r1, 64
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r37, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_34
; %bb.33:                               ; %if.else.i471.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_34:                                ; %Flow511
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.4.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_36:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp34:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, 0x48, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r39, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_38
; %bb.37:                               ; %if.else.i.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_38:                                ; %Flow510
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_40
; %bb.39:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.4.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, 0x50, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r41, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_42
; %bb.41:                               ; %if.else.i471.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_42:                                ; %Flow509
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_44
; %bb.43:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.5.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_44:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp40:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, 0x58, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r43, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.else.i.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_46:                                ; %Flow508
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_48
; %bb.47:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.5.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, 0x60, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r45, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_50
; %bb.49:                               ; %if.else.i471.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_50:                                ; %Flow507
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_52
; %bb.51:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.6.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_52:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp46:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, 0x68, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r47, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_54
; %bb.53:                               ; %if.else.i.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_54:                                ; %Flow506
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_56
; %bb.55:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.6.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r3, 0x70, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r4, 7, r3
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r3, 12, r3
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r49, r4, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r3, r3, r50
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_58
; %bb.57:                               ; %if.else.i471.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s3
	sor_b64 s24, s24, s26
LBB2_58:                                ; %Flow505
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_60
; %bb.59:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.7.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
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
LBB2_60:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit483.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp52:
	.loc	2 39 36 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:39:36
	or_b32 r1, 0x78, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	shl_b32 r3, 7, r1
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	shl_b32 r1, 12, r1
	.loc	2 43 45                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:43:45
	or_b32 r3, r3, r2
	.loc	2 44 46                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:44:46
	or_b32 r1, r1, r50
	shl_b64 r4, 0, s16
	mov_b32 r2, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	smov_b64 s24, -1
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_62
; %bb.61:                               ; %if.else.i.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s20, xmsk
	shl_b64 r4, 0, s14
	mov_b32 r2, s3
	sor_b64 s24, s24, s26
LBB2_62:                                ; %Flow504
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_64
; %bb.63:                               ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit.7.sink.split
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	mad_i32 r4, s2, 2, r4
	add_co_u32 r4, r4, r1
	add_u32 r2, r2, r3
	addc_co_u32 r5, r5, 0
.Ltmp53:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s5, r2
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
	.loc	2 121 3 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:121:3
	add_co_u32 r50, r52, r50
	shl_b32 r1, 10, r0
	addc_co_u32 r51, r51, 0
	and_b32 r54, 0xf0000, r1
	mov_b32 r57, s8
	mad_i32 r62, s2, 2, r50
	shl_add_u32 r54, 18, r57, r54
	shl_b32 r55, 11, r0
	smov_b32 s2, 0x7800
	and_or_b32 r66, r55, s2, r54
	add_co_u32 r50, s16, r62
	mov_b32 r51, s17
	addc_co_u32 r51, r51, r63
	mov_b32 r59, 0
	or_b32 r58, 0x8000, r66
	shr_b32 r1, 1, r0
	shr_b32 r4, 5, r0
	add_co_u32 r52, s14, r62
	mov_b32 r53, s15
	and_b32 r57, r0, 48
	shl_b64 r54, 1, r58
	and_b32 r56, r1, 24
	add_shl_u32 r4, r4, r1, 4
	shr_b32 r5, 4, r0
	addc_co_u32 r53, r53, r63
	or_b32 r54, r57, r54
	mov_b32 r67, 0
	shl_b32 r2, 6, r0
	shl_b32 r6, 3, r0
	or_b32 r60, r56, r58
	and_b32 r4, r4, 16
	add_shl_u32 r5, r5, r0, 3
	add_co_u32 r54, s12, r54
	mov_b32 r58, s13
	or_b32 r64, r56, r66
	shl_b64 r66, 1, r66
	and_b32 r11, 0x3c0, r2
	and_b32 r12, r6, 32
	and_or_b32 r19, r5, 8, r4
	addc_co_u32 r55, r58, r55
	or_b32 r56, r57, r66
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
	.loc	2 0 0 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:0
	shl_b64 r166, 0, 0
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
	.loc	2 121 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:121:3
	addc_co_u32 r57, r58, r67
	.loc	2 0 0                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:0
	shl_b64 r168, 0, 0
	shl_b64 r170, 0, r166
	shl_b64 r174, 0, r166
	shl_b64 r178, 0, r166
	shl_b64 r182, 0, r166
	shl_b64 r186, 0, r166
	shl_b64 r190, 0, r166
	shl_b64 r126, 0, r166
	shl_b64 r66, 0, r166
	shl_b64 r70, 0, r166
	shl_b64 r74, 0, r166
	shl_b64 r78, 0, r166
	shl_b64 r82, 0, r166
	shl_b64 r86, 0, r166
	shl_b64 r90, 0, r166
	shl_b64 r94, 0, r166
	shl_b64 r98, 0, r166
	shl_b64 r102, 0, r166
	shl_b64 r106, 0, r166
	shl_b64 r110, 0, r166
	shl_b64 r114, 0, r166
	shl_b64 r118, 0, r166
	shl_b64 r122, 0, r166
	shl_b64 r130, 0, r166
	shl_b64 r162, 0, r166
	shl_b64 r158, 0, r166
	shl_b64 r154, 0, r166
	shl_b64 r150, 0, r166
	shl_b64 r146, 0, r166
	shl_b64 r142, 0, r166
	shl_b64 r138, 0, r166
	shl_b64 r134, 0, r166
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
	shr_b32 r2, 2, r0
	.loc	2 121 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:121:3
	mov_b32 r61, 0
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
	mov_b32 r65, 0
	smov_b64 s2, 0
	shl_b64 r172, 0, r168
	shl_b64 r176, 0, r168
	shl_b64 r180, 0, r168
	shl_b64 r184, 0, r168
	shl_b64 r188, 0, r168
	shl_b64 r192, 0, r168
	shl_b64 r128, 0, r168
	shl_b64 r68, 0, r168
	shl_b64 r72, 0, r168
	shl_b64 r76, 0, r168
	shl_b64 r80, 0, r168
	shl_b64 r84, 0, r168
	shl_b64 r88, 0, r168
	shl_b64 r92, 0, r168
	shl_b64 r96, 0, r168
	shl_b64 r100, 0, r168
	shl_b64 r104, 0, r168
	shl_b64 r108, 0, r168
	shl_b64 r112, 0, r168
	shl_b64 r116, 0, r168
	shl_b64 r120, 0, r168
	shl_b64 r124, 0, r168
	shl_b64 r132, 0, r168
	shl_b64 r164, 0, r168
	shl_b64 r160, 0, r168
	shl_b64 r156, 0, r168
	shl_b64 r152, 0, r168
	shl_b64 r148, 0, r168
	shl_b64 r144, 0, r168
	shl_b64 r140, 0, r168
	shl_b64 r136, 0, r168
	bra LBB2_67
	.p2align	5
LBB2_65:                                ; %Flow472
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 3                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s22
LBB2_66:                                ; %for.inc295
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 121 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:121:45
	sadd_co_u32 s2, 0x80, s2
	add_co_u32 r60, r60, 64
	saddc_co_u32 s3, s3, 0
	addc_co_u32 r61, r61, 0
	add_co_u32 r64, r64, 64
	scmp_ne_u64 0x1000, s2
	addc_co_u32 r65, r65, 0
	bra_smskz LBB2_162
LBB2_67:                                ; %for.cond52.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 124 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:43
	add_co_u32 r194, r56, s2
	mov_b32 r58, s3
	addc_co_u32 r195, r57, r58
	add_co_u32 r196, r54, s2
	addc_co_u32 r197, r55, r58
	.loc	2 124 243 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:243
	shl_b64 r58, 1, r64
	.loc	2 124 61                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:61
	or_b32 r58, r58, 64
	.loc	2 124 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:43
	ldg_b128 r206, r196, 0x0
	ldg_b128 r202, r194, 0x0
	.loc	2 124 61                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:61
	add_co_u32 r194, s12, r58
	mov_b32 r58, s13
	.loc	2 124 243                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:243
	shl_b64 r196, 1, r60
	.loc	2 124 61                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:61
	addc_co_u32 r195, r58, r59
	or_b32 r59, r196, 64
	add_co_u32 r198, s12, r59
	addc_co_u32 r199, r58, r197
	.loc	2 124 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:124:43
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
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r210, r4, 0x0
	lds_b128 r214, r5, 0x0
	lds_b128 r218, r6, 0x0
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	add_i32 r58, 0x4000, r4
	.loc	2 157 23                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:157:23
	scmp_eq_u64 0xf80, s2
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r210, r202, r126
	mma_16x16x16f16 r162, r210, r206, r162
	mma_16x16x16f16 r126, r212, r204, r126
	mma_16x16x16f16 r162, r212, r208, r162
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r210, r7, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r190, r214, r202, r190
	mma_16x16x16f16 r158, r214, r206, r158
	mma_16x16x16f16 r190, r216, r204, r190
	mma_16x16x16f16 r158, r216, r208, r158
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r214, r8, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r186, r218, r202, r186
	mma_16x16x16f16 r154, r218, r206, r154
	mma_16x16x16f16 r186, r220, r204, r186
	mma_16x16x16f16 r154, r220, r208, r154
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r218, r9, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r210, r202, r182
	mma_16x16x16f16 r150, r210, r206, r150
	mma_16x16x16f16 r182, r212, r204, r182
	mma_16x16x16f16 r150, r212, r208, r150
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r210, r10, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r214, r202, r178
	mma_16x16x16f16 r146, r214, r206, r146
	mma_16x16x16f16 r178, r216, r204, r178
	mma_16x16x16f16 r146, r216, r208, r146
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r214, r11, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r218, r202, r174
	mma_16x16x16f16 r142, r218, r206, r142
	mma_16x16x16f16 r174, r220, r204, r174
	mma_16x16x16f16 r142, r220, r208, r142
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r5
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r210, r202, r170
	mma_16x16x16f16 r138, r210, r206, r138
	mma_16x16x16f16 r170, r212, r204, r170
	mma_16x16x16f16 r138, r212, r208, r138
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r6
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r214, r202, r166
	mma_16x16x16f16 r134, r214, r206, r134
	mma_16x16x16f16 r166, r216, r204, r166
	mma_16x16x16f16 r134, r216, r208, r134
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r214, r58, 0x0
	add_i32 r58, 0x4000, r7
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r218, r202, r130
	mma_16x16x16f16 r94, r218, r206, r94
	mma_16x16x16f16 r130, r220, r204, r130
	mma_16x16x16f16 r94, r220, r208, r94
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r8
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r210, r202, r122
	mma_16x16x16f16 r90, r210, r206, r90
	mma_16x16x16f16 r122, r212, r204, r122
	mma_16x16x16f16 r90, r212, r208, r90
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r9
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r214, r202, r118
	mma_16x16x16f16 r86, r214, r206, r86
	mma_16x16x16f16 r118, r216, r204, r118
	mma_16x16x16f16 r86, r216, r208, r86
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r214, r58, 0x0
	add_i32 r58, 0x4000, r10
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r218, r202, r114
	mma_16x16x16f16 r82, r218, r206, r82
	mma_16x16x16f16 r114, r220, r204, r114
	mma_16x16x16f16 r82, r220, r208, r82
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r11
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r210, r202, r110
	mma_16x16x16f16 r78, r210, r206, r78
	mma_16x16x16f16 r110, r212, r204, r110
	mma_16x16x16f16 r78, r212, r208, r78
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r12
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r214, r202, r106
	mma_16x16x16f16 r74, r214, r206, r74
	mma_16x16x16f16 r106, r216, r204, r106
	mma_16x16x16f16 r74, r216, r208, r74
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r214, r12, 0x0
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r218, r202, r102
	mma_16x16x16f16 r70, r218, r206, r70
	mma_16x16x16f16 r102, r220, r204, r102
	mma_16x16x16f16 r70, r220, r208, r70
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r218, r13, 0x0
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r210, r202, r98
	mma_16x16x16f16 r66, r210, r206, r66
	mma_16x16x16f16 r98, r212, r204, r98
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r202, r14, 0x0
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	mma_16x16x16f16 r66, r212, r208, r66
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r206, r15, 0x0
	lds_b128 r210, r16, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(4)
	mma_16x16x16f16 r126, r214, r194, r126
	mma_16x16x16f16 r162, r214, r198, r162
	mma_16x16x16f16 r126, r216, r196, r126
	mma_16x16x16f16 r162, r216, r200, r162
	arrive bsmcnt(3)
	mma_16x16x16f16 r190, r218, r194, r190
	mma_16x16x16f16 r158, r218, r198, r158
	mma_16x16x16f16 r190, r220, r196, r190
	mma_16x16x16f16 r158, r220, r200, r158
	arrive bsmcnt(2)
	mma_16x16x16f16 r186, r202, r194, r186
	mma_16x16x16f16 r154, r202, r198, r154
	mma_16x16x16f16 r186, r204, r196, r186
	mma_16x16x16f16 r154, r204, r200, r154
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r202, r17, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r206, r194, r182
	mma_16x16x16f16 r150, r206, r198, r150
	mma_16x16x16f16 r182, r208, r196, r182
	mma_16x16x16f16 r150, r208, r200, r150
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r206, r18, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r210, r194, r178
	mma_16x16x16f16 r146, r210, r198, r146
	mma_16x16x16f16 r178, r212, r196, r178
	mma_16x16x16f16 r146, r212, r200, r146
	.loc	2 129 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:129:43
	lds_b128 r210, r19, 0x0
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r202, r194, r174
	mma_16x16x16f16 r142, r202, r198, r142
	mma_16x16x16f16 r174, r204, r196, r174
	mma_16x16x16f16 r142, r204, r200, r142
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r202, r58, 0x0
	add_i32 r58, 0x4000, r13
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r206, r194, r170
	mma_16x16x16f16 r138, r206, r198, r138
	mma_16x16x16f16 r170, r208, r196, r170
	mma_16x16x16f16 r138, r208, r200, r138
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r206, r58, 0x0
	add_i32 r58, 0x4000, r14
	.loc	2 135 57                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:135:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r210, r194, r166
	mma_16x16x16f16 r134, r210, r198, r134
	mma_16x16x16f16 r166, r212, r196, r166
	mma_16x16x16f16 r134, r212, r200, r134
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r15
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r202, r194, r130
	mma_16x16x16f16 r94, r202, r198, r94
	mma_16x16x16f16 r130, r204, r196, r130
	mma_16x16x16f16 r94, r204, r200, r94
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r202, r58, 0x0
	add_i32 r58, 0x4000, r16
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r206, r194, r122
	mma_16x16x16f16 r90, r206, r198, r90
	mma_16x16x16f16 r122, r208, r196, r122
	mma_16x16x16f16 r90, r208, r200, r90
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r206, r58, 0x0
	add_i32 r58, 0x4000, r17
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r210, r194, r118
	mma_16x16x16f16 r86, r210, r198, r86
	mma_16x16x16f16 r118, r212, r196, r118
	mma_16x16x16f16 r86, r212, r200, r86
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r210, r58, 0x0
	add_i32 r58, 0x4000, r18
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r202, r194, r114
	mma_16x16x16f16 r82, r202, r198, r82
	mma_16x16x16f16 r114, r204, r196, r114
	mma_16x16x16f16 r82, r204, r200, r82
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r202, r58, 0x0
	add_i32 r58, 0x4000, r19
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r206, r194, r110
	mma_16x16x16f16 r78, r206, r198, r78
	mma_16x16x16f16 r110, r208, r196, r110
	mma_16x16x16f16 r78, r208, r200, r78
	.loc	2 143 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:143:45
	lds_b128 r206, r58, 0x0
	.loc	2 149 55                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:149:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r210, r194, r106
	mma_16x16x16f16 r74, r210, r198, r74
	mma_16x16x16f16 r106, r212, r196, r106
	mma_16x16x16f16 r74, r212, r200, r74
	arrive bsmcnt(1)
	mma_16x16x16f16 r102, r202, r194, r102
	mma_16x16x16f16 r70, r202, r198, r70
	mma_16x16x16f16 r102, r204, r196, r102
	mma_16x16x16f16 r70, r204, r200, r70
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r206, r194, r98
	mma_16x16x16f16 r66, r206, r198, r66
	mma_16x16x16f16 r98, r208, r196, r98
	mma_16x16x16f16 r66, r208, r200, r66
	.loc	2 157 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:157:9
	bra_smsks LBB2_66
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_70:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp60:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_72:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp62:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_74:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp64:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_76:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp66:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_78:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp68:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_80:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp70:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_82:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp72:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_84:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp74:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_86:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp76:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_88:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp78:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_90:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp80:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_92:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp82:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_94:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp84:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
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
LBB2_96:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp86:
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmsks LBB2_159
LBB2_97:                                ; %Flow474
                                        ;   in Loop: Header=BB2_67 Depth=1
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_99
LBB2_98:                                ; %if.then.i530.7
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
LBB2_99:                                ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit535.7
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
	mov_b32 r58, 0
	shl_b64 r194, 0, s16
	smov_b64 s24, s10
.Ltmp89:
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_101
; %bb.100:                              ; %if.else.i497.7
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sadd_co_i32 s5, 0x4000, 0
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	sandn_b64 s24, s10, xmsk
	sand_b64 s26, s20, xmsk
	mov_b32 r58, s5
	shl_b64 r194, 0, s14
	sor_b64 s24, s24, s26
LBB2_101:                               ; %Flow
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 0 7                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_65
; %bb.102:                              ; %_Z26moe_stage_gate_up_one_wavePvS_PKvS1_ii.exit509.7.sink.split
                                        ;   in Loop: Header=BB2_67 Depth=1
.Ltmp90:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r59, r194, r62
	addc_co_u32 r194, r195, r63
	add_co_u32 r59, r59, s2
	mov_b32 r195, s3
	addc_co_u32 r194, r194, r195
	add_co_u32 r196, 0x78080, r59
	add_u32 r58, r58, r3
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
LBB2_103:                               ; %if.else.i523
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_105
; %bb.104:                              ; %if.then13.i525
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_70
LBB2_106:                               ; %if.then.i530
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_71
LBB2_107:                               ; %if.else.i497
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_109
; %bb.108:                              ; %if.then13.i499
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_72
LBB2_110:                               ; %if.then.i504
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_73
LBB2_111:                               ; %if.else.i523.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_113
; %bb.112:                              ; %if.then13.i525.1
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_74
LBB2_114:                               ; %if.then.i530.1
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_75
LBB2_115:                               ; %if.else.i497.1
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_117
; %bb.116:                              ; %if.then13.i499.1
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_76
LBB2_118:                               ; %if.then.i504.1
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_77
LBB2_119:                               ; %if.else.i523.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_121
; %bb.120:                              ; %if.then13.i525.2
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_78
LBB2_122:                               ; %if.then.i530.2
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_79
LBB2_123:                               ; %if.else.i497.2
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_125
; %bb.124:                              ; %if.then13.i499.2
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_80
LBB2_126:                               ; %if.then.i504.2
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_81
LBB2_127:                               ; %if.else.i523.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_129
; %bb.128:                              ; %if.then13.i525.3
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_82
LBB2_130:                               ; %if.then.i530.3
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_83
LBB2_131:                               ; %if.else.i497.3
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_133
; %bb.132:                              ; %if.then13.i499.3
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_84
LBB2_134:                               ; %if.then.i504.3
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_85
LBB2_135:                               ; %if.else.i523.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_137
; %bb.136:                              ; %if.then13.i525.4
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_86
LBB2_138:                               ; %if.then.i530.4
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_87
LBB2_139:                               ; %if.else.i497.4
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_141
; %bb.140:                              ; %if.then13.i499.4
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_88
LBB2_142:                               ; %if.then.i504.4
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_89
LBB2_143:                               ; %if.else.i523.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_145
; %bb.144:                              ; %if.then13.i525.5
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_90
LBB2_146:                               ; %if.then.i530.5
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_91
LBB2_147:                               ; %if.else.i497.5
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_149
; %bb.148:                              ; %if.then13.i499.5
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_92
LBB2_150:                               ; %if.then.i504.5
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_93
LBB2_151:                               ; %if.else.i523.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_153
; %bb.152:                              ; %if.then13.i525.6
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_94
LBB2_154:                               ; %if.then.i530.6
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_95
LBB2_155:                               ; %if.else.i497.6
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_157
; %bb.156:                              ; %if.then13.i499.6
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmskz LBB2_96
LBB2_158:                               ; %if.then.i504.6
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
	.loc	2 45 7                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	and_xmsk s22, s18
	sxor_b64 s22, xmsk, s22
	bra_xmskz LBB2_97
LBB2_159:                               ; %if.else.i523.7
                                        ;   in Loop: Header=BB2_67 Depth=1
	.loc	2 49 14                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:49:14
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_161
; %bb.160:                              ; %if.then13.i525.7
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
	.loc	2 45 7 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:45:7
	or_xmsk s22, s22
	sxor_b64 xmsk, xmsk, s22
	snop 0
	bra_xmsks LBB2_98
	bra LBB2_99
.Ltmp150:
LBB2_162:                               ; %for.body.i.preheader
	.loc	2 7 49                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r3, 0xbfb8aa3b, r190
.Ltmp151:
	.file	5 "/opt/maca/include/common" "__clang_macac_math.h"
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r3
	mov_b32 r14, 0x42800000
	mov_b32 r63, 0x1f800000
	mov_b32 r64, 0x3f800000
.Ltmp152:
	.loc	2 8 49                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r191
.Ltmp153:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r190, 0xbfb8aa3b, r3
	csel_b32 r4, r63, r64, s2
.Ltmp154:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp155:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp156:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r192
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp157:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp158:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r6, r190, r3
.Ltmp159:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r191, 0xbfb8aa3b, r3
.Ltmp160:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp161:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp162:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r193
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp163:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp164:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r12, r191, r3
.Ltmp165:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r192, 0xbfb8aa3b, r3
.Ltmp166:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp167:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp168:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r186
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp169:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp170:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r21, r192, r3
.Ltmp171:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r193, 0xbfb8aa3b, r3
.Ltmp172:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp173:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp174:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r187
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp175:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp176:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r35, r193, r3
.Ltmp177:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r186, 0xbfb8aa3b, r3
.Ltmp178:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp179:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp180:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r188
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp181:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp182:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r9, r186, r3
.Ltmp183:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r187, 0xbfb8aa3b, r3
.Ltmp184:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp185:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp186:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r189
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp187:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp188:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r18, r187, r3
.Ltmp189:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r188, 0xbfb8aa3b, r3
.Ltmp190:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp191:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp192:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r182
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp193:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp194:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r27, r188, r3
.Ltmp195:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r189, 0xbfb8aa3b, r3
.Ltmp196:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp197:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp198:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r183
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp199:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp200:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r43, r189, r3
.Ltmp201:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r182, 0xbfb8aa3b, r3
.Ltmp202:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp203:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp204:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r184
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp205:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp206:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r15, r182, r3
.Ltmp207:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r183, 0xbfb8aa3b, r3
.Ltmp208:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp209:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp210:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r185
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp211:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp212:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r23, r183, r3
.Ltmp213:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r184, 0xbfb8aa3b, r3
.Ltmp214:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp215:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp216:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r178
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp217:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp218:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r33, r184, r3
.Ltmp219:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r185, 0xbfb8aa3b, r3
.Ltmp220:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp221:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp222:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r179
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp223:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp224:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r49, r185, r3
.Ltmp225:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r178, 0xbfb8aa3b, r3
.Ltmp226:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp227:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp228:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r180
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp229:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp230:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r19, r178, r3
.Ltmp231:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r179, 0xbfb8aa3b, r3
.Ltmp232:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp233:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp234:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r181
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp235:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp236:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r29, r179, r3
.Ltmp237:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r180, 0xbfb8aa3b, r3
.Ltmp238:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp239:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp240:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r174
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp241:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp242:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r41, r180, r3
.Ltmp243:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r181, 0xbfb8aa3b, r3
.Ltmp244:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp245:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp246:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r175
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp247:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp248:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r54, r181, r3
.Ltmp249:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r174, 0xbfb8aa3b, r3
.Ltmp250:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp251:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp252:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r176
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp253:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp254:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r25, r174, r3
.Ltmp255:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r175, 0xbfb8aa3b, r3
.Ltmp256:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp257:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp258:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r177
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp259:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp260:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r36, r175, r3
.Ltmp261:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r176, 0xbfb8aa3b, r3
.Ltmp262:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp263:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp264:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r170
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp265:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp266:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r47, r176, r3
.Ltmp267:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r177, 0xbfb8aa3b, r3
.Ltmp268:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp269:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp270:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r171
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp271:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp272:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r57, r177, r3
.Ltmp273:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r170, 0xbfb8aa3b, r3
.Ltmp274:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp275:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp276:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r172
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp277:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp278:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r31, r170, r3
.Ltmp279:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r171, 0xbfb8aa3b, r3
.Ltmp280:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp281:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp282:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r173
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp283:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp284:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r42, r171, r3
.Ltmp285:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r172, 0xbfb8aa3b, r3
.Ltmp286:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp287:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp288:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r166
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp289:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp290:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r51, r172, r3
.Ltmp291:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r173, 0xbfb8aa3b, r3
.Ltmp292:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp293:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp294:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r167
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp295:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp296:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r59, r173, r3
.Ltmp297:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r166, 0xbfb8aa3b, r3
.Ltmp298:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp299:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp300:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r168
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp301:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp302:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r37, r166, r3
.Ltmp303:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r167, 0xbfb8aa3b, r3
.Ltmp304:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp305:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp306:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r169
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp307:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp308:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r48, r167, r3
.Ltmp309:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r168, 0xbfb8aa3b, r3
.Ltmp310:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp311:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp312:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r162
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp313:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp314:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r55, r168, r3
.Ltmp315:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r169, 0xbfb8aa3b, r3
.Ltmp316:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp317:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp318:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r163
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp319:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp320:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r61, r169, r3
.Ltmp321:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r162, 0xbfb8aa3b, r3
.Ltmp322:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp323:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp324:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r164
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp325:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp326:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r40, r162, r3
.Ltmp327:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r163, 0xbfb8aa3b, r3
.Ltmp328:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp329:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp330:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r165
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp331:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp332:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r50, r163, r3
.Ltmp333:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r164, 0xbfb8aa3b, r3
.Ltmp334:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp335:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp336:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r158
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp337:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp338:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r58, r164, r3
.Ltmp339:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r165, 0xbfb8aa3b, r3
.Ltmp340:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp341:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp342:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r159
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp343:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp344:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r62, r165, r3
.Ltmp345:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r158, 0xbfb8aa3b, r3
.Ltmp346:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp347:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp348:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r160
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp349:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp350:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r32, r158, r3
.Ltmp351:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r159, 0xbfb8aa3b, r3
.Ltmp352:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp353:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp354:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r161
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp355:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp356:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r44, r159, r3
.Ltmp357:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r160, 0xbfb8aa3b, r3
.Ltmp358:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp359:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp360:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r154
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp361:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp362:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r53, r160, r3
.Ltmp363:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r161, 0xbfb8aa3b, r3
.Ltmp364:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp365:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp366:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r155
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp367:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp368:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r60, r161, r3
.Ltmp369:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r154, 0xbfb8aa3b, r3
.Ltmp370:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp371:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp372:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r156
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp373:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp374:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r24, r154, r3
.Ltmp375:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r155, 0xbfb8aa3b, r3
.Ltmp376:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp377:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp378:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r157
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp379:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp380:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r34, r155, r3
.Ltmp381:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r156, 0xbfb8aa3b, r3
.Ltmp382:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp383:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp384:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r150
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp385:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp386:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r46, r156, r3
.Ltmp387:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r157, 0xbfb8aa3b, r3
.Ltmp388:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp389:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp390:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r151
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp391:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp392:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r56, r157, r3
.Ltmp393:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r150, 0xbfb8aa3b, r3
.Ltmp394:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp395:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp396:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r152
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp397:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp398:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r17, r150, r3
.Ltmp399:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r151, 0xbfb8aa3b, r3
.Ltmp400:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp401:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp402:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r153
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp403:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp404:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r26, r151, r3
.Ltmp405:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r152, 0xbfb8aa3b, r3
.Ltmp406:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp407:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp408:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r146
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp409:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp410:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r39, r152, r3
.Ltmp411:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r153, 0xbfb8aa3b, r3
.Ltmp412:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp413:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp414:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r147
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp415:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp416:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r52, r153, r3
.Ltmp417:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r146, 0xbfb8aa3b, r3
.Ltmp418:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp419:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp420:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r148
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp421:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp422:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r11, r146, r3
.Ltmp423:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r147, 0xbfb8aa3b, r3
.Ltmp424:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp425:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp426:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r149
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp427:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp428:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r20, r147, r3
.Ltmp429:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r148, 0xbfb8aa3b, r3
.Ltmp430:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp431:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp432:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r142
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp433:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp434:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r30, r148, r3
.Ltmp435:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r149, 0xbfb8aa3b, r3
.Ltmp436:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp437:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp438:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r143
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp439:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp440:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r45, r149, r3
.Ltmp441:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r142, 0xbfb8aa3b, r3
.Ltmp442:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp443:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp444:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r5, 0xbfb8aa3b, r144
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp445:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp446:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r7, r142, r3
.Ltmp447:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r143, 0xbfb8aa3b, r3
.Ltmp448:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp449:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp450:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r5, 0xbfb8aa3b, r145
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp451:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp452:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r13, r143, r3
.Ltmp453:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r144, 0xbfb8aa3b, r3
.Ltmp454:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp455:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp456:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r5, 0xbfb8aa3b, r138
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp457:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp458:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r22, r144, r3
.Ltmp459:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r145, 0xbfb8aa3b, r3
.Ltmp460:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp461:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp462:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r5, 0xbfb8aa3b, r139
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp463:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r4, r63, r64, s2
.Ltmp464:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r38, r145, r3
.Ltmp465:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r138, 0xbfb8aa3b, r3
.Ltmp466:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp467:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp468:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r8, 0xbfb8aa3b, r140
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r4, r3, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp469:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r63, r64, s2
.Ltmp470:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r4, r138, r3
.Ltmp471:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r139, 0xbfb8aa3b, r3
.Ltmp472:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp473:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp474:
	.loc	2 10 49 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r10, 0xbfb8aa3b, r141
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r3, r5, r3, 0x3f800000
	.loc	2 8 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r3, r3
.Ltmp475:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r63, r64, s2
.Ltmp476:
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r8, r139, r3
.Ltmp477:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r140, 0xbfb8aa3b, r3
.Ltmp478:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r10
.Ltmp479:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp480:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r10, 0xbfb8aa3b, r134
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r3, r5, r3, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r3, r3
.Ltmp481:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r63, r64, s2
.Ltmp482:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r16, r140, r3
.Ltmp483:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
	fmka_f32 r3, r141, 0xbfb8aa3b, r3
.Ltmp484:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r10
.Ltmp485:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r3, r3
.Ltmp486:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r10, 0xbfb8aa3b, r135
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r3, r5, r3, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r3, r3
.Ltmp487:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r63, r64, s2
.Ltmp488:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r28, r141, r3
.Ltmp489:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r3, r14, 0, s2
.Ltmp490:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r10
.Ltmp491:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	fmka_f32 r3, r134, 0xbfb8aa3b, r3
	exp_f32 r3, r3
.Ltmp492:
	.loc	2 9 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r65, 0xbfb8aa3b, r136
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r3, r5, r3, 0x3f800000
.Ltmp493:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r14, 0, s2
	csel_b32 r10, r63, r64, s2
.Ltmp494:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r65
.Ltmp495:
	.loc	2 7 12 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r3, r3
.Ltmp496:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r135, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp497:
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r3, r134, r3
	.loc	2 10 49                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r134, 0xbfb8aa3b, r137
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r5, r10, r5, 0x3f800000
.Ltmp498:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r14, 0, s2
	csel_b32 r65, r63, r64, s2
.Ltmp499:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r134
.Ltmp500:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	fmka_f32 r10, r136, 0xbfb8aa3b, r10
	exp_f32 r10, r10
.Ltmp501:
	.loc	2 8 12 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r5, r5
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r10, r65, r10, 0x3f800000
.Ltmp502:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r14, r14, 0, s2
	csel_b32 r63, r63, r64, s2
	sshl_b32 s2, 7, s8
	ssub_co_i32 s0, s0, s2
	fmka_f32 r14, r137, 0xbfb8aa3b, r14
	exp_f32 r14, r14
	sadd_co_i32 s0, s0, s1
	sshl_b32 s1, 20, s8
	sshl_b32 s2, 7, s4
.Ltmp503:
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r14, r63, r14, 0x3f800000
	sadd_co_i32 s1, s2, s1
	and_b32 r63, r0, 15
	smov_b32 s2, 0x1e0
	shl_b32 r64, 12, r0
.Ltmp504:
	.loc	2 167 65                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:65
	and_or_b32 r1, r1, s2, r63
	shl_b32 r0, 13, r0
	and_b32 r64, 0x3c0000, r64
	.loc	2 167 94 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:94
	cmp_lt_i32 s2, r1, s0
	and_b32 r0, 0x1e000, r0
	add_u32 r63, s1, r64
.Ltmp505:
	.loc	2 9 12 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r10, r10
	.loc	2 10 12                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r14, r14
	add_u32 r0, r63, r0
	.loc	2 8 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r5, r135, r5
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r10, r136, r10
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r14, r137, r14
	and_or_b32 r0, r2, 12, r0
.Ltmp506:
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_180
; %bb.163:                              ; %for.inc377
	.loc	2 0 9 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_181
LBB2_164:                               ; %for.inc377.1
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_182
LBB2_165:                               ; %for.inc377.2
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_183
LBB2_166:                               ; %for.inc377.3
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_184
LBB2_167:                               ; %for.inc377.4
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_185
LBB2_168:                               ; %for.inc377.5
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_186
LBB2_169:                               ; %for.inc377.6
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_171
LBB2_170:                               ; %if.then316.7
	.loc	2 172 22 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r37, r98
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r6, r48, r99
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r9, r55, r100
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r12, r61, r101
.Ltmp507:
	.file	6 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp508:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp509:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp510:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp511:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r9, 16, r9
	add_u16 r6_hi, 0, 0
	or_b32 r19, r9, r6
	shl_b32 r6, 16, r15
	and_b32 r2, 0xffff, r2
	or_b32 r18, r6, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, 0xe0
	shl_or_b32 r2, 1, r0, r2
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r18 devc
LBB2_171:                               ; %for.inc377.7
	.loc	2 0 260                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:260
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 65 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:65
	or_b32 r1, r1, 16
	.loc	2 167 94 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:94
	cmp_lt_i32 s0, r1, s0
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	snop 3
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_187
; %bb.172:                              ; %for.inc377.8
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_188
LBB2_173:                               ; %for.inc377.9
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_189
LBB2_174:                               ; %for.inc377.10
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_190
LBB2_175:                               ; %for.inc377.11
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_191
LBB2_176:                               ; %for.inc377.12
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_192
LBB2_177:                               ; %for.inc377.13
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_193
LBB2_178:                               ; %for.inc377.14
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_194
LBB2_179:                               ; %for.inc377.15
	.loc	2 182 1 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:182:1
	snop 1
	endk
LBB2_180:                               ; %if.then316
.Ltmp512:
	.loc	2 10 49                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:49
	mul_f32 r2, 0xbfb8aa3b, r129
.Ltmp513:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r2
	mov_b32 r2, 0x1f800000
	mov_b32 r63, 0x3f800000
	mov_b32 r64, 0x42800000
.Ltmp514:
	.loc	2 9 49                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:49
	mul_f32 r135, 0xbfb8aa3b, r128
.Ltmp515:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r134, r64, 0, s8
	csel_b32 r65, r2, r63, s8
.Ltmp516:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r135
.Ltmp517:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	fmka_f32 r134, r129, 0xbfb8aa3b, r134
	exp_f32 r134, r134
.Ltmp518:
	.loc	2 8 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:49
	mul_f32 r135, 0xbfb8aa3b, r127
	.loc	2 10 36                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:36
	fmak_f32 r65, r65, r134, 0x3f800000
	.loc	2 10 12 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:12
	rcp_f32 r65, r65
.Ltmp519:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r134, r64, 0, s8
.Ltmp520:
	.loc	2 10 9                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:10:9
	mul_f32 r65, r129, r65
.Ltmp521:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	fmka_f32 r134, r128, 0xbfb8aa3b, r134
	csel_b32 r129, r2, r63, s8
.Ltmp522:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r135
.Ltmp523:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	exp_f32 r134, r134
.Ltmp524:
	.loc	2 7 49 is_stmt 1                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:49
	mul_f32 r135, 0xbfb8aa3b, r126
	.loc	2 9 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:36
	fmak_f32 r129, r129, r134, 0x3f800000
	.loc	2 9 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:12
	rcp_f32 r129, r129
.Ltmp525:
	.loc	5 285 49 is_stmt 1              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r134, r64, 0, s8
.Ltmp526:
	.loc	2 9 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:9:9
	mul_f32 r128, r128, r129
.Ltmp527:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r129, r2, r63, s8
.Ltmp528:
	.loc	5 285 49 is_stmt 0              ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r135
.Ltmp529:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	fmka_f32 r134, r127, 0xbfb8aa3b, r134
	exp_f32 r134, r134
.Ltmp530:
	.loc	2 175 22 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r65, r65, r133
.Ltmp531:
	.loc	2 8 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:36
	fmak_f32 r129, r129, r134, 0x3f800000
.Ltmp532:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r2, r2, r63, s8
	csel_b32 r63, r64, 0, s8
	fmka_f32 r63, r126, 0xbfb8aa3b, r63
	exp_f32 r63, r63
.Ltmp533:
	.loc	2 8 12                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:12
	rcp_f32 r129, r129
	.loc	2 7 36                          ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:36
	fmak_f32 r2, r2, r63, 0x3f800000
	.loc	2 7 12 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:12
	rcp_f32 r2, r2
	.loc	2 8 9 is_stmt 1                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:8:9
	mul_f32 r127, r127, r129
	.loc	2 7 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:7:9
	mul_f32 r2, r126, r2
.Ltmp534:
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r2, r130
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r63, r127, r131
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r64, r128, r132
.Ltmp535:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp536:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r126_lo, r63
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp537:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r63_lo, r64
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp538:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r64_lo, r65
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp539:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r64, 16, r64
	add_u16 r63_hi, 0, 0
	or_b32 r65, r64, r63
	shl_b32 r63, 16, r126
	and_b32 r2, 0xffff, r2
	or_b32 r64, r63, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r64 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_164
LBB2_181:                               ; %if.then316.1
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r6, r122
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r6, r12, r123
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r12, r21, r124
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r21, r35, r125
.Ltmp540:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp541:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r35_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp542:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp543:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r21
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp544:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r12, 16, r12
	add_u16 r6_hi, 0, 0
	or_b32 r65, r12, r6
	shl_b32 r6, 16, r35
	and_b32 r2, 0xffff, r2
	or_b32 r64, r6, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_or_b32 r2, 1, r0, 32
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r64 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_165
LBB2_182:                               ; %if.then316.2
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r9, r118
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r6, r18, r119
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r9, r27, r120
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r12, r43, r121
.Ltmp545:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp546:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp547:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp548:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp549:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r9, 16, r9
	add_u16 r6_hi, 0, 0
	or_b32 r65, r9, r6
	shl_b32 r6, 16, r18
	and_b32 r2, 0xffff, r2
	or_b32 r64, r6, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_or_b32 r2, 1, r0, 64
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r64 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_166
LBB2_183:                               ; %if.then316.3
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r15, r114
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r6, r23, r115
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r9, r33, r116
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r12, r49, r117
.Ltmp550:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp551:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp552:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp553:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp554:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r9, 16, r9
	add_u16 r6_hi, 0, 0
	or_b32 r65, r9, r6
	shl_b32 r6, 16, r15
	and_b32 r2, 0xffff, r2
	or_b32 r64, r6, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, 0x60
	shl_or_b32 r2, 1, r0, r2
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r64 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_167
LBB2_184:                               ; %if.then316.4
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r19, r110
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r6, r29, r111
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r9, r41, r112
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r12, r54, r113
.Ltmp555:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp556:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp557:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp558:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp559:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r9, 16, r9
	add_u16 r6_hi, 0, 0
	or_b32 r19, r9, r6
	shl_b32 r6, 16, r15
	and_b32 r2, 0xffff, r2
	or_b32 r18, r6, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, 0x80
	shl_or_b32 r2, 1, r0, r2
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_168
LBB2_185:                               ; %if.then316.5
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r25, r106
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r6, r36, r107
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r9, r47, r108
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r12, r57, r109
.Ltmp560:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp561:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp562:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp563:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp564:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r9, 16, r9
	add_u16 r6_hi, 0, 0
	or_b32 r19, r9, r6
	shl_b32 r6, 16, r15
	and_b32 r2, 0xffff, r2
	or_b32 r18, r6, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, 0xa0
	shl_or_b32 r2, 1, r0, r2
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_169
LBB2_186:                               ; %if.then316.6
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r2, r31, r102
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r6, r42, r103
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r9, r51, r104
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r12, r59, r105
.Ltmp565:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp566:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r15_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp567:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp568:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp569:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r9, 16, r9
	add_u16 r6_hi, 0, 0
	or_b32 r19, r9, r6
	shl_b32 r6, 16, r15
	and_b32 r2, 0xffff, r2
	or_b32 r18, r6, r2
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, 0xc0
	shl_or_b32 r2, 1, r0, r2
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 s6, r2, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_170
	bra LBB2_171
LBB2_187:                               ; %if.then316.8
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r40, r94
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r50, r95
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r6, r58, r96
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r9, r62, r97
.Ltmp570:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp571:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp572:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp573:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp574:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r6, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r19, r6, r2
	shl_b32 r2, 16, r12
	and_b32 r1, 0xffff, r1
	or_b32 r18, r2, r1
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	add_co_u32 r1, s6, r2
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	mov_b32 r9, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r9
	add_co_u32 r36, 0x40000, r1
	addc_co_u32 r37, r2, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r36, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_173
LBB2_188:                               ; %if.then316.9
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r32, r90
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r44, r91
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r6, r53, r92
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r9, r60, r93
.Ltmp575:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp576:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp577:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp578:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp579:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r6, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r19, r6, r2
	shl_b32 r2, 16, r12
	and_b32 r1, 0xffff, r1
	or_b32 r18, r2, r1
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	add_co_u32 r1, s6, r2
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	mov_b32 r9, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r9
	add_co_u32 r32, 0x40020, r1
	addc_co_u32 r33, r2, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r32, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_174
LBB2_189:                               ; %if.then316.10
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r24, r86
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r34, r87
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r6, r46, r88
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r9, r56, r89
.Ltmp580:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp581:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp582:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp583:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp584:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r6, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r19, r6, r2
	shl_b32 r2, 16, r12
	and_b32 r1, 0xffff, r1
	or_b32 r18, r2, r1
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	add_co_u32 r1, s6, r2
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	mov_b32 r9, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r9
	add_co_u32 r24, 0x40040, r1
	addc_co_u32 r25, r2, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r24, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_175
LBB2_190:                               ; %if.then316.11
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r17, r82
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r26, r83
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r6, r39, r84
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r9, r52, r85
.Ltmp585:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp586:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp587:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp588:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp589:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r6, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r19, r6, r2
	shl_b32 r2, 16, r12
	and_b32 r1, 0xffff, r1
	or_b32 r18, r2, r1
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	add_co_u32 r1, s6, r2
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	mov_b32 r9, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r9
	add_co_u32 r24, 0x40060, r1
	addc_co_u32 r25, r2, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r24, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_176
LBB2_191:                               ; %if.then316.12
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r11, r78
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r20, r79
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r6, r30, r80
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r9, r45, r81
.Ltmp590:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp591:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp592:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp593:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r9
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp594:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r6, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r19, r6, r2
	shl_b32 r2, 16, r11
	and_b32 r1, 0xffff, r1
	or_b32 r18, r2, r1
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	add_co_u32 r1, s6, r2
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	mov_b32 r9, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r9
	add_co_u32 r20, 0x40080, r1
	addc_co_u32 r21, r2, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r20, 0x0, r18 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_177
LBB2_192:                               ; %if.then316.13
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r7, r74
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r13, r75
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r6, r22, r76
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r7, r38, r77
.Ltmp595:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp596:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp597:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp598:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp599:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r6, 16, r6
	add_u16 r2_hi, 0, 0
	or_b32 r7, r6, r2
	shl_b32 r2, 16, r9
	and_b32 r1, 0xffff, r1
	or_b32 r6, r2, r1
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	add_co_u32 r1, s6, r2
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	mov_b32 r9, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r9
	add_co_u32 r12, 0x400a0, r1
	addc_co_u32 r13, r2, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r12, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_178
LBB2_193:                               ; %if.then316.14
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r4, r70
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r8, r71
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r4, r16, r72
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r6, r28, r73
.Ltmp600:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp601:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp602:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp603:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp604:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r4, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r9, r4, r2
	shl_b32 r2, 16, r7
	and_b32 r1, 0xffff, r1
	or_b32 r8, r2, r1
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r2, 1, r0
	add_co_u32 r1, s6, r2
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	mov_b32 r7, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	mov_b32 r2, s7
	addc_co_u32 r2, r2, r7
	add_co_u32 r6, 0x400c0, r1
	addc_co_u32 r7, r2, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 167 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:167:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_179
LBB2_194:                               ; %if.then316.15
	.loc	2 172 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:172:22
	mul_f32 r1, r3, r66
	.loc	2 173 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:173:22
	mul_f32 r2, r5, r67
	.loc	2 174 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:174:22
	mul_f32 r3, r10, r68
	.loc	2 175 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:175:22
	mul_f32 r4, r14, r69
.Ltmp605:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp606:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp607:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp608:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp609:
	.loc	2 178 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	shl_b32 r0, 1, r0
	.loc	2 178 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:178:43
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	mov_b32 r5, 0
	.loc	2 179 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:27
	add_co_u32 r0, s6, r0
	mov_b32 r1, s7
	addc_co_u32 r1, r1, r5
	add_co_u32 r0, 0x400e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 179 260 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:179:260
	snop 1
	stg_b64 r0, 0x0, r2 devc
	.loc	2 182 1 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:182:1
	snop 2
	endk
.Ltmp610:
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
; codeLenInByte = 24376
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
	.loc	2 184 0                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:184:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp611:
	.loc	2 195 19 prologue_end           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:195:19
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
	.loc	2 196 20                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:196:20
	sshl_b64 s2, 2, s18
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 197 19                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:197:19
	sadd_co_u32 s6, s44, s2
	saddc_co_u32 s7, s45, s3
	.loc	2 198 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:198:22
	sadd_co_u32 s8, s46, s2
	smov_b32 s2, 0x1e000
	.loc	2 211 168                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:168
	and_or_b32 r35, r3, s2, r1
	.loc	2 211 227 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:227
	or_b32 r156, r35, r4
	.loc	2 211 67                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:67
	shl_b32 r1, 1, r156
	shl_b32 r8, 3, r0
	.loc	2 198 22 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:198:22
	saddc_co_u32 s9, s47, s3
	.loc	2 211 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:45
	ldg_b128 r160, s14, r1, 0x0
	shl_b32 r1, 10, r0
	sshl_b32 s19, 21, s4
	and_b32 r31, 0xfe000, r1
	and_b32 r7, r8, 56
	sshl_b32 s18, 24, s18
	or3_b32 r7, s19, r7, r31
	add_u32 r7, r7, s18
	.loc	2 215 356                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:356
	mad_i32 r10, r7, 2, s40
	add_co_u32 r12, 0x80000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 211 168                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:168
	or_b32 r33, 0x20000, r35
	.loc	2 215 339                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:339
	ldg_b128 r18, r10, 0x0
	ldg_b128 r22, r12, 0x0
	.loc	2 215 356 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:356
	add_co_u32 r12, 0x100000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 211 227 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:227
	or_b32 r158, r33, r4
	.loc	2 215 356                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:356
	add_co_u32 r10, 0x180000, r10
	.loc	2 211 67                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:67
	shl_b32 r3, 1, r158
	.loc	2 211 227 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:227
	or_b32 r5, 0x20020, r156
	or_b32 r4, r156, 32
	.loc	2 211 67                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:67
	shl_b32 r6, 1, r5
	.loc	2 211 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:45
	ldg_b128 r164, s14, r3, 0x0
	.loc	2 211 67                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:67
	shl_b32 r3, 1, r4
	.loc	2 215 356 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:356
	addc_co_u32 r11, r11, 0
	.loc	2 211 45                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:211:45
	ldg_b128 r180, s14, r6, 0x0
	ldg_b128 r176, s14, r3, 0x0
	.loc	2 215 339                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:339
	ldg_b128 r36, r12, 0x0
	ldg_b128 r40, r10, 0x0
	and_b32 r6, r8, 16
	and_b32 r17, r8, 32
	.loc	2 196 20                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:196:20
	ldu_b32 s2, s0, 0x0
	.loc	2 197 19                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:197:19
	ldu_b32 s1, s6, 0x0
	.loc	2 198 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:198:22
	ldu_b32 s0, s8, 0x0
	mul_u24 r3, r0, 9
	add_u32 r9, r17, r0
	add_u32 r6, r6, r0
	and_b32 r7, 0x1fc0, r8
	and_b32 r3, r3, 8
	and_b32 r9, r9, 32
	and_b32 r6, r6, 16
	.loc	2 215 47                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:47
	add_u32 r27, 0x800, r7
	add_u32 r28, 0x1000, r7
	add_u32 r29, 0x1800, r7
	.loc	2 215 83 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:83
	or_b32 r10, r9, r3
	.loc	2 215 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:27
	or_b32 r3, r6, r3
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 215 253                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:253
	or3_b32 r11, r10, r7, r6
	.loc	2 215 27                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:27
	or3_b32 r12, r10, r27, r6
	or3_b32 r6, r10, r28, r6
	mov_b32 r10, s3
	or3_b32 r3, r3, r29, r9
	shl_add_u32 r11, 1, r11, r10
	shl_add_u32 r12, 1, r12, r10
	shl_add_u32 r6, 1, r6, r10
	shl_add_u32 r3, 1, r3, r10
	.loc	2 215 339                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:215:339
	arrive gvmcnt(6)
	sts_b128 r11, 0x0, r18
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r22
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r36
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r40
.Ltmp612:
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
.Ltmp613:
	.loc	2 218 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:3
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
	.loc	2 218 8 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:8
	sadd_co_u32 s18, 0x80080, s40
	or_b32 r18, r24, r16
	.loc	2 218 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:3
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
	.loc	2 218 8                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:8
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
	.loc	2 218 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:3
	addc_co_u32 r34, r34, r37
	shl_or_b32 r36, 1, r35, r36
	.loc	2 0 0                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:0
	shl_b64 r136, 0, 0
	shl_add_u32 r6, 1, r6, 0
	sadd_co_u32 s14, 0x100, s14
	or_b32 r12, r20, r22
	or_b32 r14, r20, r25
	or_b32 r16, r20, r41
	or3_b32 r20, r24, r22, r42
	or3_b32 r22, r24, r25, r42
	or3_b32 r24, r24, r41, r42
	.loc	2 218 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:3
	add_co_u32 r35, s3, r36
	mov_b32 r36, s5
	smov_b64 s20, 0
	shl_add_u32 r8, 1, r8, 0
	add_u32 r26, 0x6000, r40
	add_u32 r30, 0x4000, r40
	.loc	2 0 0                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:0
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
	.loc	2 218 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:3
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
	.loc	2 218 31                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:31
	sadd_co_u32 s22, 0x100, s22
	saddc_co_u32 s23, s23, 0
	sadd_co_u32 s20, 0x80, s20
	saddc_co_u32 s21, s21, 0
	scmp_eq_u64 0x4000, s22
	.loc	2 218 3                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:218:3
	snop 0
	bra_smsks LBB3_12
LBB3_2:                                 ; %for.body127
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 219 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:219:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %for.cond130.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp614:
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
.Ltmp615:
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 226 71 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:71
	add_co_u32 r192, r156, s20
	mov_b32 r37, s21
	addc_co_u32 r193, r157, r37
	.loc	2 226 49 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:49
	add_co_u32 r194, r35, s22
	mov_b32 r38, s23
	addc_co_u32 r195, r36, r38
	.loc	2 226 71                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:71
	add_co_u32 r196, r158, s20
	addc_co_u32 r197, r39, r37
	.loc	2 226 49                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:49
	add_co_u32 r198, r33, s22
	.loc	2 226 251                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:251
	shl_b64 r192, 1, r192
	.loc	2 226 49                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:49
	addc_co_u32 r199, r34, r38
	.loc	2 226 71                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:71
	or_b32 r37, r192, 64
	add_co_u32 r192, s3, r37
	mov_b32 r37, s5
	.loc	2 226 49                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:49
	ldg_b128 r200, r194, 0x0
	.loc	2 226 251                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:251
	shl_b64 r194, 1, r196
	.loc	2 226 71                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:71
	addc_co_u32 r193, r37, r193
	or_b32 r38, r194, 64
	add_co_u32 r196, s3, r38
	addc_co_u32 r197, r37, r195
	.loc	2 230 41 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	add_i32 r37, 0x4000, r9
	add_i32 r38, 0x4000, r10
	.loc	2 226 49                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:49
	ldg_b128 r204, r198, 0x0
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r208, r37, 0x0
	lds_b128 r212, r38, 0x0
	add_i32 r37, 0x4000, r11
	.loc	2 226 49                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:226:49
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r196, 0x0
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r216, r37, 0x0
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r208, r160, r184
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	add_i32 r37, 0x4000, r12
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	mma_16x16x16f16 r132, r208, r164, r132
	mma_16x16x16f16 r184, r210, r162, r184
	mma_16x16x16f16 r132, r210, r166, r132
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r13
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r160, r172
	mma_16x16x16f16 r128, r212, r164, r128
	mma_16x16x16f16 r172, r214, r162, r172
	mma_16x16x16f16 r128, r214, r166, r128
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r14
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r216, r160, r168
	mma_16x16x16f16 r124, r216, r164, r124
	mma_16x16x16f16 r168, r218, r162, r168
	mma_16x16x16f16 r124, r218, r166, r124
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r15
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r208, r160, r152
	mma_16x16x16f16 r120, r208, r164, r120
	mma_16x16x16f16 r152, r210, r162, r152
	mma_16x16x16f16 r120, r210, r166, r120
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r16
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r212, r160, r148
	mma_16x16x16f16 r116, r212, r164, r116
	mma_16x16x16f16 r148, r214, r162, r148
	mma_16x16x16f16 r116, r214, r166, r116
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r17
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r216, r160, r144
	mma_16x16x16f16 r112, r216, r164, r112
	mma_16x16x16f16 r144, r218, r162, r144
	mma_16x16x16f16 r112, r218, r166, r112
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r18
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r160, r140
	mma_16x16x16f16 r108, r208, r164, r108
	mma_16x16x16f16 r140, r210, r162, r140
	mma_16x16x16f16 r108, r210, r166, r108
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r19
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r160, r136
	mma_16x16x16f16 r104, r212, r164, r104
	mma_16x16x16f16 r136, r214, r162, r136
	mma_16x16x16f16 r104, r214, r166, r104
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r20
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r216, r176, r184
	mma_16x16x16f16 r132, r216, r180, r132
	mma_16x16x16f16 r184, r218, r178, r184
	mma_16x16x16f16 r132, r218, r182, r132
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r21
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r208, r176, r172
	mma_16x16x16f16 r128, r208, r180, r128
	mma_16x16x16f16 r172, r210, r178, r172
	mma_16x16x16f16 r128, r210, r182, r128
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r22
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r212, r176, r168
	mma_16x16x16f16 r124, r212, r180, r124
	mma_16x16x16f16 r168, r214, r178, r168
	mma_16x16x16f16 r124, r214, r182, r124
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r23
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r216, r176, r152
	mma_16x16x16f16 r120, r216, r180, r120
	mma_16x16x16f16 r152, r218, r178, r152
	mma_16x16x16f16 r120, r218, r182, r120
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r24
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r208, r176, r148
	mma_16x16x16f16 r116, r208, r180, r116
	mma_16x16x16f16 r148, r210, r178, r148
	mma_16x16x16f16 r116, r210, r182, r116
	.loc	2 230 41                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:230:41
	lds_b128 r208, r37, 0x0
	.loc	2 236 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:236:58
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
.Ltmp616:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp617:
	.loc	2 245 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:245:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %for.cond347.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp618:
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
.Ltmp619:
LBB3_6:                                 ; %if.end431
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 250 584 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:250:584
	or_b32 r37, r7, s20
	.loc	2 250 462 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:250:462
	mad_i32 r208, r37, 2, s18
.Ltmp620:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	mov_b32 r38, s23
	add_co_u32 r37, r190, s22
.Ltmp621:
	.loc	2 21 41                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:21:41
	ldg_b128 r208, r208, 0x0
.Ltmp622:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	addc_co_u32 r159, r191, r38
	add_co_u32 r212, 0x100000, r37
	addc_co_u32 r213, r159, 0
	add_co_u32 r214, 0x180000, r37
	rfl_b32 s7, r26
	smov_b32 s6, md
	addc_co_u32 r215, r159, 0
.Ltmp623:
	.loc	2 21 41                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:21:41
	arrive gvmcnt(0)
	sts_b128 r6, 0x0, r208
.Ltmp624:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r212, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r214, 0x0 bsm
.Ltmp625:
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r160, r100
	mma_16x16x16f16 r68, r208, r164, r68
	mma_16x16x16f16 r100, r210, r162, r100
	mma_16x16x16f16 r68, r210, r166, r68
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r208, r12, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r160, r96
	mma_16x16x16f16 r64, r212, r164, r64
	mma_16x16x16f16 r96, r214, r162, r96
	mma_16x16x16f16 r64, r214, r166, r64
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r212, r13, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r160, r92
	mma_16x16x16f16 r60, r216, r164, r60
	mma_16x16x16f16 r92, r218, r162, r92
	mma_16x16x16f16 r60, r218, r166, r60
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r216, r14, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r160, r88
	mma_16x16x16f16 r56, r208, r164, r56
	mma_16x16x16f16 r88, r210, r162, r88
	mma_16x16x16f16 r56, r210, r166, r56
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r208, r15, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r160, r84
	mma_16x16x16f16 r52, r212, r164, r52
	mma_16x16x16f16 r84, r214, r162, r84
	mma_16x16x16f16 r52, r214, r166, r52
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r212, r16, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r160, r80
	mma_16x16x16f16 r48, r216, r164, r48
	mma_16x16x16f16 r80, r218, r162, r80
	mma_16x16x16f16 r48, r218, r166, r48
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r216, r17, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r160, r76
	mma_16x16x16f16 r44, r208, r164, r44
	mma_16x16x16f16 r76, r210, r162, r76
	mma_16x16x16f16 r44, r210, r166, r44
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r208, r18, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r160, r72
	mma_16x16x16f16 r40, r212, r164, r40
	mma_16x16x16f16 r72, r214, r162, r72
	mma_16x16x16f16 r40, r214, r166, r40
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r212, r19, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r216, r176, r100
	mma_16x16x16f16 r68, r216, r180, r68
	mma_16x16x16f16 r100, r218, r178, r100
	mma_16x16x16f16 r68, r218, r182, r68
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r216, r20, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r208, r176, r96
	mma_16x16x16f16 r64, r208, r180, r64
	mma_16x16x16f16 r96, r210, r178, r96
	mma_16x16x16f16 r64, r210, r182, r64
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r208, r21, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r212, r176, r92
	mma_16x16x16f16 r60, r212, r180, r60
	mma_16x16x16f16 r92, r214, r178, r92
	mma_16x16x16f16 r60, r214, r182, r60
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r212, r22, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r216, r176, r88
	mma_16x16x16f16 r56, r216, r180, r56
	mma_16x16x16f16 r88, r218, r178, r88
	mma_16x16x16f16 r56, r218, r182, r56
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r216, r23, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r176, r84
	mma_16x16x16f16 r52, r208, r180, r52
	mma_16x16x16f16 r84, r210, r178, r84
	mma_16x16x16f16 r52, r210, r182, r52
	.loc	2 256 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:256:43
	lds_b128 r208, r24, 0x0
	.loc	2 262 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:262:58
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
.Ltmp626:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp627:
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
.Ltmp628:
	.loc	2 274 16                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:274:16
	mov_b32 r210, 0x3f00
.Ltmp629:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r28
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x300080, r37
	addc_co_u32 r209, r38, 0
.Ltmp630:
	.loc	2 274 16                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:274:16
	mov_b32 r211, 0
.Ltmp631:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r29
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x380080, r37
	addc_co_u32 r209, r38, 0
.Ltmp632:
	.loc	2 274 16                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:274:16
	cmp_lg_u64 s24, s22, r210
.Ltmp633:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
.Ltmp634:
	.loc	2 274 16                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:274:16
	scmp_eq_u64 0x3f00, s22
.Ltmp635:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldg_b128 r0, r208, 0x0 bsm
.Ltmp636:
	.loc	3 268 5 is_stmt 0               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s6
.Ltmp637:
	.loc	2 274 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:274:9
	bra_smsks LBB3_8
; %bb.7:                                ; %for.body769.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 277 251                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:251
	or_b32 r159, r156, s20
	.loc	2 277 71 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:71
	mad_i32 r160, r159, 2, s14
	.loc	2 277 251                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:251
	or_b32 r159, r158, s20
	.loc	2 277 71                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:71
	mad_i32 r164, r159, 2, s14
	.loc	2 277 251                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:251
	or_b32 r159, r4, s20
	.loc	2 277 71                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:71
	mad_i32 r176, r159, 2, s14
	.loc	2 277 251                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:251
	or_b32 r159, r5, s20
	.loc	2 277 71                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:71
	mad_i32 r180, r159, 2, s14
	.loc	2 277 49                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:277:49
	ldg_b128 r160, r160, 0x0
	ldg_b128 r164, r164, 0x0
	ldg_b128 r176, r176, 0x0
	ldg_b128 r180, r180, 0x0
LBB3_8:                                 ; %if.end803
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 282 43 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	add_i32 r159, 0x4000, r9
	add_i32 r208, 0x4000, r10
	snop 0
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r11
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r12
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r13
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r210, r200, r184
	mma_16x16x16f16 r132, r210, r204, r132
	mma_16x16x16f16 r184, r212, r202, r184
	mma_16x16x16f16 r132, r212, r206, r132
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r210, r208, 0x0
	add_i32 r208, 0x4000, r14
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r214, r200, r172
	mma_16x16x16f16 r128, r214, r204, r128
	mma_16x16x16f16 r172, r216, r202, r172
	mma_16x16x16f16 r128, r216, r206, r128
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r15
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r218, r200, r168
	mma_16x16x16f16 r124, r218, r204, r124
	mma_16x16x16f16 r168, r220, r202, r168
	mma_16x16x16f16 r124, r220, r206, r124
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r16
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r210, r200, r152
	mma_16x16x16f16 r120, r210, r204, r120
	mma_16x16x16f16 r152, r212, r202, r152
	mma_16x16x16f16 r120, r212, r206, r120
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r17
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r214, r200, r148
	mma_16x16x16f16 r116, r214, r204, r116
	mma_16x16x16f16 r148, r216, r202, r148
	mma_16x16x16f16 r116, r216, r206, r116
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r20
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r218, r200, r144
	mma_16x16x16f16 r112, r218, r204, r112
	mma_16x16x16f16 r144, r220, r202, r144
	mma_16x16x16f16 r112, r220, r206, r112
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r18
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r210, r200, r140
	mma_16x16x16f16 r108, r210, r204, r108
	mma_16x16x16f16 r140, r212, r202, r140
	mma_16x16x16f16 r108, r212, r206, r108
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r19
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r214, r200, r136
	mma_16x16x16f16 r104, r214, r204, r104
	mma_16x16x16f16 r136, r216, r202, r136
	mma_16x16x16f16 r104, r216, r206, r104
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r21
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r218, r192, r184
	mma_16x16x16f16 r132, r218, r196, r132
	mma_16x16x16f16 r184, r220, r194, r184
	mma_16x16x16f16 r132, r220, r198, r132
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r22
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r210, r192, r172
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r172, r212, r194, r172
	mma_16x16x16f16 r128, r212, r198, r128
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r23
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r214, r192, r168
	mma_16x16x16f16 r124, r214, r196, r124
	mma_16x16x16f16 r168, r216, r194, r168
	mma_16x16x16f16 r124, r216, r198, r124
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r24
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r218, r192, r152
	mma_16x16x16f16 r120, r218, r196, r120
	mma_16x16x16f16 r152, r220, r194, r152
	mma_16x16x16f16 r120, r220, r198, r120
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r218, r159, 0x0
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r210, r192, r148
	mma_16x16x16f16 r116, r210, r196, r116
	.loc	2 282 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:282:43
	lds_b128 r208, r208, 0x0
	.loc	2 288 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:288:58
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
.Ltmp638:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp639:
	.loc	2 297 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:297:9
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond901.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	add_co_u32 r208, 0x180100, r37
	addc_co_u32 r209, r38, 0
	add_co_u32 r210, 0x100100, r37
	addc_co_u32 r211, r38, 0
	add_co_u32 r212, 0x80100, r37
	addc_co_u32 r213, r38, 0
.Ltmp640:
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
.Ltmp641:
LBB3_10:                                ; %if.end985
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 318 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:318:9
	sandn_b64 cmsk, xmsk, s24
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r200, r100
	mma_16x16x16f16 r68, r208, r204, r68
	mma_16x16x16f16 r100, r210, r202, r100
	mma_16x16x16f16 r68, r210, r206, r68
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r208, r12, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r200, r96
	mma_16x16x16f16 r64, r212, r204, r64
	mma_16x16x16f16 r96, r214, r202, r96
	mma_16x16x16f16 r64, r214, r206, r64
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r212, r13, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r200, r92
	mma_16x16x16f16 r60, r216, r204, r60
	mma_16x16x16f16 r92, r218, r202, r92
	mma_16x16x16f16 r60, r218, r206, r60
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r216, r14, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r200, r88
	mma_16x16x16f16 r56, r208, r204, r56
	mma_16x16x16f16 r88, r210, r202, r88
	mma_16x16x16f16 r56, r210, r206, r56
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r208, r15, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r200, r84
	mma_16x16x16f16 r52, r212, r204, r52
	mma_16x16x16f16 r84, r214, r202, r84
	mma_16x16x16f16 r52, r214, r206, r52
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r212, r16, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r200, r80
	mma_16x16x16f16 r48, r216, r204, r48
	mma_16x16x16f16 r80, r218, r202, r80
	mma_16x16x16f16 r48, r218, r206, r48
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r216, r17, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r200, r76
	mma_16x16x16f16 r44, r208, r204, r44
	mma_16x16x16f16 r76, r210, r202, r76
	mma_16x16x16f16 r44, r210, r206, r44
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r208, r18, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r200, r72
	mma_16x16x16f16 r40, r212, r204, r40
	mma_16x16x16f16 r72, r214, r202, r72
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r200, r19, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	mma_16x16x16f16 r40, r214, r206, r40
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r204, r20, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
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
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r208, r21, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r200, r192, r92
	mma_16x16x16f16 r60, r200, r196, r60
	mma_16x16x16f16 r92, r202, r194, r92
	mma_16x16x16f16 r60, r202, r198, r60
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r200, r22, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r204, r192, r88
	mma_16x16x16f16 r56, r204, r196, r56
	mma_16x16x16f16 r88, r206, r194, r88
	mma_16x16x16f16 r56, r206, r198, r56
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r204, r23, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r192, r84
	mma_16x16x16f16 r52, r208, r196, r52
	mma_16x16x16f16 r84, r210, r194, r84
	mma_16x16x16f16 r52, r210, r198, r52
	.loc	2 304 43                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:304:43
	lds_b128 r208, r24, 0x0
	.loc	2 310 58                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:310:58
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
	.loc	2 318 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:318:9
	bra_cmsks LBB3_1
; %bb.11:                               ; %if.then1081
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp642:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp643:
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
	.loc	2 324 92 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:324:92
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
	.loc	2 324 9 is_stmt 0               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:324:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then1104
	.loc	2 0 9                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sub_u32 r4, r5, s0
	cmp_gt_i32 s20, 0x8e0, r4
	.loc	2 326 15 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:326:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r4, 0
	.loc	2 326 163 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:326:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1133
	.loc	2 0 163                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r4, s13
	addc_co_u32 r9, r4, r9
	.loc	2 327 19 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:327:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB3_15:                                ; %Flow558
	.loc	2 0 19 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_16:                                ; %for.inc1157
	sor_b64 xmsk, xmsk, s6
	.loc	2 324 63 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:324:63
	or_b32 r2, r2, 16
	.loc	2 324 92 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:324:92
	cmp_ge_i32 s6, r2, s2
	cmp_lt_i32 s2, r2, s2
	.loc	2 0 0                           ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 324 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:324:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then1104.1
	.loc	2 326 117 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:326:117
	add_u32 r2, r5, 16
	.loc	2 326 15 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:326:15
	cmp_ge_i32 s20, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x8e0, r2
	mov_b32 r2, 0
	.loc	2 326 163                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:326:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1133.1
	.loc	2 0 163                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 327 19 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:327:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow557
	.loc	2 0 19 is_stmt 0                ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:19
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
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1178
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(0)
	mul_f32 r1, r184, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r185, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r186, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r6, r187, r4
.Ltmp644:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp645:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp646:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp647:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp648:
LBB3_22:                                ; %if.end1233
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 22 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mov_b32 r1, 0
	shl_b64 r6, 1, r0
	add_co_u32 r6, s10, r6
	mov_b32 r1, s11
	addc_co_u32 r7, r1, r7
	.loc	2 352 254 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1178.1
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(1)
	mul_f32 r1, r172, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r173, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r174, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r10, r175, r4
.Ltmp649:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp650:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp651:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp652:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp653:
LBB3_24:                                ; %if.end1233.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 16
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 0
	stg_b64 r22, 0x0, r8 devc
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1178.2
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(2)
	mul_f32 r1, r168, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r169, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r170, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r8, r171, r4
.Ltmp654:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp655:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp656:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp657:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp658:
LBB3_26:                                ; %if.end1233.2
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 32
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r8, r1, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1178.3
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(3)
	mul_f32 r1, r152, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r153, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r154, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r12, r155, r4
.Ltmp659:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp660:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp661:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp662:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp663:
LBB3_28:                                ; %if.end1233.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 48
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r26, r1, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r26, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1178.4
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(4)
	mul_f32 r1, r148, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r149, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r150, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r12, r151, r4
.Ltmp664:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp665:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp666:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp667:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp668:
LBB3_30:                                ; %if.end1233.4
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 64
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r14, r1, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r14, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1178.5
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(5)
	mul_f32 r1, r144, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r145, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r146, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r12, r147, r4
.Ltmp669:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp670:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp671:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp672:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp673:
LBB3_32:                                ; %if.end1233.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, 0x50, r0
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r12, 0, 0
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 0
	stg_b64 r28, 0x0, r10 devc
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1178.6
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(6)
	mul_f32 r1, r140, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r141, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r142, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r10, r143, r4
.Ltmp674:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp675:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp676:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp677:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp678:
LBB3_34:                                ; %if.end1233.6
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, 0x60, r0
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r10, r1, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r10, 0x0, r12 devc
	shl_b64 r12, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1178.7
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(7)
	mul_f32 r1, r136, r4
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r137, r4
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r138, r4
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r16, r139, r4
.Ltmp679:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp680:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp681:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp682:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp683:
LBB3_36:                                ; %if.end1233.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, 0x70, r0
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r24, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 0
	stg_b64 r24, 0x0, r12 devc
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1178.8
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(8)
	mul_f32 r1, r132, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r133, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r134, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r12, r135, r2
.Ltmp684:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp685:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp686:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp687:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp688:
LBB3_38:                                ; %if.end1233.8
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 22 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	add_co_u32 r12, 0x10000, r6
	addc_co_u32 r13, r7, 0
	.loc	2 352 190 is_stmt 0             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:190
	add_u32 r0, 0x8000, r0
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 0
	stg_b64 r12, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1178.9
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(9)
	mul_f32 r1, r128, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r129, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r130, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r18, r131, r2
.Ltmp689:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp690:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp691:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp692:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp693:
LBB3_40:                                ; %if.end1233.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 16
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1178.10
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(10)
	mul_f32 r1, r124, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r125, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r126, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r16, r127, r2
.Ltmp694:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp695:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp696:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp697:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp698:
LBB3_42:                                ; %if.end1233.10
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 32
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r16, r1, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1178.11
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(11)
	mul_f32 r1, r120, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r121, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r122, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r20, r123, r2
.Ltmp699:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp700:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp701:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp702:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp703:
LBB3_44:                                ; %if.end1233.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 48
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r32, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 0
	stg_b64 r32, 0x0, r18 devc
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1178.12
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(12)
	mul_f32 r1, r116, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r117, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r118, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r18, r119, r2
.Ltmp704:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp705:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp706:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp707:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp708:
LBB3_46:                                ; %if.end1233.12
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, r0, 64
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r18, r1, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r18, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1178.13
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(13)
	mul_f32 r1, r112, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r113, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r114, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r34, r115, r2
.Ltmp709:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp710:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp711:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp712:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r34
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp713:
LBB3_48:                                ; %if.end1233.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, 0x50, r0
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r34, r1, 2, s10
	shl_b64 r36, 0, 0
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 0
	stg_b64 r34, 0x0, r20 devc
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1178.14
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(14)
	mul_f32 r1, r108, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r109, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r110, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r20, r111, r2
.Ltmp714:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp715:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp716:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp717:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp718:
LBB3_50:                                ; %if.end1233.14
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r1, 0x60, r0
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r20, r1, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r20, 0x0, r36 devc
	shl_b64 r36, 0, 0
	.loc	2 336 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:336:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1178.15
	.loc	2 341 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:341:22
	arrive gvmcnt(15)
	mul_f32 r1, r104, r2
	.loc	2 342 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:342:22
	mul_f32 r3, r105, r2
	.loc	2 343 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:343:22
	mul_f32 r5, r106, r2
	.loc	2 344 22                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:344:22
	mul_f32 r38, r107, r2
.Ltmp719:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp720:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp721:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp722:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r38
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp723:
LBB3_52:                                ; %if.end1233.15
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 352 211 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:211
	or_b32 r0, 0x70, r0
	.loc	2 352 22 is_stmt 0              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:22
	mad_i32 r0, r0, 2, s10
	.loc	2 352 254                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:352:254
	snop 1
	stg_b64 r0, 0x0, r36 devc
	.loc	2 356 9 is_stmt 1               ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1344.1.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	shl_b64 r36, 0, 0
	snop 1
	stg_b64 r6, 0x100, r36 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow556
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	shl_b64 r36, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1283
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	arrive gvmcnt(16)
	mul_f32 r36, r102, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r37, r103, r4
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r100, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r101, r4
.Ltmp724:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp725:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp726:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_lo, r36
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp727:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_hi, r37
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp728:
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r6, 0x100, r38 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r96, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r97, r4
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r6, r98, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r7, r99, r4
.Ltmp729:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp730:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp731:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp732:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp733:
LBB3_56:                                ; %if.end1344.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r22, 0x100, r36 devc
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1344.3.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r8, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_58:                                ; %Flow555
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1283.2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	arrive gvmcnt(17)
	mul_f32 r6, r94, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r7, r95, r4
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r92, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r93, r4
.Ltmp734:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp735:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp736:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp737:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp738:
	.loc	2 363 24 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	snop 0
	mul_f32 r7, r90, r4
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	stg_b64 r8, 0x100, r22 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r88, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r89, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r8, r91, r4
.Ltmp739:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp740:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp741:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp742:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp743:
LBB3_60:                                ; %if.end1344.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1344.5.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r14, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_62:                                ; %Flow554
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1283.4
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	arrive gvmcnt(18)
	mul_f32 r6, r86, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r7, r87, r4
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r84, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r85, r4
.Ltmp744:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp745:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp746:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp747:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp748:
	.loc	2 363 24 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	stg_b64 r14, 0x100, r8 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r80, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r81, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r8, r83, r4
.Ltmp749:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp750:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp751:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp752:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp753:
LBB3_64:                                ; %if.end1344.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1344.7.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_10
LBB3_66:                                ; %Flow553
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1283.6
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	arrive gvmcnt(19)
	mul_f32 r6, r78, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r7, r79, r4
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r76, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r77, r4
.Ltmp754:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp755:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp756:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp757:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp758:
	.loc	2 363 24 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	stg_b64 r10, 0x100, r8 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r72, r4
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r5, r73, r4
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r4, r75, r4
.Ltmp759:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp760:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp761:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp762:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp763:
LBB3_68:                                ; %if.end1344.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1344.9.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_70:                                ; %Flow551
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1283.8
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r4, r69, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r5, r70, r2
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r68, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r6, r71, r2
.Ltmp764:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp765:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp766:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp767:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp768:
	.loc	2 362 24 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	snop 0
	mul_f32 r5, r65, r2
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	stg_b64 r12, 0x100, r8 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r64, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r6, r66, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r7, r67, r2
.Ltmp769:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp770:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp771:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp772:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp773:
LBB3_72:                                ; %if.end1344.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1344.11.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow550
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1283.10
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r4, r61, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r5, r62, r2
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r60, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r6, r63, r2
.Ltmp774:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp775:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp776:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp777:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp778:
	.loc	2 362 24 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	stg_b64 r16, 0x100, r8 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r56, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r6, r58, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r7, r59, r2
.Ltmp779:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp780:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp781:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp782:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp783:
LBB3_76:                                ; %if.end1344.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r32, 0x100, r4 devc
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1344.13.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r18, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_18
LBB3_78:                                ; %Flow549
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1283.12
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r4, r53, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r5, r54, r2
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r52, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r6, r55, r2
.Ltmp784:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp785:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp786:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp787:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp788:
	.loc	2 362 24 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	stg_b64 r18, 0x100, r8 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r48, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r6, r50, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r7, r51, r2
.Ltmp789:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp790:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp791:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp792:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp793:
LBB3_80:                                ; %if.end1344.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r34, 0x100, r4 devc
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
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
	.loc	2 0 9 is_stmt 0                 ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 374 1                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:374:1
	snop 0
	endk
LBB3_83:                                ; %if.end1344.15.critedge
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r20, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_20
	.loc	2 356 9                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:356:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1283.14
	.loc	2 362 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	mul_f32 r4, r45, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r5, r46, r2
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r44, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r6, r47, r2
.Ltmp794:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp795:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp796:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp797:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp798:
	.loc	2 362 24 is_stmt 1              ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:362:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 372 262                       ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	stg_b64 r20, 0x100, r8 devc
	.loc	2 361 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:361:24
	mul_f32 r3, r40, r2
	.loc	2 363 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:363:24
	mul_f32 r6, r42, r2
	.loc	2 364 24                        ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:364:24
	mul_f32 r2, r43, r2
.Ltmp799:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp800:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp801:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp802:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp803:
	.loc	2 372 262 is_stmt 1             ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:372:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 374 1                         ; /tmp/v043_final_codegen/v043_final_case1_generated_device.cpp:374:1
	snop 0
	endk
.Ltmp804:
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
	.byte	1                               ; Abbrev [1] 0xb:0x497 DW_TAG_compile_unit
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
	.byte	2                               ; Abbrev [2] 0x60:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x66:0x1ba DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x77:0x3d DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	119                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x83:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	59                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x8f:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x9b:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	61                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa7:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xb4:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	126                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc8:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xdd:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp57                         ; DW_AT_low_pc
	.long	.Ltmp58-.Ltmp57                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	158                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xf1:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp57                         ; DW_AT_low_pc
	.long	.Ltmp58-.Ltmp57                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x106:0x72 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp58                         ; DW_AT_low_pc
	.long	.Ltmp150-.Ltmp58                ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	160                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x11a:0x25 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	59                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x126:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	46                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x132:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	50                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x13f:0x38 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	61                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x14b:0x13 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp90                         ; DW_AT_low_pc
	.long	.Ltmp91-.Ltmp90                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	8                               ; Abbrev [8] 0x15e:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	50                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x16a:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	46                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x178:0x3d DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	164                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x184:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	7                               ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x190:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	8                               ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x19c:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	9                               ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1a8:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	10                              ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1b5:0x35 DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1c1:0x28 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x1ce:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x1db:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1ea:0x35 DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	177                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1f6:0x28 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x203:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x210:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x220:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x226:0x6 DW_TAG_subprogram
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x22c:0x275 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string16                 ; DW_AT_name
	.byte	6                               ; Abbrev [6] 0x23d:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp612                        ; DW_AT_low_pc
	.long	.Ltmp613-.Ltmp612               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	217                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x251:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp612                        ; DW_AT_low_pc
	.long	.Ltmp613-.Ltmp612               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x266:0x29 DW_TAG_inlined_subroutine
	.long	544                             ; DW_AT_abstract_origin
	.quad	.Ltmp614                        ; DW_AT_low_pc
	.long	.Ltmp615-.Ltmp614               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	221                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x27a:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp614                        ; DW_AT_low_pc
	.long	.Ltmp615-.Ltmp614               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x28f:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp616                        ; DW_AT_low_pc
	.long	.Ltmp617-.Ltmp616               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	244                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x2a3:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp616                        ; DW_AT_low_pc
	.long	.Ltmp617-.Ltmp616               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x2b8:0x29 DW_TAG_inlined_subroutine
	.long	544                             ; DW_AT_abstract_origin
	.quad	.Ltmp618                        ; DW_AT_low_pc
	.long	.Ltmp619-.Ltmp618               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	247                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x2cc:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp618                        ; DW_AT_low_pc
	.long	.Ltmp619-.Ltmp618               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x2e1:0x19 DW_TAG_inlined_subroutine
	.long	544                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	252                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2ed:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2fa:0xc DW_TAG_inlined_subroutine
	.long	550                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	250                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x306:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp626                        ; DW_AT_low_pc
	.long	.Ltmp627-.Ltmp626               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	270                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x31b:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp626                        ; DW_AT_low_pc
	.long	.Ltmp627-.Ltmp626               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x330:0x1a DW_TAG_inlined_subroutine
	.long	544                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	272                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x33d:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x34a:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp638                        ; DW_AT_low_pc
	.long	.Ltmp639-.Ltmp638               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	296                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x35f:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp638                        ; DW_AT_low_pc
	.long	.Ltmp639-.Ltmp638               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x374:0x2a DW_TAG_inlined_subroutine
	.long	544                             ; DW_AT_abstract_origin
	.quad	.Ltmp640                        ; DW_AT_low_pc
	.long	.Ltmp641-.Ltmp640               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	299                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x389:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp640                        ; DW_AT_low_pc
	.long	.Ltmp641-.Ltmp640               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x39e:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp642                        ; DW_AT_low_pc
	.long	.Ltmp643-.Ltmp642               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	319                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3b3:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp642                        ; DW_AT_low_pc
	.long	.Ltmp643-.Ltmp642               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x3c8:0x36 DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	345                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x3d5:0x28 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x3e2:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x3ef:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x3fe:0x36 DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	346                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x40b:0x28 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x418:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x425:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x434:0x36 DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	365                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x441:0x28 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x44e:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x45b:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x46a:0x36 DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges41                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	366                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x477:0x28 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges42                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x484:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges43                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x491:0xd DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges44                ; DW_AT_ranges
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
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges35:
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges36:
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges37:
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges38:
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges39:
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges40:
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges41:
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges42:
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges43:
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges44:
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v043_final_codegen/v043_final_case1_generated_device.cpp" ; string offset=32
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
	.asciz	"moe_silu_fast_rcp_float4x16"   ; string offset=238
.Linfo_string9:
	.asciz	"exp2f"                         ; string offset=266
.Linfo_string10:
	.asciz	"__float2half_rn"               ; string offset=272
.Linfo_string11:
	.asciz	"__floats2half2_rn"             ; string offset=288
.Linfo_string12:
	.asciz	"__float22half2_rn"             ; string offset=306
.Linfo_string13:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=324
.Linfo_string14:
	.asciz	"moe_memcpy_sync_16"            ; string offset=351
.Linfo_string15:
	.asciz	"kernel_kernel"                 ; string offset=370
.Linfo_string16:
	.asciz	"kernel_kernel_1"               ; string offset=384
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
