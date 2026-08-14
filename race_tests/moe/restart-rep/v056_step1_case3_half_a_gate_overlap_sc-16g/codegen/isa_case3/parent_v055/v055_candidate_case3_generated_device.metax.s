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
	.file	2 "/tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3" "v055_candidate_case3_generated_device.cpp"
	.loc	2 128 0                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:128:0
; %bb.0:                                ; %entry
	ldu_b64 s6, s0, 0x30
	ldu_b128 s12, s0, 0x20
	ldu_b256 s16, s0, 0x0
.Ltmp4:
	.loc	2 136 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:136:25
	scmp_gt_u32 s5, 31
	.loc	2 136 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:136:7
	snop 0
	bra_smskz LBB2_2
; %bb.1:                                ; %if.else
	.loc	2 140 49 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:140:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 140 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:140:75
	sand_b32 s1, s4, 1
	.loc	2 140 54                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:140:54
	sor_b32 s10, s0, s1
	.loc	2 141 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:141:48
	sshl_b32 s0, 3, s5
	sand_b32 s0, s0, 8
	.loc	2 141 74 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:141:74
	sshr_b32 s1, 1, s4
	.loc	2 141 53                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:141:53
	sadd_co_i32 s0, s0, s1
	.loc	2 136 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:136:7
	bra_xmskz LBB2_3
	bra LBB2_4
LBB2_2:
                                        ; implicit-def: $streg_32bit_0
                                        ; implicit-def: $streg_32bit_10
LBB2_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	smov_b32 s10, s5
	smov_b32 s0, s4
LBB2_4:                                 ; %if.end
	mov_b32 r1, 0x60
	cmp_lt_u32 s4, s10, r1
	scmp_lt_u32 0x5f, s10
	smov_b32 s24, 0
	.loc	2 146 18 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:146:18
	bra_smsks LBB2_6
; %bb.5:                                ; %if.then25
	.loc	2 0 18 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:18
	smov_b32 s11, 0
	sshl_b64 s2, 2, s10
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	.loc	2 147 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:147:15
	ldu_b32 s24, s2, 0x0
LBB2_6:                                 ; %if.end28
	.loc	2 152 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:152:20
	arrive slcnt(0)
	sashr_i32 s25, 31, s24
	sshl_b64 s2, 2, s24
	sadd_co_u32 s8, s22, s2
	saddc_co_u32 s9, s23, s3
	.loc	2 153 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:153:22
	sadd_co_u32 s2, s20, s2
	saddc_co_u32 s3, s21, s3
	.loc	2 152 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:152:20
	ldu_b32 s1, s8, 0x0
	.loc	2 153 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:153:22
	ldu_b32 s2, s2, 0x0
	scmp_gt_u32 s0, 15
	and_b32 r1, 0x3ff, r0
	cmp_lt_u32 s8, s0, 16
	smul_i32 s3, 0xe00000, s24
	smul_i32 s11, 0xe0000, s0
	cmp_lt_u32 s18, r1, 64
	cmp_gt_u32 s20, r1, 63
	cmp_gt_u32 s22, 0x80, r1
	scsel_b64 s26, -1, 0
	sadd_co_i32 s3, s3, s11
	bfe_u32 r20, r0, 3, 3
	and_b32 r0, r0, 7
	xor_b32 r2, r20, r0
	scmp_ne_u64 s26, 0
	shl_b32 r52, 4, r2
	shl_b32 r21, 4, r0
	bra_smsks LBB2_72
; %bb.7:                                ; %for.body55.us.preheader
.Ltmp5:
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	mul_u24 r4, 0x3800, r20
	.loc	2 97 45                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:97:45
	shl_or_b32 r0, 7, r20, r21
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	mul_hi_u24 r5, 0x3800, r20
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r2, r4, r52
	shl_b64 r6, 0, s16
	mov_b32 r3, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_9
; %bb.8:                                ; %if.else.i1166.us
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r3, s11
	sor_b64 s26, s26, s30
LBB2_9:                                 ; %Flow836
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_11
; %bb.10:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	add_u32 r0, r3, r0
	add_co_u32 r2, r6, r2
	addc_co_u32 r3, r7, r5
.Ltmp6:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "maca_async.h"
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r0
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r2, 0x0 bsm
	smov_b32 md, s11
.Ltmp7:
LBB2_11:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp8:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r4
	addc_co_u32 r2, r5, 0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r3, r20, 8
	.loc	2 98 46                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r4, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_13
; %bb.12:                               ; %if.else.i.us
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_13:                                ; %Flow835
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_15
; %bb.14:                               ; %for.inc70.us.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r3, 7, r3, r21
	add_u32 r3, r5, r3
	add_co_u32 r4, r6, r4
	addc_co_u32 r5, r7, r2
.Ltmp9:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r3
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s11
.Ltmp10:
LBB2_15:                                ; %for.inc70.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp11:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r20, 16
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_17
; %bb.16:                               ; %if.else.i1166.us.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_17:                                ; %Flow834
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_19
; %bb.18:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.1.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp12:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp13:
LBB2_19:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp14:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r20, 24
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_21
; %bb.20:                               ; %if.else.i.us.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_21:                                ; %Flow833
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_23
; %bb.22:                               ; %for.inc70.us.1.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp15:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp16:
LBB2_23:                                ; %for.inc70.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp17:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r20, 32
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_25
; %bb.24:                               ; %if.else.i1166.us.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_25:                                ; %Flow832
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_27
; %bb.26:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.2.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp18:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp19:
LBB2_27:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp20:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r20, 40
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_29
; %bb.28:                               ; %if.else.i.us.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_29:                                ; %Flow831
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_31
; %bb.30:                               ; %for.inc70.us.2.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp21:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp22:
LBB2_31:                                ; %for.inc70.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp23:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r20, 48
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_33
; %bb.32:                               ; %if.else.i1166.us.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_33:                                ; %Flow830
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_35
; %bb.34:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.3.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp24:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp25:
LBB2_35:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp26:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r20, 56
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_37
; %bb.36:                               ; %if.else.i.us.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_37:                                ; %Flow829
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_39
; %bb.38:                               ; %for.inc70.us.3.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp27:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp28:
LBB2_39:                                ; %for.inc70.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp29:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r20, 64
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_41
; %bb.40:                               ; %if.else.i1166.us.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_41:                                ; %Flow828
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.4.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp30:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp31:
LBB2_43:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp32:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x48, r20
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_45
; %bb.44:                               ; %if.else.i.us.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_45:                                ; %Flow827
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_47
; %bb.46:                               ; %for.inc70.us.4.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp33:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp34:
LBB2_47:                                ; %for.inc70.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp35:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x50, r20
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.else.i1166.us.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_49:                                ; %Flow826
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_51
; %bb.50:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.5.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp36:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp37:
LBB2_51:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp38:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x58, r20
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_53
; %bb.52:                               ; %if.else.i.us.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_53:                                ; %Flow825
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_55
; %bb.54:                               ; %for.inc70.us.5.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp39:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp40:
LBB2_55:                                ; %for.inc70.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp41:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x60, r20
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_57
; %bb.56:                               ; %if.else.i1166.us.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_57:                                ; %Flow824
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_59
; %bb.58:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.6.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp42:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp43:
LBB2_59:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp44:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x68, r20
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_61
; %bb.60:                               ; %if.else.i.us.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_61:                                ; %Flow823
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_63
; %bb.62:                               ; %for.inc70.us.6.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp45:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp46:
LBB2_63:                                ; %for.inc70.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp47:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x70, r20
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r52
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_65
; %bb.64:                               ; %if.else.i1166.us.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s11
	sor_b64 s26, s26, s30
LBB2_65:                                ; %Flow822
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_67
; %bb.66:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.7.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r21
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp48:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s11
.Ltmp49:
LBB2_67:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1178.us.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
.Ltmp50:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, r0, r52
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:95:36
	or_b32 r3, 0x78, r20
	.loc	2 98 46                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:98:46
	addc_co_u32 r2, r2, 0
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_69
; %bb.68:                               ; %if.else.i.us.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s11, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s11
	sor_b64 s26, s26, s30
LBB2_69:                                ; %Flow820
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_71
; %bb.70:                               ; %for.cond74.preheader.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	shl_or_b32 r3, 7, r3, r21
	mad_i32 r6, s3, 2, r6
	add_u32 r3, r4, r3
	add_co_u32 r4, r6, r0
	addc_co_u32 r5, r7, r2
.Ltmp51:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r3
	smov_b32 s11, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s11
.Ltmp52:
LBB2_71:                                ; %Flow821
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
LBB2_72:                                ; %for.cond74.preheader
	smul_i32 s11, 0xe0000, s10
	shr_b32 r0, 6, r1
	smov_b32 s24, 0x38000
	mov_b32 r2, s11
	.loc	2 180 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:180:41
	shl_b64 r202, 0, 0
	mad_u24 r56, r0, s24, r2
	and_b32 r0, r1, 15
	shr_b32 r2, 1, r1
	mov_b32 r5, 0
	mul_u24 r3, 0x1c00, r0
	and_b32 r4, r2, 24
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r200, 0, r202
	shl_b64 r198, 0, r202
	shl_b64 r196, 0, r202
	shl_b64 r186, 0, r202
	shl_b64 r184, 0, r202
	shl_b64 r182, 0, r202
	shl_b64 r180, 0, r202
	bra_cmsks LBB2_74
; %bb.73:                               ; %for.body78.us.preheader
	.loc	2 0 41 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:41
	or_b32 r3, r4, r3
	add_u32 r4, r3, r56
	.loc	2 176 35 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:35
	shl_b64 r6, 1, r4
	add_co_u32 r6, s12, r6
	mov_b32 r3, s13
	addc_co_u32 r7, r3, r7
	add_co_u32 r8, 0x38000, r6
	smov_b64 s24, 0x38000
	.loc	2 176 315 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:315
	or_b32 r5, r4, 32
	.loc	2 176 35                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:35
	addc_co_u32 r9, r7, 0
	.loc	2 176 17                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:17
	ldg_b128 r180, r6, 0x0
	.loc	2 176 35                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:35
	mad_u32 r6, r5, 2, s12
	.loc	2 176 315                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:315
	mad_u32 r4, r4, 2, s24
	.loc	2 176 35                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:35
	add_co_u32 r4, s12, r4
	addc_co_u32 r5, r3, r5
	.loc	2 176 17                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:176:17
	ldg_b128 r184, r8, 0x0
	ldg_b128 r196, r6, 0x0
	ldg_b128 r200, r4, 0x40
LBB2_74:                                ; %for.cond139.preheader
	.loc	2 0 17                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:17
	mul_u24 r53, 0x3800, r20
	.loc	2 182 3 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:182:3
	or_b32 r54, r53, r52
	mul_hi_u24 r55, 0x3800, r20
	mad_i32 r204, s3, 2, r54
	shr_b32 r4, 5, r1
	add_shl_u32 r4, r4, r2, 4
	shr_b32 r5, 4, r1
	and_b32 r57, r1, 15
	add_co_u32 r52, s14, r204
	mov_b32 r53, s15
	addc_co_u32 r53, r53, r205
	shl_b32 r3, 6, r1
	shl_b32 r6, 3, r1
	mul_hi_u24 r59, 0x3800, r57
	mul_u24 r57, 0x3800, r57
	and_b32 r4, r4, 16
	add_shl_u32 r5, r5, r1, 3
	and_b32 r11, 0x3c0, r3
	and_b32 r12, r6, 32
	and_or_b32 r58, r1, 48, r57
	and_or_b32 r19, r5, 8, r4
	add_co_u32 r54, s16, r204
	mov_b32 r55, s17
	shl_or_b32 r50, 7, r20, r21
	or_b32 r13, r19, r11
	addc_co_u32 r55, r55, r205
	mad_u32 r58, r56, 2, r58
	or_b32 r14, 0x400, r11
	or_b32 r15, r19, r12
	or_b32 r16, 0x800, r11
	or_b32 r17, 0xc00, r11
	or_b32 r18, 0x1000, r11
	or_b32 r22, 0x1400, r11
	or_b32 r23, 0x1800, r11
	or_b32 r24, 0x1c00, r11
	xor_b32 r25, r12, 32
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:0
	shl_b64 r60, 0, 0
	or_b32 r4, r13, r12
	or_b32 r12, r13, r25
	or_b32 r5, r15, r14
	or_b32 r6, r15, r16
	or_b32 r7, r15, r17
	or_b32 r8, r15, r18
	or_b32 r9, r15, r22
	or_b32 r10, r15, r23
	or_b32 r11, r15, r24
	or3_b32 r15, r19, r17, r25
	or3_b32 r13, r19, r14, r25
	or3_b32 r14, r19, r16, r25
	or3_b32 r16, r19, r18, r25
	or3_b32 r18, r19, r23, r25
	or3_b32 r17, r19, r22, r25
	or3_b32 r19, r19, r24, r25
	sadd_co_i32 s11, 0x4000, 0
	or_b32 r23, 0x400, r50
	or_b32 r25, 0x800, r50
	or_b32 r27, 0xc00, r50
	or_b32 r29, 0x1000, r50
	or_b32 r31, 0x1400, r50
	or_b32 r33, 0x1800, r50
	or_b32 r35, 0x1c00, r50
	or_b32 r37, 0x2000, r50
	or_b32 r39, 0x2400, r50
	or_b32 r41, 0x2800, r50
	or_b32 r43, 0x2c00, r50
	or_b32 r45, 0x3000, r50
	or_b32 r47, 0x3400, r50
	or_b32 r49, 0x3800, r50
	or_b32 r51, 0x3c00, r50
	.loc	2 182 3                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:182:3
	add_co_u32 r56, s12, r58
	mov_b32 r57, s13
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:0
	shl_b64 r62, 0, 0
	shl_b64 r68, 0, r60
	shl_b64 r76, 0, r60
	shl_b64 r84, 0, r60
	shl_b64 r92, 0, r60
	shl_b64 r100, 0, r60
	shl_b64 r108, 0, r60
	shl_b64 r116, 0, r60
	shl_b64 r124, 0, r60
	shl_b64 r132, 0, r60
	shl_b64 r140, 0, r60
	shl_b64 r148, 0, r60
	shl_b64 r156, 0, r60
	shl_b64 r164, 0, r60
	shl_b64 r172, 0, r60
	shl_b64 r188, 0, r60
	shl_b64 r64, 0, r60
	shl_b64 r72, 0, r60
	shl_b64 r80, 0, r60
	shl_b64 r88, 0, r60
	shl_b64 r96, 0, r60
	shl_b64 r104, 0, r60
	shl_b64 r112, 0, r60
	shl_b64 r120, 0, r60
	shl_b64 r128, 0, r60
	shl_b64 r136, 0, r60
	shl_b64 r144, 0, r60
	shl_b64 r152, 0, r60
	shl_b64 r160, 0, r60
	shl_b64 r168, 0, r60
	shl_b64 r176, 0, r60
	shl_b64 r192, 0, r60
	add_u32 r22, s11, r23
	add_u32 r24, s11, r25
	add_u32 r26, s11, r27
	add_u32 r28, s11, r29
	add_u32 r30, s11, r31
	add_u32 r32, s11, r33
	add_u32 r34, s11, r35
	add_u32 r36, s11, r37
	add_u32 r38, s11, r39
	add_u32 r40, s11, r41
	add_u32 r42, s11, r43
	add_u32 r44, s11, r45
	add_u32 r46, s11, r47
	add_u32 r48, s11, r49
	shr_b32 r3, 2, r1
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
	add_u32 r20, s11, r50
	add_u32 r21, 0, r50
	add_u32 r50, s11, r51
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
	add_u32 r51, 0, r51
	.loc	2 182 3                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:182:3
	addc_co_u32 r57, r57, r59
	smov_b64 s12, 0
	shl_b64 r70, 0, r62
	shl_b64 r78, 0, r62
	shl_b64 r86, 0, r62
	shl_b64 r94, 0, r62
	shl_b64 r102, 0, r62
	shl_b64 r110, 0, r62
	shl_b64 r118, 0, r62
	shl_b64 r126, 0, r62
	shl_b64 r134, 0, r62
	shl_b64 r142, 0, r62
	shl_b64 r150, 0, r62
	shl_b64 r158, 0, r62
	shl_b64 r166, 0, r62
	shl_b64 r174, 0, r62
	shl_b64 r190, 0, r62
	shl_b64 r66, 0, r62
	shl_b64 r74, 0, r62
	shl_b64 r82, 0, r62
	shl_b64 r90, 0, r62
	shl_b64 r98, 0, r62
	shl_b64 r106, 0, r62
	shl_b64 r114, 0, r62
	shl_b64 r122, 0, r62
	shl_b64 r130, 0, r62
	shl_b64 r138, 0, r62
	shl_b64 r146, 0, r62
	shl_b64 r154, 0, r62
	shl_b64 r162, 0, r62
	shl_b64 r170, 0, r62
	shl_b64 r178, 0, r62
	shl_b64 r194, 0, r62
	bra LBB2_77
	.p2align	5
LBB2_75:                                ; %Flow754
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 3                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s24
LBB2_76:                                ; %for.inc714
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 182 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:182:55
	sadd_co_u32 s12, 0x100, s12
	saddc_co_u32 s13, s13, 0
	scmp_eq_u64 0x3800, s12
	.loc	2 182 3                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:182:3
	snop 0
	bra_smsks LBB2_286
LBB2_77:                                ; %for.body143
                                        ; =>This Inner Loop Header: Depth=1
.Ltmp53:
	.file	4 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive 0
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	shl_b64 r214, 0, 0
.Ltmp54:
	.loc	2 188 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:188:22
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r216, 0, 0
	bra_cmskz LBB2_162
; %bb.78:                               ; %if.end206
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:22
	shl_b64 r218, 0, 0
	shl_b64 r220, 0, 0
	.loc	2 188 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:188:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB2_163
LBB2_79:                                ; %if.end206.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:22
	shl_b64 r206, 0, 0
	shl_b64 r208, 0, 0
	.loc	2 188 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:188:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB2_164
LBB2_80:                                ; %if.end206.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:22
	shl_b64 r210, 0, 0
	shl_b64 r212, 0, 0
	.loc	2 188 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:188:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB2_82
LBB2_81:                                ; %if.then151.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:22
	add_co_u32 r58, r56, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r57, r59
	.loc	2 189 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:189:19
	add_co_u32 r58, 0x380c0, r58
	addc_co_u32 r59, r59, 0
	snop 1
	ldg_b128 r210, r58, 0x0
LBB2_82:                                ; %if.end206.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r222, r4, 0x0
	lds_b128 r226, r5, 0x0
	lds_b128 r230, r6, 0x0
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	add_i32 r58, 0x4000, r4
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r188, r222, r180, r188
	mma_16x16x16f16 r116, r222, r184, r116
	mma_16x16x16f16 r188, r224, r182, r188
	mma_16x16x16f16 r116, r224, r186, r116
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r222, r7, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r226, r180, r172
	mma_16x16x16f16 r108, r226, r184, r108
	mma_16x16x16f16 r172, r228, r182, r172
	mma_16x16x16f16 r108, r228, r186, r108
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r226, r8, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r230, r180, r164
	mma_16x16x16f16 r100, r230, r184, r100
	mma_16x16x16f16 r164, r232, r182, r164
	mma_16x16x16f16 r100, r232, r186, r100
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r230, r9, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r222, r180, r156
	mma_16x16x16f16 r92, r222, r184, r92
	mma_16x16x16f16 r156, r224, r182, r156
	mma_16x16x16f16 r92, r224, r186, r92
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r222, r10, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r226, r180, r148
	mma_16x16x16f16 r84, r226, r184, r84
	mma_16x16x16f16 r148, r228, r182, r148
	mma_16x16x16f16 r84, r228, r186, r84
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r226, r11, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r230, r180, r140
	mma_16x16x16f16 r76, r230, r184, r76
	mma_16x16x16f16 r140, r232, r182, r140
	mma_16x16x16f16 r76, r232, r186, r76
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r5
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r222, r180, r132
	mma_16x16x16f16 r68, r222, r184, r68
	mma_16x16x16f16 r132, r224, r182, r132
	mma_16x16x16f16 r68, r224, r186, r68
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r6
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r226, r180, r124
	mma_16x16x16f16 r60, r226, r184, r60
	mma_16x16x16f16 r124, r228, r182, r124
	mma_16x16x16f16 r60, r228, r186, r60
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r226, r58, 0x0
	add_i32 r58, 0x4000, r7
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r192, r230, r180, r192
	mma_16x16x16f16 r120, r230, r184, r120
	mma_16x16x16f16 r192, r232, r182, r192
	mma_16x16x16f16 r120, r232, r186, r120
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r8
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r222, r180, r176
	mma_16x16x16f16 r112, r222, r184, r112
	mma_16x16x16f16 r176, r224, r182, r176
	mma_16x16x16f16 r112, r224, r186, r112
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r9
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r226, r180, r168
	mma_16x16x16f16 r104, r226, r184, r104
	mma_16x16x16f16 r168, r228, r182, r168
	mma_16x16x16f16 r104, r228, r186, r104
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r226, r58, 0x0
	add_i32 r58, 0x4000, r10
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r230, r180, r160
	mma_16x16x16f16 r96, r230, r184, r96
	mma_16x16x16f16 r160, r232, r182, r160
	mma_16x16x16f16 r96, r232, r186, r96
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r11
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r222, r180, r152
	mma_16x16x16f16 r88, r222, r184, r88
	mma_16x16x16f16 r152, r224, r182, r152
	mma_16x16x16f16 r88, r224, r186, r88
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r12
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r226, r180, r144
	mma_16x16x16f16 r80, r226, r184, r80
	mma_16x16x16f16 r144, r228, r182, r144
	mma_16x16x16f16 r80, r228, r186, r80
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r226, r12, 0x0
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r230, r180, r136
	mma_16x16x16f16 r72, r230, r184, r72
	mma_16x16x16f16 r136, r232, r182, r136
	mma_16x16x16f16 r72, r232, r186, r72
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r230, r13, 0x0
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r222, r180, r128
	mma_16x16x16f16 r64, r222, r184, r64
	mma_16x16x16f16 r128, r224, r182, r128
	mma_16x16x16f16 r64, r224, r186, r64
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r222, r14, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r188, r226, r196, r188
	mma_16x16x16f16 r116, r226, r200, r116
	mma_16x16x16f16 r188, r228, r198, r188
	mma_16x16x16f16 r116, r228, r202, r116
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r226, r15, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r230, r196, r172
	mma_16x16x16f16 r108, r230, r200, r108
	mma_16x16x16f16 r172, r232, r198, r172
	mma_16x16x16f16 r108, r232, r202, r108
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r230, r16, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r222, r196, r164
	mma_16x16x16f16 r100, r222, r200, r100
	mma_16x16x16f16 r164, r224, r198, r164
	mma_16x16x16f16 r100, r224, r202, r100
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r222, r17, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r226, r196, r156
	mma_16x16x16f16 r92, r226, r200, r92
	mma_16x16x16f16 r156, r228, r198, r156
	mma_16x16x16f16 r92, r228, r202, r92
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r226, r18, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r230, r196, r148
	mma_16x16x16f16 r84, r230, r200, r84
	mma_16x16x16f16 r148, r232, r198, r148
	mma_16x16x16f16 r84, r232, r202, r84
	.loc	2 197 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:197:43
	lds_b128 r230, r19, 0x0
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r222, r196, r140
	mma_16x16x16f16 r76, r222, r200, r76
	mma_16x16x16f16 r140, r224, r198, r140
	mma_16x16x16f16 r76, r224, r202, r76
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r13
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r226, r196, r132
	mma_16x16x16f16 r68, r226, r200, r68
	mma_16x16x16f16 r132, r228, r198, r132
	mma_16x16x16f16 r68, r228, r202, r68
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r226, r58, 0x0
	add_i32 r58, 0x4000, r14
	.loc	2 203 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:203:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r230, r196, r124
	mma_16x16x16f16 r60, r230, r200, r60
	mma_16x16x16f16 r124, r232, r198, r124
	mma_16x16x16f16 r60, r232, r202, r60
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r15
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r192, r222, r196, r192
	mma_16x16x16f16 r120, r222, r200, r120
	mma_16x16x16f16 r192, r224, r198, r192
	mma_16x16x16f16 r120, r224, r202, r120
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r16
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r226, r196, r176
	mma_16x16x16f16 r112, r226, r200, r112
	mma_16x16x16f16 r176, r228, r198, r176
	mma_16x16x16f16 r112, r228, r202, r112
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r226, r58, 0x0
	add_i32 r58, 0x4000, r17
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r230, r196, r168
	mma_16x16x16f16 r104, r230, r200, r104
	mma_16x16x16f16 r168, r232, r198, r168
	mma_16x16x16f16 r104, r232, r202, r104
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r18
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r222, r196, r160
	mma_16x16x16f16 r96, r222, r200, r96
	mma_16x16x16f16 r160, r224, r198, r160
	mma_16x16x16f16 r96, r224, r202, r96
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r19
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r226, r196, r152
	mma_16x16x16f16 r88, r226, r200, r88
	mma_16x16x16f16 r152, r228, r198, r152
	mma_16x16x16f16 r88, r228, r202, r88
	.loc	2 211 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:211:45
	lds_b128 r226, r58, 0x0
	.loc	2 217 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:217:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r230, r196, r144
	mma_16x16x16f16 r80, r230, r200, r80
	mma_16x16x16f16 r144, r232, r198, r144
	mma_16x16x16f16 r80, r232, r202, r80
	arrive bsmcnt(1)
	mma_16x16x16f16 r136, r222, r196, r136
	mma_16x16x16f16 r72, r222, r200, r72
	mma_16x16x16f16 r136, r224, r198, r136
	mma_16x16x16f16 r72, r224, r202, r72
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r226, r196, r128
	mma_16x16x16f16 r64, r226, r200, r64
	mma_16x16x16f16 r128, r228, r198, r128
	mma_16x16x16f16 r64, r228, r202, r64
.Ltmp55:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_119
.Ltmp56:
; %bb.83:                               ; %for.body401.us.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_165
; %bb.84:                               ; %Flow818
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_168
.Ltmp57:
LBB2_85:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp58:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_169
LBB2_86:                                ; %Flow816
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_172
.Ltmp59:
LBB2_87:                                ; %for.inc422.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp60:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_173
LBB2_88:                                ; %Flow814
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_176
.Ltmp61:
LBB2_89:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp62:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_177
LBB2_90:                                ; %Flow812
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_180
.Ltmp63:
LBB2_91:                                ; %for.inc422.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp64:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_181
LBB2_92:                                ; %Flow810
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_184
.Ltmp65:
LBB2_93:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp66:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_185
LBB2_94:                                ; %Flow808
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_188
.Ltmp67:
LBB2_95:                                ; %for.inc422.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp68:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_189
LBB2_96:                                ; %Flow806
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_192
.Ltmp69:
LBB2_97:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp70:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_193
LBB2_98:                                ; %Flow804
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_196
.Ltmp71:
LBB2_99:                                ; %for.inc422.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp72:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_197
LBB2_100:                               ; %Flow802
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_200
.Ltmp73:
LBB2_101:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp74:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_201
LBB2_102:                               ; %Flow800
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_204
.Ltmp75:
LBB2_103:                               ; %for.inc422.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp76:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_205
LBB2_104:                               ; %Flow798
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_208
.Ltmp77:
LBB2_105:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp78:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_209
LBB2_106:                               ; %Flow796
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_212
.Ltmp79:
LBB2_107:                               ; %for.inc422.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp80:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_213
LBB2_108:                               ; %Flow794
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_216
.Ltmp81:
LBB2_109:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp82:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_217
LBB2_110:                               ; %Flow792
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_220
.Ltmp83:
LBB2_111:                               ; %for.inc422.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp84:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_221
LBB2_112:                               ; %Flow790
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_114
LBB2_113:                               ; %if.then.i1225.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp85:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x188080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r49
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp86:
LBB2_114:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1230.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	shl_b64 r222, 0, s16
.Ltmp87:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	mov_b32 r58, r51
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_116
; %bb.115:                              ; %if.else.i1192.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r222, 0, s14
	sor_b64 s26, s26, s30
	mov_b32 r58, r50
LBB2_116:                               ; %Flow787
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_118
; %bb.117:                              ; %for.inc422.us.7.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp88:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r59, r222, r204
	addc_co_u32 r222, r223, r205
	add_co_u32 r59, r59, s12
	mov_b32 r223, s13
	addc_co_u32 r222, r222, r223
	add_co_u32 r224, 0x1a4080, r59
	addc_co_u32 r225, r222, 0
	rfl_b32 s11, r58
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r224, 0x0 bsm
	smov_b32 md, s3
.Ltmp89:
LBB2_118:                               ; %Flow788
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
LBB2_119:                               ; %if.end425
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp90:
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp91:
	.loc	2 234 28                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:234:28
	mov_b32 r58, 0x3700
	mov_b32 r59, 0
	cmp_lg_u64 s24, s12, r58
	scmp_eq_u64 0x3700, s12
	.loc	2 234 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:234:9
	snop 0
	bra_smsks LBB2_125
; %bb.120:                              ; %for.cond428.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	shl_b64 r180, 0, 0
	.loc	2 239 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:239:24
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r182, 0, 0
	bra_cmskz LBB2_224
; %bb.121:                              ; %if.end490
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:24
	shl_b64 r184, 0, 0
	shl_b64 r186, 0, 0
	.loc	2 239 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:239:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB2_225
LBB2_122:                               ; %if.end490.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:24
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	.loc	2 239 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:239:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB2_226
LBB2_123:                               ; %if.end490.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:24
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	.loc	2 239 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:239:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB2_125
LBB2_124:                               ; %if.then435.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:24
	add_co_u32 r58, r56, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r57, r59
	.loc	2 240 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:240:21
	add_co_u32 r58, 0x38140, r58
	addc_co_u32 r59, r59, 0
	snop 1
	ldg_b128 r200, r58, 0x0
LBB2_125:                               ; %if.end498
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r222, r4, 0x0
	lds_b128 r226, r5, 0x0
	lds_b128 r230, r6, 0x0
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	add_i32 r58, 0x4000, r4
	.loc	2 277 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:277:9
	sandn_b64 cmsk, xmsk, s24
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r188, r222, r214, r188
	mma_16x16x16f16 r116, r222, r218, r116
	mma_16x16x16f16 r188, r224, r216, r188
	mma_16x16x16f16 r116, r224, r220, r116
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r222, r7, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r226, r214, r172
	mma_16x16x16f16 r108, r226, r218, r108
	mma_16x16x16f16 r172, r228, r216, r172
	mma_16x16x16f16 r108, r228, r220, r108
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r226, r8, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r230, r214, r164
	mma_16x16x16f16 r100, r230, r218, r100
	mma_16x16x16f16 r164, r232, r216, r164
	mma_16x16x16f16 r100, r232, r220, r100
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r230, r9, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r222, r214, r156
	mma_16x16x16f16 r92, r222, r218, r92
	mma_16x16x16f16 r156, r224, r216, r156
	mma_16x16x16f16 r92, r224, r220, r92
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r222, r10, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r226, r214, r148
	mma_16x16x16f16 r84, r226, r218, r84
	mma_16x16x16f16 r148, r228, r216, r148
	mma_16x16x16f16 r84, r228, r220, r84
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r226, r11, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r230, r214, r140
	mma_16x16x16f16 r76, r230, r218, r76
	mma_16x16x16f16 r140, r232, r216, r140
	mma_16x16x16f16 r76, r232, r220, r76
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r5
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r222, r214, r132
	mma_16x16x16f16 r68, r222, r218, r68
	mma_16x16x16f16 r132, r224, r216, r132
	mma_16x16x16f16 r68, r224, r220, r68
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r6
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r226, r214, r124
	mma_16x16x16f16 r60, r226, r218, r60
	mma_16x16x16f16 r124, r228, r216, r124
	mma_16x16x16f16 r60, r228, r220, r60
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r226, r58, 0x0
	add_i32 r58, 0x4000, r7
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r192, r230, r214, r192
	mma_16x16x16f16 r120, r230, r218, r120
	mma_16x16x16f16 r192, r232, r216, r192
	mma_16x16x16f16 r120, r232, r220, r120
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r8
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r222, r214, r176
	mma_16x16x16f16 r112, r222, r218, r112
	mma_16x16x16f16 r176, r224, r216, r176
	mma_16x16x16f16 r112, r224, r220, r112
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r9
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r226, r214, r168
	mma_16x16x16f16 r104, r226, r218, r104
	mma_16x16x16f16 r168, r228, r216, r168
	mma_16x16x16f16 r104, r228, r220, r104
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r226, r58, 0x0
	add_i32 r58, 0x4000, r10
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r230, r214, r160
	mma_16x16x16f16 r96, r230, r218, r96
	mma_16x16x16f16 r160, r232, r216, r160
	mma_16x16x16f16 r96, r232, r220, r96
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r230, r58, 0x0
	add_i32 r58, 0x4000, r11
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r222, r214, r152
	mma_16x16x16f16 r88, r222, r218, r88
	mma_16x16x16f16 r152, r224, r216, r152
	mma_16x16x16f16 r88, r224, r220, r88
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r12
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r226, r214, r144
	mma_16x16x16f16 r80, r226, r218, r80
	mma_16x16x16f16 r144, r228, r216, r144
	mma_16x16x16f16 r80, r228, r220, r80
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r226, r12, 0x0
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r230, r214, r136
	mma_16x16x16f16 r72, r230, r218, r72
	mma_16x16x16f16 r136, r232, r216, r136
	mma_16x16x16f16 r72, r232, r220, r72
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r230, r13, 0x0
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r222, r214, r128
	mma_16x16x16f16 r64, r222, r218, r64
	mma_16x16x16f16 r128, r224, r216, r128
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r214, r14, 0x0
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	mma_16x16x16f16 r64, r224, r220, r64
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r218, r15, 0x0
	lds_b128 r222, r16, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(4)
	mma_16x16x16f16 r188, r226, r206, r188
	mma_16x16x16f16 r116, r226, r210, r116
	mma_16x16x16f16 r188, r228, r208, r188
	mma_16x16x16f16 r116, r228, r212, r116
	arrive bsmcnt(3)
	mma_16x16x16f16 r172, r230, r206, r172
	mma_16x16x16f16 r108, r230, r210, r108
	mma_16x16x16f16 r172, r232, r208, r172
	mma_16x16x16f16 r108, r232, r212, r108
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r214, r206, r164
	mma_16x16x16f16 r100, r214, r210, r100
	mma_16x16x16f16 r164, r216, r208, r164
	mma_16x16x16f16 r100, r216, r212, r100
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r214, r17, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r218, r206, r156
	mma_16x16x16f16 r92, r218, r210, r92
	mma_16x16x16f16 r156, r220, r208, r156
	mma_16x16x16f16 r92, r220, r212, r92
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r218, r18, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r222, r206, r148
	mma_16x16x16f16 r84, r222, r210, r84
	mma_16x16x16f16 r148, r224, r208, r148
	mma_16x16x16f16 r84, r224, r212, r84
	.loc	2 249 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:249:45
	lds_b128 r222, r19, 0x0
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r214, r206, r140
	mma_16x16x16f16 r76, r214, r210, r76
	mma_16x16x16f16 r140, r216, r208, r140
	mma_16x16x16f16 r76, r216, r212, r76
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r214, r58, 0x0
	add_i32 r58, 0x4000, r13
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r218, r206, r132
	mma_16x16x16f16 r68, r218, r210, r68
	mma_16x16x16f16 r132, r220, r208, r132
	mma_16x16x16f16 r68, r220, r212, r68
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r14
	.loc	2 255 57                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:255:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r222, r206, r124
	mma_16x16x16f16 r60, r222, r210, r60
	mma_16x16x16f16 r124, r224, r208, r124
	mma_16x16x16f16 r60, r224, r212, r60
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r15
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r192, r214, r206, r192
	mma_16x16x16f16 r120, r214, r210, r120
	mma_16x16x16f16 r192, r216, r208, r192
	mma_16x16x16f16 r120, r216, r212, r120
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r214, r58, 0x0
	add_i32 r58, 0x4000, r16
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r218, r206, r176
	mma_16x16x16f16 r112, r218, r210, r112
	mma_16x16x16f16 r176, r220, r208, r176
	mma_16x16x16f16 r112, r220, r212, r112
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r218, r58, 0x0
	add_i32 r58, 0x4000, r17
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r222, r206, r168
	mma_16x16x16f16 r104, r222, r210, r104
	mma_16x16x16f16 r168, r224, r208, r168
	mma_16x16x16f16 r104, r224, r212, r104
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r222, r58, 0x0
	add_i32 r58, 0x4000, r18
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r214, r206, r160
	mma_16x16x16f16 r96, r214, r210, r96
	mma_16x16x16f16 r160, r216, r208, r160
	mma_16x16x16f16 r96, r216, r212, r96
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r214, r58, 0x0
	add_i32 r58, 0x4000, r19
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r218, r206, r152
	mma_16x16x16f16 r88, r218, r210, r88
	mma_16x16x16f16 r152, r220, r208, r152
	mma_16x16x16f16 r88, r220, r212, r88
	.loc	2 263 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:263:45
	lds_b128 r218, r58, 0x0
	.loc	2 269 55                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:269:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r222, r206, r144
	mma_16x16x16f16 r80, r222, r210, r80
	mma_16x16x16f16 r144, r224, r208, r144
	mma_16x16x16f16 r80, r224, r212, r80
	arrive bsmcnt(1)
	mma_16x16x16f16 r136, r214, r206, r136
	mma_16x16x16f16 r72, r214, r210, r72
	mma_16x16x16f16 r136, r216, r208, r136
	mma_16x16x16f16 r72, r216, r212, r72
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r218, r206, r128
	mma_16x16x16f16 r64, r218, r210, r64
	mma_16x16x16f16 r128, r220, r208, r128
	mma_16x16x16f16 r64, r220, r212, r64
	.loc	2 277 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:277:9
	bra_cmsks LBB2_76
; %bb.126:                              ; %if.then682
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp92:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_76
.Ltmp93:
; %bb.127:                              ; %for.body688.us.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_227
; %bb.128:                              ; %Flow784
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_230
.Ltmp94:
LBB2_129:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp95:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_231
LBB2_130:                               ; %Flow782
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_234
.Ltmp96:
LBB2_131:                               ; %for.inc709.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp97:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_235
LBB2_132:                               ; %Flow780
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_238
.Ltmp98:
LBB2_133:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp99:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_239
LBB2_134:                               ; %Flow778
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_242
.Ltmp100:
LBB2_135:                               ; %for.inc709.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp101:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_243
LBB2_136:                               ; %Flow776
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_246
.Ltmp102:
LBB2_137:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp103:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_247
LBB2_138:                               ; %Flow774
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_250
.Ltmp104:
LBB2_139:                               ; %for.inc709.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp105:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_251
LBB2_140:                               ; %Flow772
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_254
.Ltmp106:
LBB2_141:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp107:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_255
LBB2_142:                               ; %Flow770
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_258
.Ltmp108:
LBB2_143:                               ; %for.inc709.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp109:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_259
LBB2_144:                               ; %Flow768
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_262
.Ltmp110:
LBB2_145:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp111:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_263
LBB2_146:                               ; %Flow766
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_266
.Ltmp112:
LBB2_147:                               ; %for.inc709.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp113:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_267
LBB2_148:                               ; %Flow764
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_270
.Ltmp114:
LBB2_149:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp115:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_271
LBB2_150:                               ; %Flow762
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_274
.Ltmp116:
LBB2_151:                               ; %for.inc709.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp117:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_275
LBB2_152:                               ; %Flow760
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_278
.Ltmp118:
LBB2_153:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp119:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_279
LBB2_154:                               ; %Flow758
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_282
.Ltmp120:
LBB2_155:                               ; %for.inc709.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
.Ltmp121:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmsks LBB2_283
LBB2_156:                               ; %Flow756
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_158
LBB2_157:                               ; %if.then.i1277.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp122:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x188100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r49
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp123:
LBB2_158:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1282.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s24
	shl_b64 r206, 0, s16
	smov_b64 s26, s18
	mov_b32 r58, r51
.Ltmp124:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_160
; %bb.159:                              ; %if.else.i1244.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	sandn_b64 s26, s18, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r206, 0, s14
	sor_b64 s26, s26, s30
	mov_b32 r58, r50
LBB2_160:                               ; %Flow
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB2_75
; %bb.161:                              ; %for.inc709.us.7.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp125:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r59, r206, r204
	addc_co_u32 r206, r207, r205
	add_co_u32 r59, r59, s12
	mov_b32 r207, s13
	addc_co_u32 r206, r206, r207
	add_co_u32 r208, 0x1a4100, r59
	addc_co_u32 r209, r206, 0
	rfl_b32 s11, r58
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r208, 0x0 bsm
	smov_b32 md, s3
	bra LBB2_75
.Ltmp126:
	.p2align	5
LBB2_162:                               ; %if.then151
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	add_co_u32 r206, r56, s12
	mov_b32 r58, s13
	addc_co_u32 r207, r57, r58
	.loc	2 189 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:189:19
	snop 1
	ldg_b128 r214, r206, 0x80
	shl_b64 r218, 0, 0
	shl_b64 r220, 0, 0
	.loc	2 188 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:188:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB2_79
LBB2_163:                               ; %if.then151.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:22
	add_co_u32 r58, r56, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r57, r59
	.loc	2 189 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:189:19
	add_co_u32 r58, 0x38080, r58
	addc_co_u32 r59, r59, 0
	snop 1
	ldg_b128 r218, r58, 0x0
	shl_b64 r206, 0, 0
	shl_b64 r208, 0, 0
	.loc	2 188 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:188:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB2_80
LBB2_164:                               ; %if.then151.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:22
	add_co_u32 r206, r56, s12
	mov_b32 r58, s13
	addc_co_u32 r207, r57, r58
	.loc	2 189 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:189:19
	snop 1
	ldg_b128 r206, r206, 0xc0
	shl_b64 r210, 0, 0
	shl_b64 r212, 0, 0
	.loc	2 188 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:188:22
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB2_81
	bra LBB2_82
	.p2align	5
LBB2_165:                               ; %if.else.i1218.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp127:
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_167
; %bb.166:                              ; %if.then12.i1220.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp128:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x80, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r20
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp129:
LBB2_167:                               ; %Flow817
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_85
LBB2_168:                               ; %if.then.i1225.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp130:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x80, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r21
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp131:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_86
LBB2_169:                               ; %if.else.i1192.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_171
; %bb.170:                              ; %if.then12.i1194.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp132:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x1c080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r22
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp133:
LBB2_171:                               ; %Flow815
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_87
LBB2_172:                               ; %if.then.i1199.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp134:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x1c080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r23
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp135:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_88
LBB2_173:                               ; %if.else.i1218.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_175
; %bb.174:                              ; %if.then12.i1220.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp136:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x38080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r24
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp137:
LBB2_175:                               ; %Flow813
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_89
LBB2_176:                               ; %if.then.i1225.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp138:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x38080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r25
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp139:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_90
LBB2_177:                               ; %if.else.i1192.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_179
; %bb.178:                              ; %if.then12.i1194.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp140:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x54080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r26
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp141:
LBB2_179:                               ; %Flow811
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_91
LBB2_180:                               ; %if.then.i1199.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp142:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x54080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r27
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp143:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_92
LBB2_181:                               ; %if.else.i1218.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_183
; %bb.182:                              ; %if.then12.i1220.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp144:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x70080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r28
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp145:
LBB2_183:                               ; %Flow809
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_93
LBB2_184:                               ; %if.then.i1225.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp146:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x70080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r29
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp147:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_94
LBB2_185:                               ; %if.else.i1192.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_187
; %bb.186:                              ; %if.then12.i1194.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp148:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x8c080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r30
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp149:
LBB2_187:                               ; %Flow807
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_95
LBB2_188:                               ; %if.then.i1199.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp150:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x8c080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r31
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp151:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_96
LBB2_189:                               ; %if.else.i1218.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_191
; %bb.190:                              ; %if.then12.i1220.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp152:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xa8080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r32
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp153:
LBB2_191:                               ; %Flow805
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_97
LBB2_192:                               ; %if.then.i1225.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp154:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xa8080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r33
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp155:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_98
LBB2_193:                               ; %if.else.i1192.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_195
; %bb.194:                              ; %if.then12.i1194.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp156:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xc4080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r34
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp157:
LBB2_195:                               ; %Flow803
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_99
LBB2_196:                               ; %if.then.i1199.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp158:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xc4080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r35
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp159:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_100
LBB2_197:                               ; %if.else.i1218.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_199
; %bb.198:                              ; %if.then12.i1220.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp160:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xe0080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r36
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp161:
LBB2_199:                               ; %Flow801
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_101
LBB2_200:                               ; %if.then.i1225.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp162:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xe0080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r37
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp163:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_102
LBB2_201:                               ; %if.else.i1192.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_203
; %bb.202:                              ; %if.then12.i1194.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp164:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xfc080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r38
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp165:
LBB2_203:                               ; %Flow799
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_103
LBB2_204:                               ; %if.then.i1199.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp166:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xfc080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r39
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp167:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_104
LBB2_205:                               ; %if.else.i1218.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_207
; %bb.206:                              ; %if.then12.i1220.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp168:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x118080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r40
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp169:
LBB2_207:                               ; %Flow797
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_105
LBB2_208:                               ; %if.then.i1225.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp170:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x118080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r41
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp171:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_106
LBB2_209:                               ; %if.else.i1192.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_211
; %bb.210:                              ; %if.then12.i1194.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp172:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x134080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r42
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp173:
LBB2_211:                               ; %Flow795
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_107
LBB2_212:                               ; %if.then.i1199.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp174:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x134080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r43
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp175:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_108
LBB2_213:                               ; %if.else.i1218.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_215
; %bb.214:                              ; %if.then12.i1220.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp176:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x150080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r44
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp177:
LBB2_215:                               ; %Flow793
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_109
LBB2_216:                               ; %if.then.i1225.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp178:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x150080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r45
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp179:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_110
LBB2_217:                               ; %if.else.i1192.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_219
; %bb.218:                              ; %if.then12.i1194.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp180:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x16c080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r46
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp181:
LBB2_219:                               ; %Flow791
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_111
LBB2_220:                               ; %if.then.i1199.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp182:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x16c080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r47
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp183:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_112
LBB2_221:                               ; %if.else.i1218.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_223
; %bb.222:                              ; %if.then12.i1220.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp184:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x188080, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r48
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp185:
LBB2_223:                               ; %Flow789
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_113
	bra LBB2_114
.Ltmp186:
	.p2align	5
LBB2_224:                               ; %if.then435
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	add_co_u32 r180, r56, s12
	mov_b32 r58, s13
	addc_co_u32 r181, r57, r58
	.loc	2 240 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:240:21
	snop 1
	ldg_b128 r180, r180, 0x100
	shl_b64 r184, 0, 0
	shl_b64 r186, 0, 0
	.loc	2 239 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:239:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB2_122
LBB2_225:                               ; %if.then435.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:24
	add_co_u32 r58, r56, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r57, r59
	.loc	2 240 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:240:21
	add_co_u32 r58, 0x38100, r58
	addc_co_u32 r59, r59, 0
	snop 1
	ldg_b128 r184, r58, 0x0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	.loc	2 239 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:239:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmsks LBB2_123
LBB2_226:                               ; %if.then435.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:24
	add_co_u32 r196, r56, s12
	mov_b32 r58, s13
	addc_co_u32 r197, r57, r58
	.loc	2 240 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:240:21
	snop 1
	ldg_b128 r196, r196, 0x140
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	.loc	2 239 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:239:24
	sandn_b64 cmsk, xmsk, s4
	snop 0
	bra_cmskz LBB2_124
	bra LBB2_125
LBB2_227:                               ; %if.else.i1270.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp187:
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_229
; %bb.228:                              ; %if.then12.i1272.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp188:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r20
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp189:
LBB2_229:                               ; %Flow783
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_129
LBB2_230:                               ; %if.then.i1277.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp190:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r21
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp191:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_130
LBB2_231:                               ; %if.else.i1244.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_233
; %bb.232:                              ; %if.then12.i1246.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp192:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x1c100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r22
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp193:
LBB2_233:                               ; %Flow781
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_131
LBB2_234:                               ; %if.then.i1251.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp194:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x1c100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r23
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp195:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_132
LBB2_235:                               ; %if.else.i1270.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_237
; %bb.236:                              ; %if.then12.i1272.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp196:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x38100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r24
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp197:
LBB2_237:                               ; %Flow779
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_133
LBB2_238:                               ; %if.then.i1277.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp198:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x38100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r25
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp199:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_134
LBB2_239:                               ; %if.else.i1244.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_241
; %bb.240:                              ; %if.then12.i1246.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp200:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x54100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r26
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp201:
LBB2_241:                               ; %Flow777
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_135
LBB2_242:                               ; %if.then.i1251.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp202:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x54100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r27
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp203:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_136
LBB2_243:                               ; %if.else.i1270.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_245
; %bb.244:                              ; %if.then12.i1272.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp204:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x70100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r28
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp205:
LBB2_245:                               ; %Flow775
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_137
LBB2_246:                               ; %if.then.i1277.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp206:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x70100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r29
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp207:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_138
LBB2_247:                               ; %if.else.i1244.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_249
; %bb.248:                              ; %if.then12.i1246.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp208:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x8c100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r30
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp209:
LBB2_249:                               ; %Flow773
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_139
LBB2_250:                               ; %if.then.i1251.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp210:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x8c100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r31
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp211:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_140
LBB2_251:                               ; %if.else.i1270.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_253
; %bb.252:                              ; %if.then12.i1272.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp212:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xa8100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r32
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp213:
LBB2_253:                               ; %Flow771
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_141
LBB2_254:                               ; %if.then.i1277.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp214:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xa8100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r33
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp215:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_142
LBB2_255:                               ; %if.else.i1244.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_257
; %bb.256:                              ; %if.then12.i1246.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp216:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xc4100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r34
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp217:
LBB2_257:                               ; %Flow769
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_143
LBB2_258:                               ; %if.then.i1251.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp218:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xc4100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r35
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp219:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_144
LBB2_259:                               ; %if.else.i1270.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_261
; %bb.260:                              ; %if.then12.i1272.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp220:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xe0100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r36
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp221:
LBB2_261:                               ; %Flow767
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_145
LBB2_262:                               ; %if.then.i1277.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp222:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xe0100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r37
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp223:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_146
LBB2_263:                               ; %if.else.i1244.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_265
; %bb.264:                              ; %if.then12.i1246.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp224:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0xfc100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r38
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp225:
LBB2_265:                               ; %Flow765
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_147
LBB2_266:                               ; %if.then.i1251.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp226:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0xfc100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r39
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp227:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_148
LBB2_267:                               ; %if.else.i1270.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_269
; %bb.268:                              ; %if.then12.i1272.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp228:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x118100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r40
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp229:
LBB2_269:                               ; %Flow763
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_149
LBB2_270:                               ; %if.then.i1277.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp230:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x118100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r41
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp231:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_150
LBB2_271:                               ; %if.else.i1244.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_273
; %bb.272:                              ; %if.then12.i1246.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp232:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x134100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r42
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp233:
LBB2_273:                               ; %Flow761
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_151
LBB2_274:                               ; %if.then.i1251.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp234:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x134100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r43
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp235:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_152
LBB2_275:                               ; %if.else.i1270.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_277
; %bb.276:                              ; %if.then12.i1272.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp236:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x150100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r44
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp237:
LBB2_277:                               ; %Flow759
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_153
LBB2_278:                               ; %if.then.i1277.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp238:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x150100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r45
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp239:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_154
LBB2_279:                               ; %if.else.i1244.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_281
; %bb.280:                              ; %if.then12.i1246.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp240:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x16c100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r46
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp241:
LBB2_281:                               ; %Flow757
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmskz LBB2_155
LBB2_282:                               ; %if.then.i1251.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp242:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r54, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r55, r59
	add_co_u32 r58, 0x16c100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r47
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s24
.Ltmp243:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	and_xmsk s24, s20
	sxor_b64 s24, xmsk, s24
	bra_xmskz LBB2_156
LBB2_283:                               ; %if.else.i1270.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:103:14
	and_xmsk s26, s22
	snop 0
	bra_xmskz LBB2_285
; %bb.284:                              ; %if.then12.i1272.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp244:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r58, r52, s12
	mov_b32 r59, s13
	addc_co_u32 r59, r53, r59
	add_co_u32 r58, 0x188100, r58
	addc_co_u32 r59, r59, 0
	rfl_b32 s11, r48
	smov_b32 s3, md
	snop 2
	smov_b32 md, s11
	snop 0
	ldg_b128 r0, r58, 0x0 bsm
	smov_b32 md, s3
.Ltmp245:
LBB2_285:                               ; %Flow755
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:99:7
	or_xmsk s24, s24
	sxor_b64 xmsk, xmsk, s24
	snop 0
	bra_xmsks LBB2_157
	bra LBB2_158
.Ltmp246:
LBB2_286:                               ; %for.cond717.preheader
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:7
	sshl_b32 s3, 7, s10
	ssub_co_i32 s1, s1, s3
	sadd_co_i32 s1, s1, s2
	smov_b32 s2, 0x1e0
	.loc	2 330 65 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:65
	and_or_b32 r0, r2, s2, r0
	.loc	2 330 94 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:94
	cmp_lt_i32 s2, r0, s1
	shl_b32 r4, 10, r1
	shl_b32 r1, 11, r1
	sshl_b32 s10, 18, s10
	and_b32 r4, 0xf0000, r4
	and_b32 r1, 0x7800, r1
	sshl_b32 s0, 7, s0
	and_b32 r3, r3, 12
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	sand_b64 s2, s8, s2
	or3_b32 r1, r1, r4, r3
	sadd_co_i32 s0, s0, s10
	add_u32 r2, s0, r1
	sand_b64 s2, s4, s2
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_304
; %bb.287:                              ; %if.end903
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_305
LBB2_288:                               ; %if.end903.1
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_306
LBB2_289:                               ; %if.end903.2
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_307
LBB2_290:                               ; %if.end903.3
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_308
LBB2_291:                               ; %if.end903.4
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_309
LBB2_292:                               ; %if.end903.5
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_310
LBB2_293:                               ; %if.end903.6
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_295
LBB2_294:                               ; %if.then840.7
	.loc	2 312 27 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r127
.Ltmp247:
	.file	5 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s2
	fmka_f32 r6, r127, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s2
	exp_f32 r6, r6
.Ltmp248:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r126
.Ltmp249:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp250:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r127, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r131
.Ltmp251:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s2
	fmka_f32 r7, r126, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s2
	exp_f32 r7, r7
.Ltmp252:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r125
.Ltmp253:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp254:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r126, r6
.Ltmp255:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s2
	fmka_f32 r8, r125, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s2
	exp_f32 r8, r8
.Ltmp256:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r124
.Ltmp257:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp258:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r125, r7
.Ltmp259:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s2
	fmka_f32 r5, r124, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s2
	exp_f32 r5, r5
.Ltmp260:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r124, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r128
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r129
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r130
.Ltmp261:
	.file	6 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp262:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp263:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp264:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp265:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r8, 0x70, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
LBB2_295:                               ; %if.end903.7
	.loc	2 0 235                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:235
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 65 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:65
	or_b32 r0, r0, 16
	.loc	2 330 94 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:94
	cmp_lt_i32 s0, r0, s1
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	snop 3
	sand_b64 s0, s8, s0
	sand_b64 s0, s4, s0
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_311
; %bb.296:                              ; %if.end903.8
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_312
LBB2_297:                               ; %if.end903.9
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_313
LBB2_298:                               ; %if.end903.10
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_314
LBB2_299:                               ; %if.end903.11
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_315
LBB2_300:                               ; %if.end903.12
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_316
LBB2_301:                               ; %if.end903.13
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_317
LBB2_302:                               ; %if.end903.14
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_318
LBB2_303:                               ; %if.end903.15
	.loc	2 352 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:352:1
	snop 1
	endk
LBB2_304:                               ; %if.then840
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r191
.Ltmp266:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r191, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp267:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r190
.Ltmp268:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp269:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r191, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r195
.Ltmp270:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r190, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp271:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r189
.Ltmp272:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp273:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r190, r6
.Ltmp274:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r189, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp275:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r188
.Ltmp276:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp277:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r189, r7
.Ltmp278:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r188, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp279:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r188, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r192
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r193
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r194
.Ltmp280:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp281:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp282:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp283:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp284:
	.loc	2 345 35 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r8, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r9, r3, r9
	.loc	2 345 235 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r5_hi, 0, 0
	or_b32 r5, r3, r5
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_288
LBB2_305:                               ; %if.then840.1
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r175
.Ltmp285:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r175, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp286:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r174
.Ltmp287:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp288:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r175, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r179
.Ltmp289:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r174, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp290:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r173
.Ltmp291:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp292:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r174, r6
.Ltmp293:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r173, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp294:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r172
.Ltmp295:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp296:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r173, r7
.Ltmp297:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r172, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp298:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r172, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r176
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r177
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r178
.Ltmp299:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp300:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp301:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp302:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp303:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r8, r2, 16
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_289
LBB2_306:                               ; %if.then840.2
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r167
.Ltmp304:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r167, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp305:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r166
.Ltmp306:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp307:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r167, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r171
.Ltmp308:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r166, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp309:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r165
.Ltmp310:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp311:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r166, r6
.Ltmp312:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r165, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp313:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r164
.Ltmp314:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp315:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r165, r7
.Ltmp316:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r164, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp317:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r164, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r168
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r169
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r170
.Ltmp318:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp319:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp320:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp321:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp322:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r8, r2, 32
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_290
LBB2_307:                               ; %if.then840.3
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r159
.Ltmp323:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r159, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp324:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r158
.Ltmp325:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp326:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r159, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r163
.Ltmp327:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r158, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp328:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r157
.Ltmp329:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp330:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r158, r6
.Ltmp331:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r157, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp332:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r156
.Ltmp333:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp334:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r157, r7
.Ltmp335:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r156, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp336:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r156, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r160
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r161
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r162
.Ltmp337:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp338:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp339:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp340:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp341:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r8, r2, 48
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_291
LBB2_308:                               ; %if.then840.4
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r151
.Ltmp342:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r151, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp343:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r150
.Ltmp344:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp345:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r151, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r155
.Ltmp346:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r150, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp347:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r149
.Ltmp348:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp349:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r150, r6
.Ltmp350:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r149, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp351:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r148
.Ltmp352:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp353:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r149, r7
.Ltmp354:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r148, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp355:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r148, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r152
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r153
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r154
.Ltmp356:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp357:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp358:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp359:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp360:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r8, r2, 64
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_292
LBB2_309:                               ; %if.then840.5
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r143
.Ltmp361:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r143, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp362:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r142
.Ltmp363:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp364:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r143, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r147
.Ltmp365:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r142, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp366:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r141
.Ltmp367:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp368:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r142, r6
.Ltmp369:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r141, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp370:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r140
.Ltmp371:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp372:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r141, r7
.Ltmp373:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r140, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp374:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r140, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r144
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r145
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r146
.Ltmp375:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp376:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp377:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp378:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp379:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r8, 0x50, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_293
LBB2_310:                               ; %if.then840.6
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r1, 0xbfb8aa3b, r135
.Ltmp380:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r135, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp381:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r6, r4, r4, s0
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r3
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s0, r4, s0
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r6, 0xbfb8aa3b, r134
.Ltmp382:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp383:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r4, r135, r4
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r4, r4, r139
.Ltmp384:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r134, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp385:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r7, r6, r6, s0
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r3
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s0, r6, s0
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r7, 0xbfb8aa3b, r133
.Ltmp386:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp387:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r6, r134, r6
.Ltmp388:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r133, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp389:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r8, r7, r7, s0
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s0, r7, s0
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r8, 0xbfb8aa3b, r132
.Ltmp390:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp391:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r7, r133, r7
.Ltmp392:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r132, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp393:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r5, r1, r1, s0
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s0, r1, s0
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s0
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r1, r132, r1
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r1, r1, r136
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r3, r7, r137
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r5, r6, r138
.Ltmp394:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp395:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp396:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp397:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp398:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r8, 0x60, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s10
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s10, s2
	snop 0
	bra_xmsks LBB2_294
	bra LBB2_295
LBB2_311:                               ; %if.then840.8
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r119
.Ltmp399:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r119, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp400:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r118
.Ltmp401:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp402:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r119, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r123
.Ltmp403:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r118, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp404:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r117
.Ltmp405:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp406:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r118, r5
.Ltmp407:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r117, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp408:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r116
.Ltmp409:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp410:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r117, r6
.Ltmp411:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r116, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp412:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s8, r0, s8
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s8
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r116, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r120
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r121
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r122
.Ltmp413:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp414:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp415:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp416:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp417:
	.loc	2 345 172 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:172
	snop 0
	or_b32 r6, 0x8000, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_297
LBB2_312:                               ; %if.then840.9
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r111
.Ltmp418:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r111, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp419:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r110
.Ltmp420:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp421:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r111, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r115
.Ltmp422:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r110, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp423:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r109
.Ltmp424:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp425:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r110, r5
.Ltmp426:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r109, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp427:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r108
.Ltmp428:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp429:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r109, r6
.Ltmp430:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r108, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp431:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s8, r0, s8
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s8
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r108, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r112
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r113
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r114
.Ltmp432:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp433:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp434:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp435:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp436:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r6, 0x8010, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_298
LBB2_313:                               ; %if.then840.10
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r103
.Ltmp437:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r103, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp438:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r102
.Ltmp439:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp440:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r103, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r107
.Ltmp441:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r102, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp442:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r101
.Ltmp443:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp444:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r102, r5
.Ltmp445:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r101, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp446:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r100
.Ltmp447:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp448:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r101, r6
.Ltmp449:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r100, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp450:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s8, r0, s8
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s8
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r100, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r104
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r105
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r106
.Ltmp451:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp452:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp453:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp454:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp455:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r6, 0x8020, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_299
LBB2_314:                               ; %if.then840.11
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r95
.Ltmp456:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r95, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp457:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r94
.Ltmp458:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp459:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r95, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r99
.Ltmp460:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r94, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp461:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r93
.Ltmp462:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp463:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r94, r5
.Ltmp464:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r93, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp465:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r92
.Ltmp466:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp467:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r93, r6
.Ltmp468:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r92, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp469:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s8, r0, s8
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s8
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r92, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r96
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r97
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r98
.Ltmp470:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp471:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp472:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp473:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp474:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r6, 0x8030, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_300
LBB2_315:                               ; %if.then840.12
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r87
.Ltmp475:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r87, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp476:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r86
.Ltmp477:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp478:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r87, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r91
.Ltmp479:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r86, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp480:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r85
.Ltmp481:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp482:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r86, r5
.Ltmp483:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r85, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp484:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r84
.Ltmp485:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp486:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r85, r6
.Ltmp487:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r84, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp488:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s8, r0, s8
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s8
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r84, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r88
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r89
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r90
.Ltmp489:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp490:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp491:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp492:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp493:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r6, 0x8040, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_301
LBB2_316:                               ; %if.then840.13
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r79
.Ltmp494:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r79, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp495:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r78
.Ltmp496:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp497:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r79, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r83
.Ltmp498:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r78, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp499:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r77
.Ltmp500:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp501:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r78, r5
.Ltmp502:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r77, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp503:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r76
.Ltmp504:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp505:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r77, r6
.Ltmp506:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r76, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp507:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s8, r0, s8
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s8
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r76, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r80
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r81
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r82
.Ltmp508:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp509:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp510:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp511:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp512:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r6, 0x8050, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_302
LBB2_317:                               ; %if.then840.14
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r71
.Ltmp513:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r71, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp514:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r70
.Ltmp515:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp516:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r71, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r75
.Ltmp517:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r70, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp518:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r69
.Ltmp519:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp520:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r70, r5
.Ltmp521:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r69, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp522:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r68
.Ltmp523:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp524:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r69, r6
.Ltmp525:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r68, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp526:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s8, r0, s8
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s8
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r68, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r72
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r73
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r74
.Ltmp527:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp528:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp529:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp530:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp531:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r6, 0x8060, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 330 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:330:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_303
LBB2_318:                               ; %if.then840.15
	.loc	2 312 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:312:27
	mul_f32 r0, 0xbfb8aa3b, r63
.Ltmp532:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r63, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s0
	exp_f32 r5, r5
.Ltmp533:
	.loc	2 320 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:320:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_scale_f32 r5, r3, r3, s2
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s2, r3, s2
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 311 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:311:27
	mul_f32 r5, 0xbfb8aa3b, r62
.Ltmp534:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp535:
	.loc	2 324 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:324:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 328 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:328:20
	mul_f32 r3, r63, r3
	.loc	2 342 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:342:32
	mul_f32 r3, r3, r67
.Ltmp536:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r62, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s0
	exp_f32 r6, r6
.Ltmp537:
	.loc	2 319 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:319:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_scale_f32 r6, r5, r5, s2
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s2, r5, s2
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 310 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:310:27
	mul_f32 r6, 0xbfb8aa3b, r61
.Ltmp538:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp539:
	.loc	2 323 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:323:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 327 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:327:20
	mul_f32 r5, r62, r5
.Ltmp540:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r61, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s0
	exp_f32 r7, r7
.Ltmp541:
	.loc	2 318 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:318:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_scale_f32 r7, r6, r6, s2
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s2, r6, s2
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 309 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:309:27
	mul_f32 r7, 0xbfb8aa3b, r60
.Ltmp542:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp543:
	.loc	2 322 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:322:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 326 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:326:20
	mul_f32 r6, r61, r6
.Ltmp544:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r60, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s0
	exp_f32 r4, r4
.Ltmp545:
	.loc	2 317 26                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:317:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 321 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:321:24
	div_scale_f32 r4, r0, r0, s2
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s2, r0, s2
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s2
	.loc	2 325 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:325:20
	mul_f32 r0, r60, r0
	.loc	2 339 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:339:32
	mul_f32 r0, r0, r64
	.loc	2 340 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:340:32
	mul_f32 r1, r6, r65
	.loc	2 341 32                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:341:32
	mul_f32 r4, r5, r66
.Ltmp546:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp547:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp548:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp549:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp550:
	.loc	2 345 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:192
	snop 0
	or_b32 r6, 0x8070, r2
	.loc	2 345 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r2, s7
	addc_co_u32 r7, r2, r7
	.loc	2 345 235                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:345:235
	shl_b32 r2, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 352 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:352:1
	snop 2
	endk
.Ltmp551:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 30
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
; codeLenInByte = 40032
; NumMTRegsForWarps/PEU: 234
; NumSTRegsForWarps/PEU: 36
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 354 0                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:354:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp552:
	.loc	2 366 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:366:25
	scmp_gt_u32 s5, 31
	.loc	2 366 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:366:7
	snop 0
	bra_smskz LBB3_2
; %bb.1:                                ; %if.else
	.loc	2 371 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:371:48
	sand_b32 s0, 1, s5
	cmp_eq_u32 s2, s0, 1
	.loc	2 370 49                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:370:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 370 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:370:75
	sand_b32 s1, s4, 1
	.loc	2 370 54                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:370:54
	sor_b32 s16, s0, s1
	.loc	2 371 75 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:371:75
	sshr_b32 s0, 1, s4
	.loc	2 371 48 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:371:48
	csel_b32 r1, 14, 0, s2
	.loc	2 371 54                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:371:54
	add_u32 r1, r1, s0
	.loc	2 366 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:366:7
	bra_xmskz LBB3_3
	bra LBB3_4
LBB3_2:
                                        ; implicit-def: $mtreg_32bit_1
                                        ; implicit-def: $streg_32bit_16
LBB3_3:                                 ; %if.then
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:0
	mov_b32 r1, s4
	smov_b32 s16, s5
LBB3_4:                                 ; %if.end
	.loc	2 375 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:375:19
	smov_b32 s17, 0
	sshl_b64 s0, 2, s16
	and_b32 r0, 0x3ff, r0
	arrive slcnt(0)
	sadd_co_u32 s0, s42, s0
	shl_b32 r2, 10, r0
	saddc_co_u32 s1, s43, s1
	and_b32 r2, 0xf0000, r2
	mov_b32 r3, s16
	ldu_b32 s0, s0, 0x0
	shl_add_u32 r3, 18, r3, r2
	shl_b32 r4, 11, r0
	smov_b32 s1, 0x7800
	.loc	2 391 150                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:150
	and_or_b32 r36, r4, s1, r3
	shr_b32 r2, 1, r0
	and_b32 r30, r2, 24
	or_b32 r28, 0x8000, r36
	.loc	2 391 209 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:209
	or_b32 r4, r28, r30
	or_b32 r3, r36, r30
	.loc	2 391 67                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:67
	mad_i32 r4, r4, 2, s14
	mad_i32 r6, r3, 2, s14
	shl_b32 r31, 19, r1
	.loc	2 391 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:45
	ldg_b128 r152, r4, 0x0
	.loc	2 391 209                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:209
	or_b32 r4, r3, 32
	or_b32 r3, 0x8020, r3
	.loc	2 391 67                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:67
	mad_i32 r8, r3, 2, s14
	shl_b32 r3, 8, r0
	and_b32 r32, 0x3f800, r3
	shl_b32 r3, 3, r0
	.loc	2 391 45                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:45
	ldg_b128 r148, r6, 0x0
	.loc	2 391 67                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:67
	mad_i32 r6, r4, 2, s14
	and_b32 r4, r3, 56
	arrive slcnt(0)
	smul_i32 s7, 0xe00000, s0
	or3_b32 r4, r4, r32, r31
	add_u32 r4, r4, s7
	.loc	2 395 356 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:356
	mad_i32 r4, r4, 2, s40
	add_co_u32 r10, 0x20000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 395 339 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:339
	ldg_b128 r18, r4, 0x0
	.loc	2 391 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:45
	ldg_b128 r164, r6, 0x0
	.loc	2 395 339                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:339
	ldg_b128 r22, r10, 0x0
	.loc	2 395 356 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:356
	add_co_u32 r10, 0x40000, r4
	addc_co_u32 r11, r5, 0
	add_co_u32 r4, 0x60000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 395 339                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:339
	ldg_b128 r38, r10, 0x0
	.loc	2 391 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:391:45
	ldg_b128 r168, r8, 0x0
	.loc	2 395 339                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:339
	ldg_b128 r42, r4, 0x0
	.loc	2 375 19                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:375:19
	sashr_i32 s1, 31, s0
	.loc	2 376 20                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:376:20
	sshl_b64 s4, 2, s0
	sadd_co_u32 s0, s8, s4
	saddc_co_u32 s1, s9, s5
	ldu_b32 s2, s0, 0x0
	.loc	2 377 19                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:377:19
	sadd_co_u32 s0, s44, s4
	saddc_co_u32 s1, s45, s5
	.loc	2 378 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:378:22
	sadd_co_u32 s4, s46, s4
	saddc_co_u32 s5, s47, s5
	and_b32 r6, r3, 16
	and_b32 r16, r3, 32
	.loc	2 377 19                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:377:19
	ldu_b32 s1, s0, 0x0
	.loc	2 378 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:378:22
	ldu_b32 s0, s4, 0x0
	mul_u24 r4, r0, 9
	add_u32 r7, r16, r0
	add_u32 r6, r6, r0
	and_b32 r5, 0x1fc0, r3
	and_b32 r4, r4, 8
	and_b32 r7, r7, 32
	and_b32 r6, r6, 16
	.loc	2 395 47                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:47
	add_u32 r8, 0x800, r5
	add_u32 r9, 0x1000, r5
	add_u32 r10, 0x1800, r5
	.loc	2 395 83 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:83
	or_b32 r11, r7, r4
	.loc	2 395 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:27
	or_b32 r4, r6, r4
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 395 253                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:253
	or3_b32 r12, r11, r5, r6
	.loc	2 395 27                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:27
	or3_b32 r13, r11, r8, r6
	or3_b32 r6, r11, r9, r6
	mov_b32 r11, s3
	or3_b32 r4, r4, r10, r7
	shl_add_u32 r12, 1, r12, r11
	shl_add_u32 r13, 1, r13, r11
	shl_add_u32 r6, 1, r6, r11
	shl_add_u32 r4, 1, r4, r11
	.loc	2 395 339                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:395:339
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r18
	arrive gvmcnt(3)
	sts_b128 r13, 0x0, r22
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r38
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r42
.Ltmp553:
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	xor_b32 r4, r3, r0
	and_b32 r6, r4, 32
	ashr_i32 r37, 31, r36
	sadd_co_u32 s8, 0x80000, s40
	add_u32 r6, r6, r0
.Ltmp554:
	.loc	2 398 3                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:398:3
	or_b32 r176, r30, r36
	mov_b32 r177, r37
	and_b32 r34, r0, 48
	shl_b64 r36, 1, r36
	or_b32 r35, r34, r36
	saddc_co_u32 s9, s41, 0
	and_b32 r7, r6, 32
	and_b32 r6, r4, 16
	sadd_co_u32 s3, 0x80, s14
	add_u32 r6, r6, r0
	and_b32 r33, r4, 56
	shr_b32 r4, 5, r0
	add_co_u32 r35, r35, s14
	mov_b32 r36, s15
	saddc_co_u32 s4, s15, 0
	addc_co_u32 r37, r37, r36
	and_b32 r11, r6, 16
	and_b32 r6, r0, 8
	add_shl_u32 r4, r4, r2, 4
	ashr_i32 r29, 31, r28
	sadd_co_u32 s18, 0x80080, s40
	add_co_u32 r178, 0x88, r35
	xadd_u32 r3, r6, r3, r0
	and_b32 r13, r4, 16
	shr_b32 r4, 4, r0
	or_b32 r182, r30, r28
	mov_b32 r181, r29
	shl_b64 r28, 1, r28
	and_b32 r12, r3, 8
	saddc_co_u32 s19, s41, 0
	shl_b32 r3, 6, r0
	add_shl_u32 r14, r4, r0, 3
	addc_co_u32 r179, r37, 0
	or_b32 r28, r34, r28
	and_b32 r15, 0x3c0, r3
	sadd_co_u32 s5, 0x100, s14
	add_co_u32 r28, r28, s14
	and_or_b32 r23, r14, 8, r13
	or_b32 r6, r7, r12
	or3_b32 r4, r6, r5, r11
	or3_b32 r5, r6, r8, r11
	saddc_co_u32 s6, s15, 0
	addc_co_u32 r29, r29, r36
	or_b32 r8, r11, r12
	or_b32 r17, r23, r15
	or_b32 r18, 0x400, r15
	or_b32 r19, r23, r16
	or_b32 r20, 0x800, r15
	or_b32 r21, 0xc00, r15
	or_b32 r22, 0x1000, r15
	or_b32 r24, 0x1400, r15
	or_b32 r25, 0x1800, r15
	or_b32 r26, 0x1c00, r15
	xor_b32 r27, r16, 32
	add_u32 r31, s7, r31
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:0
	shl_b64 r128, 0, 0
	sadd_co_u32 s20, 0x100, s40
	or3_b32 r6, r6, r9, r11
	or3_b32 r7, r8, r10, r7
	or_b32 r8, r17, r16
	or_b32 r16, r17, r27
	or_b32 r9, r19, r18
	or_b32 r10, r19, r20
	or_b32 r11, r19, r21
	or_b32 r12, r19, r22
	or_b32 r13, r19, r24
	or_b32 r14, r19, r25
	or_b32 r15, r19, r26
	or3_b32 r19, r23, r21, r27
	or3_b32 r17, r23, r18, r27
	or3_b32 r18, r23, r20, r27
	or3_b32 r20, r23, r22, r27
	or3_b32 r21, r23, r24, r27
	or3_b32 r22, r23, r25, r27
	or3_b32 r23, r23, r26, r27
	.loc	2 398 3                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:398:3
	add_co_u32 r184, 0x88, r28
	shl_add_u32 r4, 1, r4, 0
	or3_b32 r180, r31, r32, r33
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:0
	shl_b64 r130, 0, 0
	shl_b64 r132, 0, r128
	shl_b64 r136, 0, r128
	shl_b64 r140, 0, r128
	shl_b64 r144, 0, r128
	shl_b64 r156, 0, r128
	shl_b64 r160, 0, r128
	shl_b64 r172, 0, r128
	shl_b64 r32, 0, r128
	shl_b64 r36, 0, r128
	shl_b64 r40, 0, r128
	shl_b64 r44, 0, r128
	shl_b64 r48, 0, r128
	shl_b64 r52, 0, r128
	shl_b64 r56, 0, r128
	shl_b64 r60, 0, r128
	shl_b64 r64, 0, r128
	shl_b64 r68, 0, r128
	shl_b64 r72, 0, r128
	shl_b64 r76, 0, r128
	shl_b64 r80, 0, r128
	shl_b64 r84, 0, r128
	shl_b64 r88, 0, r128
	shl_b64 r92, 0, r128
	shl_b64 r124, 0, r128
	shl_b64 r120, 0, r128
	shl_b64 r116, 0, r128
	shl_b64 r112, 0, r128
	shl_b64 r108, 0, r128
	shl_b64 r104, 0, r128
	shl_b64 r100, 0, r128
	shl_b64 r96, 0, r128
	shr_b32 r3, 2, r0
	saddc_co_u32 s21, s41, 0
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
	shl_add_u32 r20, 1, r20, 0
	shl_add_u32 r21, 1, r21, 0
	shl_add_u32 r22, 1, r22, 0
	shl_add_u32 r23, 1, r23, 0
	add_u32 r24, 0x4000, r4
	add_u32 r25, 0x5000, r4
	add_u32 r26, 0x6000, r4
	add_u32 r27, 0x7000, r4
	.loc	2 398 3                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:398:3
	addc_co_u32 r185, r29, 0
	smov_b64 s14, 0
	shl_b64 r134, 0, r130
	shl_b64 r138, 0, r130
	shl_b64 r142, 0, r130
	shl_b64 r146, 0, r130
	shl_b64 r158, 0, r130
	shl_b64 r162, 0, r130
	shl_b64 r174, 0, r130
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
	bra LBB3_6
	.p2align	5
LBB3_5:                                 ; %for.inc965
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 398 31                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:398:31
	sadd_co_u32 s14, 0x80, s14
	add_co_u32 r178, 0x100, r178
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r179, r179, 0
	add_co_u32 r184, 0x100, r184
	scmp_eq_u64 0x800, s14
	addc_co_u32 r185, r185, 0
	.loc	2 398 3                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:398:3
	bra_smsks LBB3_12
LBB3_6:                                 ; %for.cond147.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 400 487 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:400:487
	add_u32 r28, r180, s14
	mad_i32 r30, r28, 2, s8
.Ltmp555:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp556:
	.loc	2 400 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:400:487
	add_u32 r29, 0x10000, r28
.Ltmp557:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s7, md
.Ltmp558:
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	add_i32 r190, 0x4000, r9
.Ltmp559:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp560:
	.loc	2 400 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:400:487
	mad_i32 r30, r29, 2, s8
.Ltmp561:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp562:
	.loc	2 400 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:400:487
	add_u32 r30, 0x20000, r28
	mad_i32 r186, r30, 2, s8
	add_u32 r31, 0x30000, r28
.Ltmp563:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp564:
	.loc	2 400 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:400:487
	mad_i32 r186, r31, 2, s8
	.loc	2 404 71                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:71
	add_co_u32 r183, r176, s14
.Ltmp565:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp566:
	.loc	2 404 71                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:71
	mov_b32 r186, s15
	addc_co_u32 r187, r177, r186
	add_co_u32 r188, r182, s14
	addc_co_u32 r189, r181, r186
	.loc	2 404 233 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:233
	or_b32 r188, r188, 32
	.loc	2 404 71                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:71
	shl_b64 r204, 1, r188
	.loc	2 408 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	add_i32 r189, 0x4000, r8
	.loc	2 404 233                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:233
	or_b32 r186, r183, 32
	.loc	2 404 71 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:71
	shl_b64 r202, 1, r186
	.loc	2 408 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r192, r189, 0x0
	lds_b128 r196, r190, 0x0
	.loc	2 404 71                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:71
	add_co_u32 r186, s3, r202
	mov_b32 r183, s4
	addc_co_u32 r187, r183, r203
	add_co_u32 r188, s3, r204
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r172, r192, r148, r172
	.loc	2 404 71                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:71
	addc_co_u32 r189, r183, r205
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	add_i32 r183, 0x4000, r10
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	mma_16x16x16f16 r124, r192, r152, r124
	mma_16x16x16f16 r172, r194, r150, r172
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r11
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	mma_16x16x16f16 r124, r194, r154, r124
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r196, r148, r160
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	mma_16x16x16f16 r120, r196, r152, r120
	mma_16x16x16f16 r160, r198, r150, r160
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r13
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	mma_16x16x16f16 r120, r198, r154, r120
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r148, r156
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	mma_16x16x16f16 r116, r206, r152, r116
	mma_16x16x16f16 r156, r208, r150, r156
	mma_16x16x16f16 r116, r208, r154, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r148, r144
	mma_16x16x16f16 r112, r190, r152, r112
	mma_16x16x16f16 r144, r192, r150, r144
	mma_16x16x16f16 r112, r192, r154, r112
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r15
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r148, r140
	mma_16x16x16f16 r108, r194, r152, r108
	mma_16x16x16f16 r140, r196, r150, r140
	mma_16x16x16f16 r108, r196, r154, r108
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r148, r136
	mma_16x16x16f16 r104, r198, r152, r104
	mma_16x16x16f16 r136, r200, r150, r136
	mma_16x16x16f16 r104, r200, r154, r104
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r148, r132
	mma_16x16x16f16 r100, r190, r152, r100
	mma_16x16x16f16 r132, r192, r150, r132
	mma_16x16x16f16 r100, r192, r154, r100
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r148, r128
	mma_16x16x16f16 r96, r194, r152, r96
	mma_16x16x16f16 r128, r196, r150, r128
	mma_16x16x16f16 r96, r196, r154, r96
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r19
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r198, r164, r172
	mma_16x16x16f16 r124, r198, r168, r124
	mma_16x16x16f16 r172, r200, r166, r172
	mma_16x16x16f16 r124, r200, r170, r124
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r190, r164, r160
	mma_16x16x16f16 r120, r190, r168, r120
	mma_16x16x16f16 r160, r192, r166, r160
	mma_16x16x16f16 r120, r192, r170, r120
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r21
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r164, r156
	mma_16x16x16f16 r116, r194, r168, r116
	mma_16x16x16f16 r156, r196, r166, r156
	mma_16x16x16f16 r116, r196, r170, r116
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r164, r144
	mma_16x16x16f16 r112, r198, r168, r112
	mma_16x16x16f16 r144, r200, r166, r144
	mma_16x16x16f16 r112, r200, r170, r112
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r23
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r164, r140
	mma_16x16x16f16 r108, r190, r168, r108
	mma_16x16x16f16 r140, r192, r166, r140
	mma_16x16x16f16 r108, r192, r170, r108
	.loc	2 408 41                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:408:41
	lds_b128 r190, r183, 0x0
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r164, r136
	mma_16x16x16f16 r104, r194, r168, r104
	mma_16x16x16f16 r136, r196, r166, r136
	mma_16x16x16f16 r104, r196, r170, r104
	.loc	2 404 49                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:49
	ldg_b128 r194, r178, -0x8
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r198, r164, r132
	mma_16x16x16f16 r100, r198, r168, r100
	mma_16x16x16f16 r132, r200, r166, r132
	mma_16x16x16f16 r100, r200, r170, r100
	.loc	2 404 49                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:49
	ldg_b128 r198, r184, -0x8
	.loc	2 414 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:414:58
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r190, r164, r128
	mma_16x16x16f16 r96, r190, r168, r96
	mma_16x16x16f16 r128, r192, r166, r128
	mma_16x16x16f16 r96, r192, r170, r96
	.loc	2 404 49                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:404:49
	ldg_b128 r190, r186, 0x0
	ldg_b128 r186, r188, 0x0
.Ltmp567:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp568:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp569:
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r222, r8, 0x0
	lds_b128 r226, r9, 0x0
	lds_b128 r230, r10, 0x0
	.loc	2 427 488                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:427:488
	add_u32 r183, 0x10040, r28
	mad_i32 r210, r183, 2, s40
	add_u32 r183, 0x20040, r28
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r222, r148, r92
	.loc	2 427 488                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:427:488
	mad_i32 r214, r183, 2, s40
	add_u32 r183, 0x30040, r28
	mad_i32 r206, r28, 2, s40
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	mma_16x16x16f16 r60, r222, r152, r60
	.loc	2 427 488                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:427:488
	mad_i32 r218, r183, 2, s40
.Ltmp570:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r206, r206, 0x80
	ldg_b128 r210, r210, 0x0
.Ltmp571:
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	mma_16x16x16f16 r92, r224, r150, r92
.Ltmp572:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r214, r214, 0x0
	ldg_b128 r218, r218, 0x0
.Ltmp573:
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	mma_16x16x16f16 r60, r224, r154, r60
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r222, r11, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r226, r148, r88
	mma_16x16x16f16 r56, r226, r152, r56
	mma_16x16x16f16 r88, r228, r150, r88
	mma_16x16x16f16 r56, r228, r154, r56
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r226, r12, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r230, r148, r84
	mma_16x16x16f16 r52, r230, r152, r52
	mma_16x16x16f16 r84, r232, r150, r84
	mma_16x16x16f16 r52, r232, r154, r52
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r230, r13, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r222, r148, r80
	mma_16x16x16f16 r48, r222, r152, r48
	mma_16x16x16f16 r80, r224, r150, r80
	mma_16x16x16f16 r48, r224, r154, r48
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r222, r14, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r226, r148, r76
	mma_16x16x16f16 r44, r226, r152, r44
	mma_16x16x16f16 r76, r228, r150, r76
	mma_16x16x16f16 r44, r228, r154, r44
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r226, r15, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r230, r148, r72
	mma_16x16x16f16 r40, r230, r152, r40
	mma_16x16x16f16 r72, r232, r150, r72
	mma_16x16x16f16 r40, r232, r154, r40
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r230, r16, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r222, r148, r68
	mma_16x16x16f16 r36, r222, r152, r36
	mma_16x16x16f16 r68, r224, r150, r68
	mma_16x16x16f16 r36, r224, r154, r36
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r222, r17, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r226, r148, r64
	mma_16x16x16f16 r32, r226, r152, r32
	mma_16x16x16f16 r64, r228, r150, r64
	mma_16x16x16f16 r32, r228, r154, r32
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r226, r18, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r230, r164, r92
	mma_16x16x16f16 r60, r230, r168, r60
	mma_16x16x16f16 r92, r232, r166, r92
	mma_16x16x16f16 r60, r232, r170, r60
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r230, r19, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r222, r164, r88
	mma_16x16x16f16 r56, r222, r168, r56
	mma_16x16x16f16 r88, r224, r166, r88
	mma_16x16x16f16 r56, r224, r170, r56
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r222, r20, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r226, r164, r84
	mma_16x16x16f16 r52, r226, r168, r52
	mma_16x16x16f16 r84, r228, r166, r84
	mma_16x16x16f16 r52, r228, r170, r52
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r226, r21, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r230, r164, r80
	mma_16x16x16f16 r48, r230, r168, r48
	mma_16x16x16f16 r80, r232, r166, r80
	mma_16x16x16f16 r48, r232, r170, r48
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r230, r22, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r222, r164, r76
	mma_16x16x16f16 r44, r222, r168, r44
	mma_16x16x16f16 r76, r224, r166, r76
	mma_16x16x16f16 r44, r224, r170, r44
	.loc	2 431 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:431:43
	lds_b128 r222, r23, 0x0
	.loc	2 437 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:437:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r226, r164, r72
	mma_16x16x16f16 r40, r226, r168, r40
	mma_16x16x16f16 r72, r228, r166, r72
	mma_16x16x16f16 r40, r228, r170, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r230, r164, r68
	mma_16x16x16f16 r36, r230, r168, r36
	mma_16x16x16f16 r68, r232, r166, r68
	mma_16x16x16f16 r36, r232, r170, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r222, r164, r64
	mma_16x16x16f16 r32, r222, r168, r32
	mma_16x16x16f16 r64, r224, r166, r64
	mma_16x16x16f16 r32, r224, r170, r32
.Ltmp574:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:21:41
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r210
	arrive gvmcnt(1)
	sts_b128 r26, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r27, 0x0, r218
.Ltmp575:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp576:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp577:
	.loc	2 447 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:447:487
	mad_i32 r206, r28, 2, s18
	.loc	2 449 16                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:449:16
	mov_b32 r208, 0x780
	mov_b32 r209, 0
	cmp_lg_u64 s22, s14, r208
.Ltmp578:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp579:
	.loc	2 447 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:447:487
	mad_i32 r206, r29, 2, s18
.Ltmp580:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp581:
	.loc	2 447 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:447:487
	mad_i32 r206, r30, 2, s18
.Ltmp582:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp583:
	.loc	2 447 487                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:447:487
	mad_i32 r206, r31, 2, s18
.Ltmp584:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp585:
	.loc	4 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp586:
	.loc	2 449 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:449:9
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmskz LBB3_8
; %bb.7:                                ; %for.cond630.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 452 71                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:452:71
	add_co_u32 r166, s5, r202
	mov_b32 r164, s6
	addc_co_u32 r167, r164, r203
	add_co_u32 r168, s5, r204
	addc_co_u32 r169, r164, r205
	.loc	2 452 49 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:452:49
	ldg_b128 r148, r178, 0x78
	ldg_b128 r152, r184, 0x78
	ldg_b128 r164, r166, 0x0
	ldg_b128 r168, r168, 0x0
LBB3_8:                                 ; %if.end666
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 457 43 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	add_i32 r183, 0x4000, r8
	add_i32 r202, 0x4000, r9
	snop 0
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r10
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r11
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r204, r194, r172
	mma_16x16x16f16 r124, r204, r198, r124
	mma_16x16x16f16 r172, r206, r196, r172
	mma_16x16x16f16 r124, r206, r200, r124
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r204, r202, 0x0
	add_i32 r202, 0x4000, r13
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r208, r194, r160
	mma_16x16x16f16 r120, r208, r198, r120
	mma_16x16x16f16 r160, r210, r196, r160
	mma_16x16x16f16 r120, r210, r200, r120
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r212, r194, r156
	mma_16x16x16f16 r116, r212, r198, r116
	mma_16x16x16f16 r156, r214, r196, r156
	mma_16x16x16f16 r116, r214, r200, r116
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r15
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r194, r144
	mma_16x16x16f16 r112, r204, r198, r112
	mma_16x16x16f16 r144, r206, r196, r144
	mma_16x16x16f16 r112, r206, r200, r112
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r194, r140
	mma_16x16x16f16 r108, r208, r198, r108
	mma_16x16x16f16 r140, r210, r196, r140
	mma_16x16x16f16 r108, r210, r200, r108
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r19
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r194, r136
	mma_16x16x16f16 r104, r212, r198, r104
	mma_16x16x16f16 r136, r214, r196, r136
	mma_16x16x16f16 r104, r214, r200, r104
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r194, r132
	mma_16x16x16f16 r100, r204, r198, r100
	mma_16x16x16f16 r132, r206, r196, r132
	mma_16x16x16f16 r100, r206, r200, r100
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r208, r194, r128
	mma_16x16x16f16 r96, r208, r198, r96
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r96, r210, r200, r96
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r190, r172
	mma_16x16x16f16 r124, r212, r186, r124
	mma_16x16x16f16 r172, r214, r192, r172
	mma_16x16x16f16 r124, r214, r188, r124
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r21
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r204, r190, r160
	mma_16x16x16f16 r120, r204, r186, r120
	mma_16x16x16f16 r160, r206, r192, r160
	mma_16x16x16f16 r120, r206, r188, r120
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r208, r190, r156
	mma_16x16x16f16 r116, r208, r186, r116
	mma_16x16x16f16 r156, r210, r192, r156
	mma_16x16x16f16 r116, r210, r188, r116
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r23
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r212, r190, r144
	mma_16x16x16f16 r112, r212, r186, r112
	mma_16x16x16f16 r144, r214, r192, r144
	mma_16x16x16f16 r112, r214, r188, r112
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r212, r183, 0x0
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r190, r140
	mma_16x16x16f16 r108, r204, r186, r108
	.loc	2 457 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:457:43
	lds_b128 r202, r202, 0x0
	.loc	2 463 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:463:58
	mma_16x16x16f16 r140, r206, r192, r140
	mma_16x16x16f16 r108, r206, r188, r108
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r208, r190, r136
	mma_16x16x16f16 r104, r208, r186, r104
	mma_16x16x16f16 r136, r210, r192, r136
	mma_16x16x16f16 r104, r210, r188, r104
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r212, r190, r132
	mma_16x16x16f16 r100, r212, r186, r100
	mma_16x16x16f16 r132, r214, r192, r132
	mma_16x16x16f16 r100, r214, r188, r100
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r202, r190, r128
	mma_16x16x16f16 r96, r202, r186, r96
	mma_16x16x16f16 r128, r204, r192, r128
	mma_16x16x16f16 r96, r204, r188, r96
.Ltmp587:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp588:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp589:
	.loc	2 475 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond774.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp590:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r24
	mad_i32 r204, r29, 2, s20
	mad_i32 r28, r28, 2, s20
	smov_b32 s7, md
	mad_i32 r202, r31, 2, s20
	smov_b32 md, s17
	mad_i32 r30, r30, 2, s20
	ldg_b128 r0, r28, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r204, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r30, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r202, 0x0 bsm
	smov_b32 md, s7
.Ltmp591:
LBB3_10:                                ; %if.end857
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r28, r8, 0x0
	lds_b128 r202, r9, 0x0
	lds_b128 r206, r10, 0x0
	.loc	2 496 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:496:9
	sandn_b64 cmsk, xmsk, s22
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r28, r194, r92
	mma_16x16x16f16 r60, r28, r198, r60
	mma_16x16x16f16 r92, r30, r196, r92
	mma_16x16x16f16 r60, r30, r200, r60
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r28, r11, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r194, r88
	mma_16x16x16f16 r56, r202, r198, r56
	mma_16x16x16f16 r88, r204, r196, r88
	mma_16x16x16f16 r56, r204, r200, r56
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r202, r12, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r194, r84
	mma_16x16x16f16 r52, r206, r198, r52
	mma_16x16x16f16 r84, r208, r196, r84
	mma_16x16x16f16 r52, r208, r200, r52
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r206, r13, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r28, r194, r80
	mma_16x16x16f16 r48, r28, r198, r48
	mma_16x16x16f16 r80, r30, r196, r80
	mma_16x16x16f16 r48, r30, r200, r48
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r28, r14, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r194, r76
	mma_16x16x16f16 r44, r202, r198, r44
	mma_16x16x16f16 r76, r204, r196, r76
	mma_16x16x16f16 r44, r204, r200, r44
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r202, r15, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r194, r72
	mma_16x16x16f16 r40, r206, r198, r40
	mma_16x16x16f16 r72, r208, r196, r72
	mma_16x16x16f16 r40, r208, r200, r40
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r206, r16, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r28, r194, r68
	mma_16x16x16f16 r36, r28, r198, r36
	mma_16x16x16f16 r68, r30, r196, r68
	mma_16x16x16f16 r36, r30, r200, r36
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r28, r17, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r202, r194, r64
	mma_16x16x16f16 r32, r202, r198, r32
	mma_16x16x16f16 r64, r204, r196, r64
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r194, r18, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	mma_16x16x16f16 r32, r204, r200, r32
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r198, r19, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r206, r190, r92
	mma_16x16x16f16 r60, r206, r186, r60
	mma_16x16x16f16 r92, r208, r192, r92
	mma_16x16x16f16 r60, r208, r188, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r28, r190, r88
	mma_16x16x16f16 r56, r28, r186, r56
	mma_16x16x16f16 r88, r30, r192, r88
	mma_16x16x16f16 r56, r30, r188, r56
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r28, r20, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r52, r194, r186, r52
	mma_16x16x16f16 r84, r196, r192, r84
	mma_16x16x16f16 r52, r196, r188, r52
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r194, r21, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r48, r198, r186, r48
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r188, r48
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r198, r22, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r28, r190, r76
	mma_16x16x16f16 r44, r28, r186, r44
	mma_16x16x16f16 r76, r30, r192, r76
	mma_16x16x16f16 r44, r30, r188, r44
	.loc	2 482 43                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:482:43
	lds_b128 r28, r23, 0x0
	.loc	2 488 58                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:488:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r194, r190, r72
	mma_16x16x16f16 r40, r194, r186, r40
	mma_16x16x16f16 r72, r196, r192, r72
	mma_16x16x16f16 r40, r196, r188, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r198, r190, r68
	mma_16x16x16f16 r36, r198, r186, r36
	mma_16x16x16f16 r68, r200, r192, r68
	mma_16x16x16f16 r36, r200, r188, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r28, r190, r64
	mma_16x16x16f16 r32, r28, r186, r32
	mma_16x16x16f16 r64, r30, r192, r64
	mma_16x16x16f16 r32, r30, r188, r32
	.loc	2 496 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:496:9
	bra_cmsks LBB3_5
; %bb.11:                               ; %for.body957.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp592:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
	barrier
	barrier
	barrier
.Ltmp593:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_5
.Ltmp594:
LBB3_12:                                ; %for.cond968.preheader
	.loc	4 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	and_b32 r5, r0, 15
	smov_b32 s3, 0x1e0
	and_or_b32 r14, r2, s3, r5
	sshl_b32 s3, 7, s16
	ssub_co_i32 s2, s2, s3
	sadd_co_i32 s4, s2, s0
	sadd_co_i32 s2, s1, s3
	add_u32 r6, s2, r14
	sashr_i32 s2, 31, s1
	mov_b32 r11, s2
	mov_b32 r10, s1
	mov_b32 r8, 0x80
	mad_u32 r8, s16, r8, r10
	add_co_u32 r8, r8, r14
	.loc	2 505 92 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:505:92
	cmp_ge_i32 s2, r14, s4
	cmp_lt_i32 s6, r14, s4
	sashr_i32 s1, 31, s0
	mov_b32 r2, s0
	addc_co_u32 r9, r9, 0
	mov_b32 r4, s1
	sub_co_u32 r8, r8, r2
	subb_co_u32 r9, r9, r4
	mov_b32 r7, 0
	sashr_i32 s5, 31, s4
	mov_b32 r4, 0
	.loc	2 505 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:505:9
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then985
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sub_u32 r2, r6, s0
	.loc	2 507 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:507:15
	cmp_ge_i32 s14, r6, s0
	cmp_gt_i32 s18, 0x2380, r2
	mov_b32 r4, 0
	.loc	2 507 148 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:507:148
	snop 2
	sand_b64 s18, s14, s18
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1012
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:148
	shl_b64 r10, 2, r8
	add_co_u32 r10, s12, r10
	mov_b32 r2, s13
	addc_co_u32 r11, r2, r11
	.loc	2 508 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:508:19
	snop 1
	ldg_b32 r4, r10, 0x0
LBB3_15:                                ; %Flow523
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_16:                                ; %for.inc1036
	sor_b64 xmsk, xmsk, s8
	.loc	2 505 63 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:505:63
	or_b32 r10, r14, 16
	mov_b32 r11, r7
	.loc	2 505 92 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:505:92
	cmp_lt_i64 s14, r10, s4
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 505 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:505:9
	snop 2
	and_xmsk s8, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then985.1
	.loc	2 507 102 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:507:102
	add_u32 r2, r6, 16
	.loc	2 507 15 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:507:15
	cmp_ge_i32 s14, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x2380, r2
	mov_b32 r2, 0
	.loc	2 507 148                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:507:148
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1012.1
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:148
	shl_b64 r6, 2, r8
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 508 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:508:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow522
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB3_20:                                ; %for.inc1036.1
	sor_b64 xmsk, xmsk, s8
	shr_b32 r0, 6, r0
	mul_u24 r0, 0x38000, r0
	smov_b32 s1, 0x1c00
	mad_u24 r0, r5, s1, r0
	smul_i32 s0, 0xe0000, s16
	shl_b32 r1, 8, r1
	and_or_b32 r0, r3, 12, r0
	add_u32 r1, r1, s0
	add_u32 r0, r1, r0
	shl_b64 r8, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1056
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(0)
	mul_f32 r1, r172, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r173, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r174, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r6, r175, r4
.Ltmp595:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp596:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp597:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp598:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp599:
LBB3_22:                                ; %if.end1111
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 22 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r6, r0, 2, s10
	.loc	2 533 226 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1056.1
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(1)
	mul_f32 r1, r160, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r161, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r162, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r10, r163, r4
.Ltmp600:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp601:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp602:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp603:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp604:
LBB3_24:                                ; %if.end1111.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 16
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r18, r1, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r18, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1056.2
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(2)
	mul_f32 r1, r156, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r157, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r158, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r10, r159, r4
.Ltmp605:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp606:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp607:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp608:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp609:
LBB3_26:                                ; %if.end1111.2
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 32
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r10, r1, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1056.3
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(3)
	mul_f32 r1, r144, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r145, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r146, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r12, r147, r4
.Ltmp610:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp611:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp612:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp613:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp614:
LBB3_28:                                ; %if.end1111.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 48
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r24, r1, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1056.4
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(4)
	mul_f32 r1, r140, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r141, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r142, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r12, r143, r4
.Ltmp615:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp616:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp617:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp618:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp619:
LBB3_30:                                ; %if.end1111.4
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 64
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r12, r1, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1056.5
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(5)
	mul_f32 r1, r136, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r137, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r138, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r15, r139, r4
.Ltmp620:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp621:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp622:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp623:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp624:
LBB3_32:                                ; %if.end1111.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, 0x50, r0
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 0
	stg_b64 r28, 0x0, r8 devc
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1056.6
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(6)
	mul_f32 r1, r132, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r133, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r134, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r8, r135, r4
.Ltmp625:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp626:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp627:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp628:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp629:
LBB3_34:                                ; %if.end1111.6
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, 0x60, r0
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r8, r1, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r8, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1056.7
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(7)
	mul_f32 r1, r128, r4
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r129, r4
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r130, r4
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r15, r131, r4
.Ltmp630:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp631:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp632:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp633:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp634:
LBB3_36:                                ; %if.end1111.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, 0x70, r0
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r26, r1, 2, s10
	.loc	2 517 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:66
	or_b32 r1, r14, 16
	.loc	2 517 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:95
	cmp_ge_i32 s0, r1, s4
	cmp_lt_i32 s4, r1, s4
	.loc	2 533 226 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	stg_b64 r26, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 517 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	snop 1
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1056.8
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(8)
	mul_f32 r1, r124, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r125, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r126, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r14, r127, r2
.Ltmp635:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp636:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp637:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp638:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp639:
LBB3_38:                                ; %if.end1111.8
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 162 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:162
	add_u32 r0, 0x1c000, r0
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r14, r0, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1056.9
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(9)
	mul_f32 r1, r120, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r121, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r122, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r20, r123, r2
.Ltmp640:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp641:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp642:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp643:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp644:
LBB3_40:                                ; %if.end1111.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 16
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1056.10
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(10)
	mul_f32 r1, r116, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r117, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r118, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r16, r119, r2
.Ltmp645:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp646:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp647:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp648:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp649:
LBB3_42:                                ; %if.end1111.10
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 32
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r16, r1, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r16, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1056.11
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(11)
	mul_f32 r1, r112, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r113, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r114, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r22, r115, r2
.Ltmp650:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp651:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp652:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp653:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp654:
LBB3_44:                                ; %if.end1111.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 48
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r112, r1, 2, s10
	shl_b64 r22, 0, 0
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 0
	stg_b64 r112, 0x0, r20 devc
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1056.12
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(12)
	mul_f32 r1, r108, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r109, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r110, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r20, r111, r2
.Ltmp655:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp656:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp657:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp658:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp659:
LBB3_46:                                ; %if.end1111.12
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, r0, 64
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r20, r1, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r20, 0x0, r22 devc
	shl_b64 r22, 0, 0
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1056.13
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(13)
	mul_f32 r1, r104, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r105, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r106, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r104, r107, r2
.Ltmp660:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp661:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp662:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp663:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r104
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp664:
LBB3_48:                                ; %if.end1111.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, 0x50, r0
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r104, r1, 2, s10
	shl_b64 r106, 0, 0
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 0
	stg_b64 r104, 0x0, r22 devc
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1056.14
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(14)
	mul_f32 r1, r100, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r101, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r102, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r22, r103, r2
.Ltmp665:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp666:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp667:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp668:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp669:
LBB3_50:                                ; %if.end1111.14
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r1, 0x60, r0
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r100, 0, 0
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 0
	stg_b64 r22, 0x0, r106 devc
	.loc	2 517 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:517:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1056.15
	.loc	2 522 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:522:22
	arrive gvmcnt(15)
	mul_f32 r1, r96, r2
	.loc	2 523 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:523:22
	mul_f32 r3, r97, r2
	.loc	2 524 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:524:22
	mul_f32 r5, r98, r2
	.loc	2 525 22                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:525:22
	mul_f32 r96, r99, r2
.Ltmp670:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp671:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp672:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp673:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp674:
LBB3_52:                                ; %if.end1111.15
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 533 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:183
	or_b32 r0, 0x70, r0
	.loc	2 533 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:22
	mad_i32 r0, r0, 2, s10
	.loc	2 533 226                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:533:226
	snop 1
	stg_b64 r0, 0x0, r100 devc
	.loc	2 537 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1219.1.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	shl_b64 r96, 0, 0
	snop 1
	stg_b64 r6, 0x100, r96 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow521
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s4, s4
	shl_b64 r96, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1158
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	arrive gvmcnt(16)
	mul_f32 r3, r92, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r93, r4
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r92, r94, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r93, r95, r4
.Ltmp675:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp676:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp677:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp678:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp679:
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r6, 0x100, r94 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r88, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r89, r4
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r6, r90, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r7, r91, r4
.Ltmp680:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp681:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp682:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp683:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp684:
LBB3_56:                                ; %if.end1219.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r18, 0x100, r96 devc
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1219.3.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r10, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_58:                                ; %Flow520
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1158.2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	arrive gvmcnt(17)
	mul_f32 r6, r86, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r7, r87, r4
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r84, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r85, r4
.Ltmp685:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp686:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp687:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp688:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp689:
	.loc	2 544 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	stg_b64 r10, 0x100, r18 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r80, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r81, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r10, r83, r4
.Ltmp690:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp691:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp692:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp693:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp694:
LBB3_60:                                ; %if.end1219.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1219.5.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r12, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_62:                                ; %Flow519
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1158.4
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	arrive gvmcnt(18)
	mul_f32 r6, r78, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r7, r79, r4
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r76, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r77, r4
.Ltmp695:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp696:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp697:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp698:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp699:
	.loc	2 544 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	stg_b64 r12, 0x100, r10 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r72, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r73, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r10, r75, r4
.Ltmp700:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp701:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp702:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp703:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp704:
LBB3_64:                                ; %if.end1219.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s4, s2
	sxor_b64 s2, xmsk, s4
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1219.7.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r8, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_8
LBB3_66:                                ; %Flow518
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s2, s2
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1158.6
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	arrive gvmcnt(19)
	mul_f32 r6, r70, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r7, r71, r4
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r68, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r69, r4
.Ltmp705:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp706:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp707:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp708:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp709:
	.loc	2 544 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	snop 0
	mul_f32 r7, r66, r4
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	stg_b64 r8, 0x100, r10 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r64, r4
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r5, r65, r4
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r4, r67, r4
.Ltmp710:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp711:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp712:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp713:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp714:
LBB3_68:                                ; %if.end1219.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1219.9.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r14, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_70:                                ; %Flow517
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s2, s2
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1158.8
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r4, r61, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r5, r62, r2
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r60, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r6, r63, r2
.Ltmp715:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp716:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp717:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp718:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp719:
	.loc	2 543 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	stg_b64 r14, 0x100, r8 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r56, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r6, r58, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r7, r59, r2
.Ltmp720:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp721:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp722:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp723:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp724:
LBB3_72:                                ; %if.end1219.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1219.11.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow516
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1158.10
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r4, r53, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r5, r54, r2
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r52, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r6, r55, r2
.Ltmp725:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp726:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp727:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp728:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp729:
	.loc	2 543 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	stg_b64 r16, 0x100, r8 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r48, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r6, r50, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r7, r51, r2
.Ltmp730:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp731:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp732:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp733:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp734:
LBB3_76:                                ; %if.end1219.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r112, 0x100, r4 devc
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1219.13.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r20, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_20
LBB3_78:                                ; %Flow515
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1158.12
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r4, r45, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r5, r46, r2
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r44, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r6, r47, r2
.Ltmp735:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp736:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp737:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp738:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp739:
	.loc	2 543 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	stg_b64 r20, 0x100, r8 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r40, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r6, r42, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r7, r43, r2
.Ltmp740:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp741:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp742:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp743:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp744:
LBB3_80:                                ; %if.end1219.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r104, 0x100, r4 devc
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	and_xmsk s2, s0
	sxor_b64 s0, xmsk, s2
	bra_xmsks LBB3_83
; %bb.81:                               ; %Flow
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB3_84
LBB3_82:                                ; %if.end1219.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 555 1                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:555:1
	snop 0
	endk
LBB3_83:                                ; %if.end1219.15.critedge
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r22, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_22
	.loc	2 537 9                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:537:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1158.14
	.loc	2 543 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	mul_f32 r4, r37, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r5, r38, r2
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r36, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r6, r39, r2
.Ltmp745:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp746:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp747:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp748:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp749:
	.loc	2 543 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:543:24
	snop 0
	mul_f32 r5, r33, r2
	.loc	2 553 234                       ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	stg_b64 r22, 0x100, r8 devc
	.loc	2 542 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:542:24
	mul_f32 r3, r32, r2
	.loc	2 544 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:544:24
	mul_f32 r6, r34, r2
	.loc	2 545 24                        ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:545:24
	mul_f32 r2, r35, r2
.Ltmp750:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp751:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp752:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp753:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp754:
	.loc	2 553 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:553:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 555 1                         ; /tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp:555:1
	snop 0
	endk
.Ltmp755:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 30
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
; codeLenInByte = 17136
; NumMTRegsForWarps/PEU: 234
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
	.byte	1                               ; Abbrev [1] 0xb:0x58a DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x60:0x271 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string17                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x71:0x45 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp5                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	167                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x85:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	113                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x91:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x9d:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xa9:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb6:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp53                         ; DW_AT_low_pc
	.long	.Ltmp54-.Ltmp53                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	183                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xca:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp53                         ; DW_AT_low_pc
	.long	.Ltmp54-.Ltmp53                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xdf:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	225                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xf3:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x108:0x6a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	229                             ; DW_AT_call_line
	.byte	11                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x114:0x25 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	113                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x120:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	100                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x12c:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x139:0x38 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x145:0x13 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp88                         ; DW_AT_low_pc
	.long	.Ltmp89-.Ltmp88                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	8                               ; Abbrev [8] 0x158:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x164:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	100                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x172:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp90                         ; DW_AT_low_pc
	.long	.Ltmp91-.Ltmp90                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	233                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x186:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp90                         ; DW_AT_low_pc
	.long	.Ltmp91-.Ltmp90                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x19b:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp92                         ; DW_AT_low_pc
	.long	.Ltmp93-.Ltmp92                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	278                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x1b0:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp92                         ; DW_AT_low_pc
	.long	.Ltmp93-.Ltmp92                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x1c5:0x6b DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	282                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1d2:0x25 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	113                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1de:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	100                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1ea:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1f7:0x38 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x203:0x13 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp125                        ; DW_AT_low_pc
	.long	.Ltmp126-.Ltmp125               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	8                               ; Abbrev [8] 0x216:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x222:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	100                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x230:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x23d:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	315                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x24a:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	314                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x257:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	313                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x264:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	343                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x271:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x27e:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x28b:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x29a:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	344                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x2a7:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x2b4:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x2c1:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x2d1:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2d7:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2dd:0x6 DW_TAG_subprogram
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2e3:0x6 DW_TAG_subprogram
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2e9:0x6 DW_TAG_subprogram
	.long	.Linfo_string16                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x2ef:0x2a5 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string18                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x300:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp553                        ; DW_AT_low_pc
	.long	.Ltmp554-.Ltmp553               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	397                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x315:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp553                        ; DW_AT_low_pc
	.long	.Ltmp554-.Ltmp553               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x32a:0x1a DW_TAG_inlined_subroutine
	.long	727                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	400                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x337:0xc DW_TAG_inlined_subroutine
	.long	721                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x344:0x2a DW_TAG_inlined_subroutine
	.long	739                             ; DW_AT_abstract_origin
	.quad	.Ltmp567                        ; DW_AT_low_pc
	.long	.Ltmp568-.Ltmp567               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	423                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x359:0x14 DW_TAG_inlined_subroutine
	.long	733                             ; DW_AT_abstract_origin
	.quad	.Ltmp567                        ; DW_AT_low_pc
	.long	.Ltmp568-.Ltmp567               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x36e:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp568                        ; DW_AT_low_pc
	.long	.Ltmp569-.Ltmp568               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	425                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x383:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp568                        ; DW_AT_low_pc
	.long	.Ltmp569-.Ltmp568               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x398:0xd DW_TAG_inlined_subroutine
	.long	745                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	427                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x3a5:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp575                        ; DW_AT_low_pc
	.long	.Ltmp576-.Ltmp575               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	445                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3ba:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp575                        ; DW_AT_low_pc
	.long	.Ltmp576-.Ltmp575               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x3cf:0x1a DW_TAG_inlined_subroutine
	.long	727                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	447                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3dc:0xc DW_TAG_inlined_subroutine
	.long	721                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x3e9:0x2a DW_TAG_inlined_subroutine
	.long	739                             ; DW_AT_abstract_origin
	.quad	.Ltmp587                        ; DW_AT_low_pc
	.long	.Ltmp588-.Ltmp587               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	472                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3fe:0x14 DW_TAG_inlined_subroutine
	.long	733                             ; DW_AT_abstract_origin
	.quad	.Ltmp587                        ; DW_AT_low_pc
	.long	.Ltmp588-.Ltmp587               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x413:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp588                        ; DW_AT_low_pc
	.long	.Ltmp589-.Ltmp588               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	474                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x428:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp588                        ; DW_AT_low_pc
	.long	.Ltmp589-.Ltmp588               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x43d:0x2a DW_TAG_inlined_subroutine
	.long	727                             ; DW_AT_abstract_origin
	.quad	.Ltmp590                        ; DW_AT_low_pc
	.long	.Ltmp591-.Ltmp590               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	477                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x452:0x14 DW_TAG_inlined_subroutine
	.long	721                             ; DW_AT_abstract_origin
	.quad	.Ltmp590                        ; DW_AT_low_pc
	.long	.Ltmp591-.Ltmp590               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x467:0x2a DW_TAG_inlined_subroutine
	.long	739                             ; DW_AT_abstract_origin
	.quad	.Ltmp592                        ; DW_AT_low_pc
	.long	.Ltmp593-.Ltmp592               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	498                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x47c:0x14 DW_TAG_inlined_subroutine
	.long	733                             ; DW_AT_abstract_origin
	.quad	.Ltmp592                        ; DW_AT_low_pc
	.long	.Ltmp593-.Ltmp592               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x491:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp593                        ; DW_AT_low_pc
	.long	.Ltmp594-.Ltmp593               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	500                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x4a6:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp593                        ; DW_AT_low_pc
	.long	.Ltmp594-.Ltmp593               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x4bb:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	526                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x4c8:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x4d5:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x4e2:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x4f1:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	527                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x4fe:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x50b:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges41                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x518:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges42                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x527:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges43                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	546                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x534:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges44                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x541:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges45                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x54e:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges46                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x55d:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges47                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	547                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x56a:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges48                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x577:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges49                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x584:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges50                ; DW_AT_ranges
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
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
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
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
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
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
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
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
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges35:
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges36:
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges37:
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
	.quad	0
	.quad	0
.Ldebug_ranges38:
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
	.quad	0
	.quad	0
.Ldebug_ranges39:
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges40:
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges41:
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
	.quad	0
	.quad	0
.Ldebug_ranges42:
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges43:
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges44:
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges45:
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
	.quad	0
	.quad	0
.Ldebug_ranges46:
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
	.quad	0
	.quad	0
.Ldebug_ranges47:
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges48:
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges49:
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
	.quad	0
	.quad	0
.Ldebug_ranges50:
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/tile-moe-scratch-20260814/v055-work/codegen_candidate_case3/v055_candidate_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=139
.Linfo_string3:
	.asciz	"moe_stage_gate_up_one_wave_7168" ; string offset=160
.Linfo_string4:
	.asciz	"moe_stage_gate_up_one_wave_2rows_7168" ; string offset=192
.Linfo_string5:
	.asciz	"continuous_pipeline_memcpy_async<16UL>" ; string offset=230
.Linfo_string6:
	.asciz	"__barrier"                     ; string offset=269
.Linfo_string7:
	.asciz	"__syncthreads"                 ; string offset=279
.Linfo_string8:
	.asciz	"exp2f"                         ; string offset=293
.Linfo_string9:
	.asciz	"__float2half_rn"               ; string offset=299
.Linfo_string10:
	.asciz	"__floats2half2_rn"             ; string offset=315
.Linfo_string11:
	.asciz	"__float22half2_rn"             ; string offset=333
.Linfo_string12:
	.asciz	"memcpy_async<16, false>"       ; string offset=351
.Linfo_string13:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=375
.Linfo_string14:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=402
.Linfo_string15:
	.asciz	"moe_select_wait_async_16"      ; string offset=497
.Linfo_string16:
	.asciz	"moe_memcpy_sync_16"            ; string offset=522
.Linfo_string17:
	.asciz	"kernel_kernel"                 ; string offset=541
.Linfo_string18:
	.asciz	"kernel_kernel_1"               ; string offset=555
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
    .mtreg_count:    234
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
    .mtreg_count:    234
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
