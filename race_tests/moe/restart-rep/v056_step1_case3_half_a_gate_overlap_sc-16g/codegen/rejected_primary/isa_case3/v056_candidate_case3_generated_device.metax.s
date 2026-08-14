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
	.file	2 "/tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3" "v056_candidate_case3_generated_device.cpp"
	.loc	2 128 0                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:128:0
; %bb.0:                                ; %entry
	sshl_b32 s6, 8, s6
	sadd_co_u32 prvt_lo, s2, s6
	ldu_b64 s6, s0, 0x30
	ldu_b128 s12, s0, 0x20
	ldu_b256 s16, s0, 0x0
	saddc_co_u32 prvt_hi, s3, 0
.Ltmp4:
	.loc	2 136 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:136:25
	scmp_gt_u32 s5, 31
	smov_b32 s33, 0
	.loc	2 136 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:136:7
	bra_smskz LBB2_2
; %bb.1:                                ; %if.else
	.loc	2 140 49 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:140:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 140 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:140:75
	sand_b32 s1, s4, 1
	.loc	2 140 54                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:140:54
	sor_b32 s24, s0, s1
	.loc	2 141 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:141:48
	sshl_b32 s0, 3, s5
	sand_b32 s0, s0, 8
	.loc	2 141 74 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:141:74
	sshr_b32 s1, 1, s4
	.loc	2 141 53                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:141:53
	sadd_co_i32 s0, s0, s1
	.loc	2 136 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:136:7
	bra_xmskz LBB2_3
	bra LBB2_4
LBB2_2:
                                        ; implicit-def: $streg_32bit_0
                                        ; implicit-def: $streg_32bit_24
LBB2_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	smov_b32 s24, s5
	smov_b32 s0, s4
LBB2_4:                                 ; %if.end
	mov_b32 r1, 0x60
	cmp_lt_u32 s8, s24, r1
	scmp_lt_u32 0x5f, s24
	smov_b32 s4, 0
	.loc	2 146 18 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:146:18
	bra_smsks LBB2_6
; %bb.5:                                ; %if.then25
	.loc	2 0 18 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:18
	smov_b32 s25, 0
	sshl_b64 s2, 2, s24
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	.loc	2 147 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:147:15
	ldu_b32 s4, s2, 0x0
LBB2_6:                                 ; %if.end28
	.loc	2 152 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:152:20
	arrive slcnt(0)
	sashr_i32 s5, 31, s4
	sshl_b64 s2, 2, s4
	sadd_co_u32 s10, s22, s2
	saddc_co_u32 s11, s23, s3
	.loc	2 153 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:153:22
	sadd_co_u32 s2, s20, s2
	saddc_co_u32 s3, s21, s3
	.loc	2 152 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:152:20
	ldu_b32 s1, s10, 0x0
	.loc	2 153 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:153:22
	ldu_b32 s2, s2, 0x0
	scmp_gt_u32 s0, 15
	and_b32 r1, 0x3ff, r0
	smul_i32 s3, 0xe00000, s4
	cmp_lt_u32 s10, s0, 16
	smul_i32 s4, 0xe0000, s0
	cmp_lt_u32 s18, r1, 64
	cmp_gt_u32 s20, r1, 63
	cmp_gt_u32 s22, 0x80, r1
	scsel_b64 s26, -1, 0
	sadd_co_i32 s3, s3, s4
	bfe_u32 r27, r0, 3, 3
	and_b32 r0, r0, 7
	xor_b32 r2, r27, r0
	scmp_ne_u64 s26, 0
	shl_b32 r60, 4, r2
	shl_b32 r28, 4, r0
	bra_smsks LBB2_72
; %bb.7:                                ; %for.body55.us.preheader
.Ltmp5:
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	mul_u24 r4, 0x3800, r27
	.loc	2 97 45                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:97:45
	shl_or_b32 r0, 7, r27, r28
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	mul_hi_u24 r5, 0x3800, r27
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r2, r4, r60
	shl_b64 r6, 0, s16
	mov_b32 r3, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_9
; %bb.8:                                ; %if.else.i1726.us
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r3, s25
	sor_b64 s26, s26, s30
LBB2_9:                                 ; %Flow746
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_11
; %bb.10:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	add_u32 r0, r3, r0
	add_co_u32 r2, r6, r2
	addc_co_u32 r3, r7, r5
.Ltmp6:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "maca_async.h"
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r0
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r2, 0x0 bsm
	smov_b32 md, s25
.Ltmp7:
LBB2_11:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp8:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r4
	addc_co_u32 r2, r5, 0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r3, r27, 8
	.loc	2 98 46                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r4, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_13
; %bb.12:                               ; %if.else.i.us
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_13:                                ; %Flow745
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_15
; %bb.14:                               ; %for.inc70.us.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r3, 7, r3, r28
	add_u32 r3, r5, r3
	add_co_u32 r4, r6, r4
	addc_co_u32 r5, r7, r2
.Ltmp9:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r3
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s25
.Ltmp10:
LBB2_15:                                ; %for.inc70.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp11:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r27, 16
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_17
; %bb.16:                               ; %if.else.i1726.us.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_17:                                ; %Flow744
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_19
; %bb.18:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.1.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp12:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp13:
LBB2_19:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp14:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r27, 24
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_21
; %bb.20:                               ; %if.else.i.us.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_21:                                ; %Flow743
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_23
; %bb.22:                               ; %for.inc70.us.1.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp15:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp16:
LBB2_23:                                ; %for.inc70.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp17:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r27, 32
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_25
; %bb.24:                               ; %if.else.i1726.us.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_25:                                ; %Flow742
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_27
; %bb.26:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.2.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp18:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp19:
LBB2_27:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp20:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r27, 40
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_29
; %bb.28:                               ; %if.else.i.us.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_29:                                ; %Flow741
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_31
; %bb.30:                               ; %for.inc70.us.2.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp21:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp22:
LBB2_31:                                ; %for.inc70.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp23:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r27, 48
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_33
; %bb.32:                               ; %if.else.i1726.us.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_33:                                ; %Flow740
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_35
; %bb.34:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.3.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp24:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp25:
LBB2_35:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp26:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r27, 56
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_37
; %bb.36:                               ; %if.else.i.us.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_37:                                ; %Flow739
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_39
; %bb.38:                               ; %for.inc70.us.3.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp27:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp28:
LBB2_39:                                ; %for.inc70.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp29:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, r27, 64
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_41
; %bb.40:                               ; %if.else.i1726.us.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_41:                                ; %Flow738
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.4.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp30:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp31:
LBB2_43:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp32:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x48, r27
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_45
; %bb.44:                               ; %if.else.i.us.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_45:                                ; %Flow737
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_47
; %bb.46:                               ; %for.inc70.us.4.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp33:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp34:
LBB2_47:                                ; %for.inc70.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp35:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x50, r27
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.else.i1726.us.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_49:                                ; %Flow736
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_51
; %bb.50:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.5.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp36:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp37:
LBB2_51:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp38:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x58, r27
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_53
; %bb.52:                               ; %if.else.i.us.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_53:                                ; %Flow735
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_55
; %bb.54:                               ; %for.inc70.us.5.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp39:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp40:
LBB2_55:                                ; %for.inc70.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp41:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x60, r27
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_57
; %bb.56:                               ; %if.else.i1726.us.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_57:                                ; %Flow734
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_59
; %bb.58:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.6.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp42:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp43:
LBB2_59:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp44:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x68, r27
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_61
; %bb.60:                               ; %if.else.i.us.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_61:                                ; %Flow733
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_63
; %bb.62:                               ; %for.inc70.us.6.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp45:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp46:
LBB2_63:                                ; %for.inc70.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp47:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r4, 0x70, r27
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	or_b32 r3, r0, r60
	shl_b64 r6, 0, s16
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_65
; %bb.64:                               ; %if.else.i1726.us.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r5, s25
	sor_b64 s26, s26, s30
LBB2_65:                                ; %Flow732
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_67
; %bb.66:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.7.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	mad_i32 r6, s3, 2, r6
	shl_or_b32 r4, 7, r4, r28
	add_co_u32 r6, r6, r3
	add_u32 r4, r5, r4
	addc_co_u32 r7, r7, r2
.Ltmp48:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r4
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s25
.Ltmp49:
LBB2_67:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1738.us.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
.Ltmp50:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, r0, r60
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:95:36
	or_b32 r3, 0x78, r27
	.loc	2 98 46                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:98:46
	addc_co_u32 r2, r2, 0
	shl_b64 r6, 0, s16
	mov_b32 r4, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s26, -1
	and_xmsk s4, s20
	snop 0
	bra_xmskz LBB2_69
; %bb.68:                               ; %if.else.i.us.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s25, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s26, -1, xmsk
	sand_b64 s30, s22, xmsk
	shl_b64 r6, 0, s14
	mov_b32 r4, s25
	sor_b64 s26, s26, s30
LBB2_69:                                ; %Flow730
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s26
	snop 0
	bra_xmskz LBB2_71
; %bb.70:                               ; %for.cond74.preheader.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	shl_or_b32 r3, 7, r3, r28
	mad_i32 r6, s3, 2, r6
	add_u32 r3, r4, r3
	add_co_u32 r4, r6, r0
	addc_co_u32 r5, r7, r2
.Ltmp51:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s26, r3
	smov_b32 s25, md
	snop 2
	smov_b32 md, s26
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s25
.Ltmp52:
LBB2_71:                                ; %Flow731
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
LBB2_72:                                ; %for.cond74.preheader
	shr_b32 r0, 6, r1
	mul_u24 r59, 0x38000, r0
	and_b32 r0, r1, 15
	.loc	2 180 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:180:41
	shl_b64 r208, 0, 0
	mul_u24 r61, 0x1c00, r0
	arrive slcnt(0)
	stp_b32 s33, 0xc, r0                    ; 4-byte Folded Spill
	shr_b32 r0, 1, r1
	smul_i32 s4, 0xe0000, s24
	and_b32 r62, r0, 24
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r206, 0, r208
	shl_b64 r192, 0, r208
	shl_b64 r190, 0, r208
	shl_b64 r196, 0, r208
	shl_b64 r194, 0, r208
	shl_b64 r188, 0, r208
	shl_b64 r186, 0, r208
	bra_cmsks LBB2_74
; %bb.73:                               ; %for.body78.us.preheader
	.loc	2 0 41 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:41
	or_b32 r3, r62, r61
	add_u32 r3, r3, r59
	add_u32 r6, r3, s4
	mov_b32 r7, 0
	.loc	2 176 35 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:176:35
	shl_b64 r4, 1, r6
	add_co_u32 r4, s12, r4
	mov_b32 r3, s13
	addc_co_u32 r5, r3, r5
	add_co_u32 r8, 0x38000, r4
	smov_b64 s26, 0x38000
	.loc	2 176 17 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:176:17
	ldg_b128 r186, r4, 0x0
	.loc	2 176 315                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:176:315
	or_b32 r4, r6, 32
	.loc	2 176 35                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:176:35
	addc_co_u32 r9, r5, 0
	mad_u32 r4, r4, 2, s12
	.loc	2 176 315                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:176:315
	mad_u32 r6, r6, 2, s26
	.loc	2 176 35                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:176:35
	add_co_u32 r6, s12, r6
	addc_co_u32 r7, r3, r7
	.loc	2 176 17                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:176:17
	ldg_b128 r194, r8, 0x0
	ldg_b128 r190, r4, 0x0
	ldg_b128 r206, r6, 0x40
LBB2_74:                                ; %for.cond139.preheader
	.loc	2 0 17                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:17
	shl_b32 r4, 3, r1
	shr_b32 r5, 5, r1
	shr_b32 r6, 4, r1
	mul_u24 r63, 0x3800, r27
	add_shl_u32 r5, r5, r0, 4
	add_shl_u32 r6, r6, r1, 3
	.loc	2 182 3 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:182:3
	or_b32 r64, r63, r60
	shl_b32 r3, 6, r1
	and_b32 r4, r4, 32
	smov_b32 s5, 0x3c0
	mul_hi_u24 r65, 0x3800, r27
	add_u32 r59, s4, r59
	mad_i32 r210, s3, 2, r64
	and_or_b32 r3, r3, s5, r4
	and_b32 r5, r5, 16
	and_b32 r6, r6, 8
	or3_b32 r18, r3, r5, r6
	add_u32 r59, r59, r61
	add_co_u32 r60, s14, r210
	mov_b32 r61, s15
	shl_or_b32 r57, 7, r27, r28
	shl_add_u32 r3, 1, r18, 0
	xor_b32 r11, r18, 32
	xor_b32 r12, 0x420, r18
	xor_b32 r13, 0x820, r18
	xor_b32 r14, 0xc20, r18
	xor_b32 r15, 0x1020, r18
	xor_b32 r16, 0x1420, r18
	xor_b32 r17, 0x1820, r18
	xor_b32 r18, 0x1c20, r18
	sadd_co_i32 s5, 0x4000, 0
	addc_co_u32 r61, r61, r211
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:0
	shl_b64 r66, 0, 0
	shl_b32 r19, 1, r11
	shl_b32 r20, 1, r12
	shl_b32 r21, 1, r13
	shl_b32 r22, 1, r14
	shl_b32 r23, 1, r15
	shl_b32 r24, 1, r16
	shl_b32 r25, 1, r17
	shl_b32 r26, 1, r18
	or_b32 r30, 0x400, r57
	stp_b32 s33, 0x10, r0                   ; 4-byte Folded Spill
	add_u32 r0, s5, r57
	or_b32 r32, 0x800, r57
	or_b32 r34, 0xc00, r57
	or_b32 r36, 0x1000, r57
	or_b32 r38, 0x1400, r57
	or_b32 r40, 0x1800, r57
	or_b32 r42, 0x1c00, r57
	or_b32 r44, 0x2000, r57
	or_b32 r46, 0x2400, r57
	or_b32 r48, 0x2800, r57
	or_b32 r50, 0x2c00, r57
	or_b32 r52, 0x3000, r57
	or_b32 r54, 0x3400, r57
	or_b32 r56, 0x3800, r57
	or_b32 r58, 0x3c00, r57
	.loc	2 182 3                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:182:3
	add_u32 r59, r59, r62
	add_co_u32 r62, s16, r210
	mov_b32 r63, s17
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:0
	shl_b64 r68, 0, 0
	shl_b64 r74, 0, r66
	shl_b64 r82, 0, r66
	shl_b64 r90, 0, r66
	shl_b64 r98, 0, r66
	shl_b64 r106, 0, r66
	shl_b64 r114, 0, r66
	shl_b64 r122, 0, r66
	shl_b64 r130, 0, r66
	shl_b64 r138, 0, r66
	shl_b64 r146, 0, r66
	shl_b64 r154, 0, r66
	shl_b64 r162, 0, r66
	shl_b64 r170, 0, r66
	shl_b64 r178, 0, r66
	shl_b64 r198, 0, r66
	shl_b64 r70, 0, r66
	shl_b64 r78, 0, r66
	shl_b64 r86, 0, r66
	shl_b64 r94, 0, r66
	shl_b64 r102, 0, r66
	shl_b64 r110, 0, r66
	shl_b64 r118, 0, r66
	shl_b64 r126, 0, r66
	shl_b64 r134, 0, r66
	shl_b64 r142, 0, r66
	shl_b64 r150, 0, r66
	shl_b64 r158, 0, r66
	shl_b64 r166, 0, r66
	shl_b64 r174, 0, r66
	shl_b64 r182, 0, r66
	shl_b64 r202, 0, r66
	add_u32 r28, s5, r32
	add_u32 r11, 0, r19
	add_u32 r12, 0, r20
	add_u32 r13, 0, r21
	add_u32 r14, 0, r22
	add_u32 r15, 0, r23
	add_u32 r16, 0, r24
	add_u32 r17, 0, r25
	add_u32 r18, 0, r26
	stp_b32 s33, 0x4, r0                    ; 4-byte Folded Spill
	add_u32 r33, s5, r34
	add_u32 r35, s5, r36
	add_u32 r37, s5, r38
	add_u32 r39, s5, r40
	add_u32 r41, s5, r42
	add_u32 r43, s5, r44
	add_u32 r45, s5, r46
	add_u32 r47, s5, r48
	add_u32 r49, s5, r50
	add_u32 r51, s5, r52
	add_u32 r53, s5, r54
	add_u32 r55, s5, r56
	add_u32 r4, 0x800, r3
	add_u32 r5, 0x1000, r3
	add_u32 r6, 0x1800, r3
	add_u32 r7, 0x2000, r3
	add_u32 r8, 0x2800, r3
	add_u32 r9, 0x3000, r3
	add_u32 r10, 0x3800, r3
	add_u32 r19, s5, r19
	add_u32 r20, s5, r20
	add_u32 r21, s5, r21
	add_u32 r22, s5, r22
	add_u32 r23, s5, r23
	add_u32 r24, s5, r24
	add_u32 r25, s5, r25
	add_u32 r26, s5, r26
	add_u32 r27, 0, r57
	add_u32 r57, s5, r58
	add_u32 r0, s5, r30
	add_u32 r2, 0, r30
	add_u32 r32, 0, r32
	add_u32 r34, 0, r34
	add_u32 r36, 0, r36
	add_u32 r38, 0, r38
	add_u32 r40, 0, r40
	add_u32 r42, 0, r42
	add_u32 r44, 0, r44
	add_u32 r46, 0, r46
	add_u32 r48, 0, r48
	add_u32 r50, 0, r50
	add_u32 r52, 0, r52
	add_u32 r54, 0, r54
	add_u32 r56, 0, r56
	add_u32 r58, 0, r58
	.loc	2 182 3                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:182:3
	addc_co_u32 r63, r63, r211
	smov_b64 s4, 0
	shl_b64 r76, 0, r68
	shl_b64 r84, 0, r68
	shl_b64 r92, 0, r68
	shl_b64 r100, 0, r68
	shl_b64 r108, 0, r68
	shl_b64 r116, 0, r68
	shl_b64 r124, 0, r68
	shl_b64 r132, 0, r68
	shl_b64 r140, 0, r68
	shl_b64 r148, 0, r68
	shl_b64 r156, 0, r68
	shl_b64 r164, 0, r68
	shl_b64 r172, 0, r68
	shl_b64 r180, 0, r68
	shl_b64 r200, 0, r68
	shl_b64 r72, 0, r68
	shl_b64 r80, 0, r68
	shl_b64 r88, 0, r68
	shl_b64 r96, 0, r68
	shl_b64 r104, 0, r68
	shl_b64 r112, 0, r68
	shl_b64 r120, 0, r68
	shl_b64 r128, 0, r68
	shl_b64 r136, 0, r68
	shl_b64 r144, 0, r68
	shl_b64 r152, 0, r68
	shl_b64 r160, 0, r68
	shl_b64 r168, 0, r68
	shl_b64 r176, 0, r68
	shl_b64 r184, 0, r68
	shl_b64 r204, 0, r68
	stp_b32 s33, 0x8, r28                   ; 4-byte Folded Spill
	bra LBB2_77
	.p2align	5
LBB2_75:                                ; %Flow677
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 3                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s26
LBB2_76:                                ; %for.inc1161
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 182 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:182:55
	sadd_co_u32 s4, 0x100, s4
	saddc_co_u32 s5, s5, 0
	scmp_eq_u64 0x3800, s4
	add_u32 r59, 0x80, r59
	bra_smsks LBB2_259
LBB2_77:                                ; %for.body143
                                        ; =>This Inner Loop Header: Depth=1
.Ltmp53:
	.file	4 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	shl_b64 r224, 0, 0
.Ltmp54:
	.loc	2 189 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:189:24
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r226, 0, 0
	bra_cmsks LBB2_79
; %bb.78:                               ; %if.then153
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:24
	mad_u32 r64, r59, 2, s12
	.loc	2 190 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:190:21
	snop 1
	ldg_b128 r224, r64, 0x80
LBB2_79:                                ; %if.end203
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 21 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:21
	shl_b64 r220, 0, 0
	shl_b64 r222, 0, 0
	.loc	2 189 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:189:24
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_81
; %bb.80:                               ; %if.then153.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:24
	mad_u32 r64, r59, 2, s12
	add_co_u32 r64, 0x38080, r64
	addc_co_u32 r65, r65, 0
	.loc	2 190 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:190:21
	snop 1
	ldg_b128 r220, r64, 0x0
LBB2_81:                                ; %if.end203.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 198 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:198:41
	lds_b128 r212, r3, 0x0
	lds_b128 r216, r4, 0x0
	lds_b128 r228, r5, 0x0
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	add_i32 r64, 0x4000, r3
	.loc	2 229 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:229:22
	sandn_b64 cmsk, xmsk, s8
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r198, r212, r186, r198
	mma_16x16x16f16 r122, r212, r194, r122
	mma_16x16x16f16 r198, r214, r188, r198
	mma_16x16x16f16 r122, r214, r196, r122
	.loc	2 198 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:198:41
	lds_b128 r212, r6, 0x0
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r216, r186, r178
	mma_16x16x16f16 r114, r216, r194, r114
	mma_16x16x16f16 r178, r218, r188, r178
	mma_16x16x16f16 r114, r218, r196, r114
	.loc	2 198 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:198:41
	lds_b128 r216, r7, 0x0
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r228, r186, r170
	mma_16x16x16f16 r106, r228, r194, r106
	mma_16x16x16f16 r170, r230, r188, r170
	mma_16x16x16f16 r106, r230, r196, r106
	.loc	2 198 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:198:41
	lds_b128 r228, r8, 0x0
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r212, r186, r162
	mma_16x16x16f16 r98, r212, r194, r98
	mma_16x16x16f16 r162, r214, r188, r162
	mma_16x16x16f16 r98, r214, r196, r98
	.loc	2 198 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:198:41
	lds_b128 r212, r9, 0x0
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r216, r186, r154
	mma_16x16x16f16 r90, r216, r194, r90
	mma_16x16x16f16 r154, r218, r188, r154
	mma_16x16x16f16 r90, r218, r196, r90
	.loc	2 198 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:198:41
	lds_b128 r216, r10, 0x0
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r228, r186, r146
	mma_16x16x16f16 r82, r228, r194, r82
	mma_16x16x16f16 r146, r230, r188, r146
	mma_16x16x16f16 r82, r230, r196, r82
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r228, r64, 0x0
	add_i32 r64, 0x4000, r4
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r212, r186, r138
	mma_16x16x16f16 r74, r212, r194, r74
	mma_16x16x16f16 r138, r214, r188, r138
	mma_16x16x16f16 r74, r214, r196, r74
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r212, r64, 0x0
	add_i32 r64, 0x4000, r5
	.loc	2 204 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:204:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r216, r186, r130
	mma_16x16x16f16 r66, r216, r194, r66
	mma_16x16x16f16 r130, r218, r188, r130
	mma_16x16x16f16 r66, r218, r196, r66
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r216, r64, 0x0
	add_i32 r64, 0x4000, r6
	.loc	2 218 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:218:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r202, r228, r186, r202
	mma_16x16x16f16 r126, r228, r194, r126
	mma_16x16x16f16 r202, r230, r188, r202
	mma_16x16x16f16 r126, r230, r196, r126
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r228, r64, 0x0
	add_i32 r64, 0x4000, r7
	.loc	2 218 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:218:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r212, r186, r182
	mma_16x16x16f16 r118, r212, r194, r118
	mma_16x16x16f16 r182, r214, r188, r182
	mma_16x16x16f16 r118, r214, r196, r118
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r212, r64, 0x0
	add_i32 r64, 0x4000, r8
	.loc	2 218 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:218:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r216, r186, r174
	mma_16x16x16f16 r110, r216, r194, r110
	mma_16x16x16f16 r174, r218, r188, r174
	mma_16x16x16f16 r110, r218, r196, r110
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r216, r64, 0x0
	add_i32 r64, 0x4000, r9
	.loc	2 218 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:218:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r228, r186, r166
	mma_16x16x16f16 r102, r228, r194, r102
	mma_16x16x16f16 r166, r230, r188, r166
	mma_16x16x16f16 r102, r230, r196, r102
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r228, r64, 0x0
	add_i32 r64, 0x4000, r10
	.loc	2 218 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:218:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r212, r186, r158
	mma_16x16x16f16 r94, r212, r194, r94
	mma_16x16x16f16 r158, r214, r188, r158
	mma_16x16x16f16 r94, r214, r196, r94
	.loc	2 212 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:212:43
	lds_b128 r212, r64, 0x0
	.loc	2 218 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:218:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r216, r186, r150
	mma_16x16x16f16 r86, r216, r194, r86
	mma_16x16x16f16 r150, r218, r188, r150
	mma_16x16x16f16 r86, r218, r196, r86
	arrive bsmcnt(1)
	mma_16x16x16f16 r142, r228, r186, r142
	mma_16x16x16f16 r78, r228, r194, r78
	mma_16x16x16f16 r142, r230, r188, r142
	mma_16x16x16f16 r78, r230, r196, r78
	arrive bsmcnt(0)
	mma_16x16x16f16 r134, r212, r186, r134
	mma_16x16x16f16 r70, r212, r194, r70
	mma_16x16x16f16 r134, r214, r188, r134
	shl_b64 r212, 0, 0
	mma_16x16x16f16 r70, r214, r196, r70
	snop 0
	shl_b64 r214, 0, 0
	.loc	2 229 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:229:22
	bra_cmsks LBB2_83
; %bb.82:                               ; %if.then386
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:22
	mad_u32 r64, r59, 2, s12
	.loc	2 230 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:230:19
	snop 1
	ldg_b128 r212, r64, 0xc0
LBB2_83:                                ; %if.end436
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:19
	shl_b64 r216, 0, 0
	shl_b64 r218, 0, 0
	.loc	2 229 22 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:229:22
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_85
; %bb.84:                               ; %if.then386.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:22
	mad_u32 r64, r59, 2, s12
	add_co_u32 r64, 0x380c0, r64
	addc_co_u32 r65, r65, 0
	.loc	2 230 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:230:19
	snop 1
	ldg_b128 r216, r64, 0x0
LBB2_85:                                ; %if.end436.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 237 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:237:43
	lds_b128 r228, r11, 0x0
	lds_b128 r232, r12, 0x0
	lds_b128 r236, r13, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r198, r228, r190, r198
	mma_16x16x16f16 r122, r228, r206, r122
	mma_16x16x16f16 r198, r230, r192, r198
	mma_16x16x16f16 r122, r230, r208, r122
	.loc	2 237 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:237:43
	lds_b128 r228, r14, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r232, r190, r178
	mma_16x16x16f16 r114, r232, r206, r114
	mma_16x16x16f16 r178, r234, r192, r178
	mma_16x16x16f16 r114, r234, r208, r114
	.loc	2 237 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:237:43
	lds_b128 r232, r15, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r236, r190, r170
	mma_16x16x16f16 r106, r236, r206, r106
	mma_16x16x16f16 r170, r238, r192, r170
	mma_16x16x16f16 r106, r238, r208, r106
	.loc	2 237 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:237:43
	lds_b128 r236, r16, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r228, r190, r162
	mma_16x16x16f16 r98, r228, r206, r98
	mma_16x16x16f16 r162, r230, r192, r162
	mma_16x16x16f16 r98, r230, r208, r98
	.loc	2 237 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:237:43
	lds_b128 r228, r17, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r232, r190, r154
	mma_16x16x16f16 r90, r232, r206, r90
	mma_16x16x16f16 r154, r234, r192, r154
	mma_16x16x16f16 r90, r234, r208, r90
	.loc	2 237 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:237:43
	lds_b128 r232, r18, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r236, r190, r146
	mma_16x16x16f16 r82, r236, r206, r82
	mma_16x16x16f16 r146, r238, r192, r146
	mma_16x16x16f16 r82, r238, r208, r82
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r236, r19, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r228, r190, r138
	mma_16x16x16f16 r74, r228, r206, r74
	mma_16x16x16f16 r138, r230, r192, r138
	mma_16x16x16f16 r74, r230, r208, r74
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r228, r20, 0x0
	.loc	2 243 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:243:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r232, r190, r130
	mma_16x16x16f16 r66, r232, r206, r66
	mma_16x16x16f16 r130, r234, r192, r130
	mma_16x16x16f16 r66, r234, r208, r66
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r232, r21, 0x0
	.loc	2 257 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:257:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r202, r236, r190, r202
	mma_16x16x16f16 r126, r236, r206, r126
	mma_16x16x16f16 r202, r238, r192, r202
	mma_16x16x16f16 r126, r238, r208, r126
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r236, r22, 0x0
	.loc	2 257 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:257:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r228, r190, r182
	mma_16x16x16f16 r118, r228, r206, r118
	mma_16x16x16f16 r182, r230, r192, r182
	mma_16x16x16f16 r118, r230, r208, r118
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r228, r23, 0x0
	.loc	2 257 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:257:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r232, r190, r174
	mma_16x16x16f16 r110, r232, r206, r110
	mma_16x16x16f16 r174, r234, r192, r174
	mma_16x16x16f16 r110, r234, r208, r110
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r232, r24, 0x0
	.loc	2 257 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:257:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r236, r190, r166
	mma_16x16x16f16 r102, r236, r206, r102
	mma_16x16x16f16 r166, r238, r192, r166
	mma_16x16x16f16 r102, r238, r208, r102
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r236, r25, 0x0
	.loc	2 257 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:257:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r228, r190, r158
	mma_16x16x16f16 r94, r228, r206, r94
	mma_16x16x16f16 r158, r230, r192, r158
	mma_16x16x16f16 r94, r230, r208, r94
	.loc	2 251 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:251:43
	lds_b128 r228, r26, 0x0
	.loc	2 257 55                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:257:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r232, r190, r150
	mma_16x16x16f16 r86, r232, r206, r86
	mma_16x16x16f16 r150, r234, r192, r150
	mma_16x16x16f16 r86, r234, r208, r86
	arrive bsmcnt(1)
	mma_16x16x16f16 r142, r236, r190, r142
	mma_16x16x16f16 r78, r236, r206, r78
	mma_16x16x16f16 r142, r238, r192, r142
	mma_16x16x16f16 r78, r238, r208, r78
	arrive bsmcnt(0)
	mma_16x16x16f16 r134, r228, r190, r134
	mma_16x16x16f16 r70, r228, r206, r70
	mma_16x16x16f16 r134, r230, r192, r134
	mma_16x16x16f16 r70, r230, r208, r70
.Ltmp55:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp56:
	.loc	2 267 13                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:267:13
	sandn_b64 cmsk, xmsk, s10
	snop 0
	bra_cmsks LBB2_132
; %bb.86:                               ; %if.then625
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp57:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_90
; %bb.87:                               ; %if.else.i1778
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_89
; %bb.88:                               ; %if.then12.i1780
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp58:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r28, s33, 0x4                   ; 4-byte Folded Reload
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0x80, r64
	addc_co_u32 r65, r65, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s25, r28
	snop 3
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp59:
LBB2_89:                                ; %Flow727
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
LBB2_90:                                ; %Flow728
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_92
; %bb.91:                               ; %if.then.i1785
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp60:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0x80, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r27
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp61:
LBB2_92:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
	smov_b64 s30, s18
	mov_b32 r64, r2
.Ltmp62:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_189
; %bb.93:                               ; %Flow726
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_190
.Ltmp63:
LBB2_94:                                ; %if.then625.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp64:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_191
LBB2_95:                                ; %Flow725
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_97
LBB2_96:                                ; %if.then.i1785.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp65:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0x38080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r32
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp66:
LBB2_97:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
.Ltmp67:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r34
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_194
; %bb.98:                               ; %Flow723
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_195
.Ltmp68:
LBB2_99:                                ; %if.then625.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp69:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_196
LBB2_100:                               ; %Flow722
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_102
LBB2_101:                               ; %if.then.i1785.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp70:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0x70080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r36
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp71:
LBB2_102:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
.Ltmp72:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r38
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_199
; %bb.103:                              ; %Flow720
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_200
.Ltmp73:
LBB2_104:                               ; %if.then625.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp74:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_201
LBB2_105:                               ; %Flow719
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_107
LBB2_106:                               ; %if.then.i1785.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp75:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0xa8080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r40
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp76:
LBB2_107:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
.Ltmp77:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r42
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_204
; %bb.108:                              ; %Flow717
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_205
.Ltmp78:
LBB2_109:                               ; %if.then625.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp79:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_206
LBB2_110:                               ; %Flow716
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_112
LBB2_111:                               ; %if.then.i1785.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp80:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0xe0080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r44
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp81:
LBB2_112:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
.Ltmp82:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r46
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_209
; %bb.113:                              ; %Flow714
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_210
.Ltmp83:
LBB2_114:                               ; %if.then625.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp84:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_211
LBB2_115:                               ; %Flow713
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_117
LBB2_116:                               ; %if.then.i1785.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp85:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0x118080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r48
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp86:
LBB2_117:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
.Ltmp87:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r50
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_214
; %bb.118:                              ; %Flow711
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_215
.Ltmp88:
LBB2_119:                               ; %if.then625.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp89:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_216
LBB2_120:                               ; %Flow710
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_122
LBB2_121:                               ; %if.then.i1785.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp90:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0x150080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r52
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp91:
LBB2_122:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
.Ltmp92:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r54
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_219
; %bb.123:                              ; %Flow708
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_220
.Ltmp93:
LBB2_124:                               ; %if.then625.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp94:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_221
LBB2_125:                               ; %Flow707
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_127
LBB2_126:                               ; %if.then.i1785.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp95:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r64, 0x188080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r56
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp96:
LBB2_127:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1790.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r228, 0, s16
.Ltmp97:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r58
	and_xmsk s26, s20
	snop 0
	bra_xmskz LBB2_129
; %bb.128:                              ; %if.else.i1752.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r57
LBB2_129:                               ; %Flow704
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_131
; %bb.130:                              ; %for.inc644.7.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp98:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0x1a4080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
.Ltmp99:
LBB2_131:                               ; %Flow705
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
LBB2_132:                               ; %for.inc644.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp100:
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp101:
	.loc	2 273 28                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:273:28
	mov_b32 r64, 0x3700
	mov_b32 r65, 0
	cmp_lg_u64 s26, s4, r64
	scmp_eq_u64 0x3700, s4
	snop 0
	bra_smsks LBB2_137
; %bb.133:                              ; %if.then655
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 28 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:28
	shl_b64 r186, 0, 0
	.loc	2 279 26 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:279:26
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r188, 0, 0
	bra_cmsks LBB2_135
; %bb.134:                              ; %if.then659
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 26 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:26
	mad_u32 r64, r59, 2, s12
	.loc	2 280 23 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:280:23
	snop 1
	ldg_b128 r186, r64, 0x100
LBB2_135:                               ; %if.end709
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 23 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:23
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	.loc	2 279 26 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:279:26
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_137
; %bb.136:                              ; %if.then659.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 26 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:26
	mad_u32 r64, r59, 2, s12
	add_co_u32 r64, 0x38100, r64
	addc_co_u32 r65, r65, 0
	.loc	2 280 23 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:280:23
	snop 1
	ldg_b128 r194, r64, 0x0
LBB2_137:                               ; %if.end718
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 289 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:289:43
	lds_b128 r244, r3, 0x0
	lds_b128 r248, r4, 0x0
	lds_b128 r252, r5, 0x0
	lds_b128 r28, r6, 0x0
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	add_i32 r64, 0x4000, r3
	.loc	2 316 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:316:9
	sandn_b64 cmsk, xmsk, s26
	.loc	2 295 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:295:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r198, r244, r224, r198
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r248, r224, r178
	arrive bsmcnt(1)
	mma_16x16x16f16 r170, r252, r224, r170
	.loc	2 289 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:289:43
	lds_b128 r240, r7, 0x0
	lds_b128 r236, r8, 0x0
	lds_b128 r232, r9, 0x0
	.loc	2 295 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:295:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r162, r28, r224, r162
	.loc	2 289 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:289:43
	lds_b128 r228, r10, 0x0
	.loc	2 295 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:295:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r154, r240, r224, r154
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r236, r224, r146
	arrive bsmcnt(1)
	mma_16x16x16f16 r138, r232, r224, r138
	arrive bsmcnt(0)
	mma_16x16x16f16 r130, r228, r224, r130
	mma_16x16x16f16 r122, r244, r220, r122
	mma_16x16x16f16 r114, r248, r220, r114
	mma_16x16x16f16 r106, r252, r220, r106
	mma_16x16x16f16 r98, r28, r220, r98
	mma_16x16x16f16 r90, r240, r220, r90
	mma_16x16x16f16 r82, r236, r220, r82
	mma_16x16x16f16 r74, r232, r220, r74
	mma_16x16x16f16 r66, r228, r220, r66
	mma_16x16x16f16 r198, r246, r226, r198
	mma_16x16x16f16 r178, r250, r226, r178
	mma_16x16x16f16 r170, r254, r226, r170
	mma_16x16x16f16 r162, r30, r226, r162
	mma_16x16x16f16 r154, r242, r226, r154
	mma_16x16x16f16 r146, r238, r226, r146
	mma_16x16x16f16 r138, r234, r226, r138
	mma_16x16x16f16 r130, r230, r226, r130
	mma_16x16x16f16 r122, r246, r222, r122
	mma_16x16x16f16 r114, r250, r222, r114
	mma_16x16x16f16 r106, r254, r222, r106
	mma_16x16x16f16 r98, r30, r222, r98
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r28, r64, 0x0
	add_i32 r64, 0x4000, r4
	.loc	2 295 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:295:58
	mma_16x16x16f16 r90, r242, r222, r90
	mma_16x16x16f16 r82, r238, r222, r82
	mma_16x16x16f16 r74, r234, r222, r74
	mma_16x16x16f16 r66, r230, r222, r66
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r228, r64, 0x0
	add_i32 r64, 0x4000, r5
	.loc	2 309 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:309:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r202, r28, r224, r202
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r232, r64, 0x0
	add_i32 r64, 0x4000, r6
	.loc	2 309 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:309:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r182, r228, r224, r182
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r236, r64, 0x0
	add_i32 r64, 0x4000, r7
	.loc	2 309 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:309:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r174, r232, r224, r174
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r240, r64, 0x0
	add_i32 r64, 0x4000, r8
	.loc	2 309 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:309:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r166, r236, r224, r166
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r244, r64, 0x0
	add_i32 r64, 0x4000, r9
	.loc	2 309 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:309:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r158, r240, r224, r158
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r248, r64, 0x0
	add_i32 r64, 0x4000, r10
	.loc	2 309 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:309:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r150, r244, r224, r150
	.loc	2 303 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:303:44
	lds_b128 r252, r64, 0x0
	.loc	2 309 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:309:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r142, r248, r224, r142
	arrive bsmcnt(0)
	mma_16x16x16f16 r134, r252, r224, r134
	mma_16x16x16f16 r126, r28, r220, r126
	mma_16x16x16f16 r118, r228, r220, r118
	mma_16x16x16f16 r110, r232, r220, r110
	mma_16x16x16f16 r102, r236, r220, r102
	mma_16x16x16f16 r94, r240, r220, r94
	mma_16x16x16f16 r86, r244, r220, r86
	mma_16x16x16f16 r78, r248, r220, r78
	mma_16x16x16f16 r70, r252, r220, r70
	mma_16x16x16f16 r202, r30, r226, r202
	mma_16x16x16f16 r182, r230, r226, r182
	mma_16x16x16f16 r174, r234, r226, r174
	mma_16x16x16f16 r166, r238, r226, r166
	mma_16x16x16f16 r158, r242, r226, r158
	mma_16x16x16f16 r150, r246, r226, r150
	mma_16x16x16f16 r142, r250, r226, r142
	mma_16x16x16f16 r134, r254, r226, r134
	mma_16x16x16f16 r126, r30, r222, r126
	mma_16x16x16f16 r118, r230, r222, r118
	mma_16x16x16f16 r110, r234, r222, r110
	mma_16x16x16f16 r102, r238, r222, r102
	mma_16x16x16f16 r94, r242, r222, r94
	mma_16x16x16f16 r86, r246, r222, r86
	mma_16x16x16f16 r78, r250, r222, r78
	mma_16x16x16f16 r70, r254, r222, r70
	bra_cmsks LBB2_142
; %bb.138:                              ; %for.cond888.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 57 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:57
	shl_b64 r190, 0, 0
	.loc	2 321 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:321:24
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r192, 0, 0
	bra_cmsks LBB2_140
; %bb.139:                              ; %if.then895
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:24
	mad_u32 r28, r59, 2, s12
	.loc	2 322 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:322:21
	snop 1
	ldg_b128 r190, r28, 0x140
LBB2_140:                               ; %if.end945
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 21 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:21
	shl_b64 r206, 0, 0
	shl_b64 r208, 0, 0
	.loc	2 321 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:321:24
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_142
; %bb.141:                              ; %if.then895.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:24
	mad_u32 r28, r59, 2, s12
	add_co_u32 r28, 0x38140, r28
	addc_co_u32 r29, r29, 0
	.loc	2 322 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:322:21
	snop 1
	ldg_b128 r206, r28, 0x0
LBB2_142:                               ; %if.end954
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 330 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:330:44
	lds_b128 r28, r11, 0x0
	lds_b128 r220, r12, 0x0
	lds_b128 r224, r13, 0x0
	.loc	2 357 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:357:9
	sandn_b64 cmsk, xmsk, s26
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r198, r28, r212, r198
	mma_16x16x16f16 r122, r28, r216, r122
	mma_16x16x16f16 r198, r30, r214, r198
	mma_16x16x16f16 r122, r30, r218, r122
	.loc	2 330 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:330:44
	lds_b128 r28, r14, 0x0
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r220, r212, r178
	mma_16x16x16f16 r114, r220, r216, r114
	mma_16x16x16f16 r178, r222, r214, r178
	mma_16x16x16f16 r114, r222, r218, r114
	.loc	2 330 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:330:44
	lds_b128 r220, r15, 0x0
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r224, r212, r170
	mma_16x16x16f16 r106, r224, r216, r106
	mma_16x16x16f16 r170, r226, r214, r170
	mma_16x16x16f16 r106, r226, r218, r106
	.loc	2 330 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:330:44
	lds_b128 r224, r16, 0x0
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r28, r212, r162
	mma_16x16x16f16 r98, r28, r216, r98
	mma_16x16x16f16 r162, r30, r214, r162
	mma_16x16x16f16 r98, r30, r218, r98
	.loc	2 330 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:330:44
	lds_b128 r28, r17, 0x0
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r220, r212, r154
	mma_16x16x16f16 r90, r220, r216, r90
	mma_16x16x16f16 r154, r222, r214, r154
	mma_16x16x16f16 r90, r222, r218, r90
	.loc	2 330 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:330:44
	lds_b128 r220, r18, 0x0
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r224, r212, r146
	mma_16x16x16f16 r82, r224, r216, r82
	mma_16x16x16f16 r146, r226, r214, r146
	mma_16x16x16f16 r82, r226, r218, r82
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r224, r19, 0x0
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r28, r212, r138
	mma_16x16x16f16 r74, r28, r216, r74
	mma_16x16x16f16 r138, r30, r214, r138
	mma_16x16x16f16 r74, r30, r218, r74
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r28, r20, 0x0
	.loc	2 336 59                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:336:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r220, r212, r130
	mma_16x16x16f16 r66, r220, r216, r66
	mma_16x16x16f16 r130, r222, r214, r130
	mma_16x16x16f16 r66, r222, r218, r66
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r220, r21, 0x0
	.loc	2 350 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:350:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r202, r224, r212, r202
	mma_16x16x16f16 r126, r224, r216, r126
	mma_16x16x16f16 r202, r226, r214, r202
	mma_16x16x16f16 r126, r226, r218, r126
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r224, r22, 0x0
	.loc	2 350 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:350:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r28, r212, r182
	mma_16x16x16f16 r118, r28, r216, r118
	mma_16x16x16f16 r182, r30, r214, r182
	mma_16x16x16f16 r118, r30, r218, r118
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r28, r23, 0x0
	.loc	2 350 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:350:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r220, r212, r174
	mma_16x16x16f16 r110, r220, r216, r110
	mma_16x16x16f16 r174, r222, r214, r174
	mma_16x16x16f16 r110, r222, r218, r110
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r220, r24, 0x0
	.loc	2 350 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:350:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r224, r212, r166
	mma_16x16x16f16 r102, r224, r216, r102
	mma_16x16x16f16 r166, r226, r214, r166
	mma_16x16x16f16 r102, r226, r218, r102
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r224, r25, 0x0
	.loc	2 350 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:350:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r28, r212, r158
	mma_16x16x16f16 r94, r28, r216, r94
	mma_16x16x16f16 r158, r30, r214, r158
	mma_16x16x16f16 r94, r30, r218, r94
	.loc	2 344 44                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:344:44
	lds_b128 r28, r26, 0x0
	.loc	2 350 57                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:350:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r220, r212, r150
	mma_16x16x16f16 r86, r220, r216, r86
	mma_16x16x16f16 r150, r222, r214, r150
	mma_16x16x16f16 r86, r222, r218, r86
	arrive bsmcnt(1)
	mma_16x16x16f16 r142, r224, r212, r142
	mma_16x16x16f16 r78, r224, r216, r78
	mma_16x16x16f16 r142, r226, r214, r142
	mma_16x16x16f16 r78, r226, r218, r78
	arrive bsmcnt(0)
	mma_16x16x16f16 r134, r28, r212, r134
	mma_16x16x16f16 r70, r28, r216, r70
	mma_16x16x16f16 r134, r30, r214, r134
	mma_16x16x16f16 r70, r30, r218, r70
	bra_cmsks LBB2_76
; %bb.143:                              ; %if.then1129
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp102:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp103:
	.loc	2 361 15                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:361:15
	sandn_b64 cmsk, xmsk, s10
	snop 0
	bra_cmsks LBB2_76
; %bb.144:                              ; %if.then1137
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp104:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_148
; %bb.145:                              ; %if.else.i1830
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_147
; %bb.146:                              ; %if.then12.i1832
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp105:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r30, s33, 0x4                   ; 4-byte Folded Reload
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0x100, r64
	addc_co_u32 r29, r65, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s25, r30
	snop 3
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp106:
LBB2_147:                               ; %Flow699
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
LBB2_148:                               ; %Flow700
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_150
; %bb.149:                              ; %if.then.i1837
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp107:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0x100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r27
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp108:
LBB2_150:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
	smov_b64 s30, s18
	mov_b32 r64, r2
.Ltmp109:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_224
; %bb.151:                              ; %Flow698
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_225
.Ltmp110:
LBB2_152:                               ; %if.then1137.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp111:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_226
LBB2_153:                               ; %Flow697
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_155
LBB2_154:                               ; %if.then.i1837.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp112:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0x38100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r32
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp113:
LBB2_155:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
.Ltmp114:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r34
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_229
; %bb.156:                              ; %Flow695
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_230
.Ltmp115:
LBB2_157:                               ; %if.then1137.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp116:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_231
LBB2_158:                               ; %Flow694
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_160
LBB2_159:                               ; %if.then.i1837.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp117:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0x70100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r36
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp118:
LBB2_160:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
.Ltmp119:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r38
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_234
; %bb.161:                              ; %Flow692
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_235
.Ltmp120:
LBB2_162:                               ; %if.then1137.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp121:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_236
LBB2_163:                               ; %Flow691
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_165
LBB2_164:                               ; %if.then.i1837.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp122:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0xa8100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r40
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp123:
LBB2_165:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
.Ltmp124:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r42
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_239
; %bb.166:                              ; %Flow689
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_240
.Ltmp125:
LBB2_167:                               ; %if.then1137.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp126:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_241
LBB2_168:                               ; %Flow688
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_170
LBB2_169:                               ; %if.then.i1837.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp127:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0xe0100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r44
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp128:
LBB2_170:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
.Ltmp129:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r46
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_244
; %bb.171:                              ; %Flow686
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_245
.Ltmp130:
LBB2_172:                               ; %if.then1137.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp131:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_246
LBB2_173:                               ; %Flow685
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_175
LBB2_174:                               ; %if.then.i1837.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp132:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0x118100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r48
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp133:
LBB2_175:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
.Ltmp134:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r50
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_249
; %bb.176:                              ; %Flow683
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_250
.Ltmp135:
LBB2_177:                               ; %if.then1137.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp136:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_251
LBB2_178:                               ; %Flow682
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_180
LBB2_179:                               ; %if.then.i1837.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp137:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0x150100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r52
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp138:
LBB2_180:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
.Ltmp139:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	smov_b64 s30, -1
	mov_b32 r64, r54
	and_xmsk s26, s20
	snop 0
	bra_xmsks LBB2_254
; %bb.181:                              ; %Flow680
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmsks LBB2_255
.Ltmp140:
LBB2_182:                               ; %if.then1137.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
.Ltmp141:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmsks LBB2_256
LBB2_183:                               ; %Flow679
                                        ;   in Loop: Header=BB2_77 Depth=1
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmskz LBB2_185
LBB2_184:                               ; %if.then.i1837.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp142:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r62, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r63, r65
	add_co_u32 r28, 0x188100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r56
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp143:
LBB2_185:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1842.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s26
	shl_b64 r212, 0, s16
	smov_b64 s30, s18
	mov_b32 r64, r58
.Ltmp144:
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	snop 0
	bra_xmskz LBB2_187
; %bb.186:                              ; %if.else.i1804.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	sandn_b64 s30, s18, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r57
LBB2_187:                               ; %Flow
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s26
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_75
; %bb.188:                              ; %for.inc1156.7.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp145:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0x1a4100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	bra LBB2_75
.Ltmp146:
	.p2align	5
LBB2_189:                               ; %if.else.i1752
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, s18, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r0
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_94
LBB2_190:                               ; %for.inc644.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp147:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0x1c080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp148:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_95
LBB2_191:                               ; %if.else.i1778.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_193
; %bb.192:                              ; %if.then12.i1780.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp149:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r28, s33, 0x8                   ; 4-byte Folded Reload
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0x38080, r64
	addc_co_u32 r65, r65, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s25, r28
	snop 3
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp150:
LBB2_193:                               ; %Flow724
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_96
	bra LBB2_97
.Ltmp151:
	.p2align	5
LBB2_194:                               ; %if.else.i1752.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r33
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_99
LBB2_195:                               ; %for.inc644.1.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp152:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0x54080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp153:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_100
LBB2_196:                               ; %if.else.i1778.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_198
; %bb.197:                              ; %if.then12.i1780.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp154:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0x70080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r35
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp155:
LBB2_198:                               ; %Flow721
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_101
	bra LBB2_102
.Ltmp156:
	.p2align	5
LBB2_199:                               ; %if.else.i1752.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r37
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_104
LBB2_200:                               ; %for.inc644.2.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp157:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0x8c080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp158:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_105
LBB2_201:                               ; %if.else.i1778.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_203
; %bb.202:                              ; %if.then12.i1780.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp159:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0xa8080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r39
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp160:
LBB2_203:                               ; %Flow718
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_106
	bra LBB2_107
.Ltmp161:
	.p2align	5
LBB2_204:                               ; %if.else.i1752.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r41
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_109
LBB2_205:                               ; %for.inc644.3.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp162:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0xc4080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp163:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_110
LBB2_206:                               ; %if.else.i1778.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_208
; %bb.207:                              ; %if.then12.i1780.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp164:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0xe0080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r43
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp165:
LBB2_208:                               ; %Flow715
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_111
	bra LBB2_112
.Ltmp166:
	.p2align	5
LBB2_209:                               ; %if.else.i1752.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r45
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_114
LBB2_210:                               ; %for.inc644.4.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp167:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0xfc080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp168:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_115
LBB2_211:                               ; %if.else.i1778.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_213
; %bb.212:                              ; %if.then12.i1780.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp169:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0x118080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r47
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp170:
LBB2_213:                               ; %Flow712
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_116
	bra LBB2_117
.Ltmp171:
	.p2align	5
LBB2_214:                               ; %if.else.i1752.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r49
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_119
LBB2_215:                               ; %for.inc644.5.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp172:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0x134080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp173:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_120
LBB2_216:                               ; %if.else.i1778.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_218
; %bb.217:                              ; %if.then12.i1780.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp174:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0x150080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r51
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp175:
LBB2_218:                               ; %Flow709
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_121
	bra LBB2_122
.Ltmp176:
	.p2align	5
LBB2_219:                               ; %if.else.i1752.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r228, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r53
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_124
LBB2_220:                               ; %for.inc644.6.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp177:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r228, r210
	addc_co_u32 r228, r229, r211
	add_co_u32 r65, r65, s4
	mov_b32 r229, s5
	addc_co_u32 r228, r228, r229
	add_co_u32 r230, 0x16c080, r65
	addc_co_u32 r231, r228, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r230, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp178:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_125
LBB2_221:                               ; %if.else.i1778.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_223
; %bb.222:                              ; %if.then12.i1780.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp179:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r64, 0x188080, r64
	addc_co_u32 r65, r65, 0
	rfl_b32 s25, r55
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r64, 0x0 bsm
	smov_b32 md, s3
.Ltmp180:
LBB2_223:                               ; %Flow706
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_126
	bra LBB2_127
.Ltmp181:
LBB2_224:                               ; %if.else.i1804
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, s18, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r0
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_152
LBB2_225:                               ; %for.inc1156.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp182:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0x1c100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp183:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_153
LBB2_226:                               ; %if.else.i1830.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_228
; %bb.227:                              ; %if.then12.i1832.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp184:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r30, s33, 0x8                   ; 4-byte Folded Reload
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0x38100, r64
	addc_co_u32 r29, r65, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s25, r30
	snop 3
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp185:
LBB2_228:                               ; %Flow696
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_154
	bra LBB2_155
.Ltmp186:
LBB2_229:                               ; %if.else.i1804.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r33
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_157
LBB2_230:                               ; %for.inc1156.1.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp187:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0x54100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp188:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_158
LBB2_231:                               ; %if.else.i1830.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_233
; %bb.232:                              ; %if.then12.i1832.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp189:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0x70100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r35
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp190:
LBB2_233:                               ; %Flow693
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_159
	bra LBB2_160
.Ltmp191:
LBB2_234:                               ; %if.else.i1804.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r37
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_162
LBB2_235:                               ; %for.inc1156.2.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp192:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0x8c100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp193:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_163
LBB2_236:                               ; %if.else.i1830.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_238
; %bb.237:                              ; %if.then12.i1832.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp194:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0xa8100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r39
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp195:
LBB2_238:                               ; %Flow690
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_164
	bra LBB2_165
.Ltmp196:
LBB2_239:                               ; %if.else.i1804.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r41
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_167
LBB2_240:                               ; %for.inc1156.3.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp197:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0xc4100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp198:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_168
LBB2_241:                               ; %if.else.i1830.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_243
; %bb.242:                              ; %if.then12.i1832.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp199:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0xe0100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r43
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp200:
LBB2_243:                               ; %Flow687
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_169
	bra LBB2_170
.Ltmp201:
LBB2_244:                               ; %if.else.i1804.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r45
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_172
LBB2_245:                               ; %for.inc1156.4.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp202:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0xfc100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp203:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_173
LBB2_246:                               ; %if.else.i1830.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_248
; %bb.247:                              ; %if.then12.i1832.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp204:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0x118100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r47
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp205:
LBB2_248:                               ; %Flow684
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_174
	bra LBB2_175
.Ltmp206:
LBB2_249:                               ; %if.else.i1804.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r49
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_177
LBB2_250:                               ; %for.inc1156.5.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp207:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0x134100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp208:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_178
LBB2_251:                               ; %if.else.i1830.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_253
; %bb.252:                              ; %if.then12.i1832.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp209:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0x150100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r51
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp210:
LBB2_253:                               ; %Flow681
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_179
	bra LBB2_180
.Ltmp211:
LBB2_254:                               ; %if.else.i1804.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 99 7 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s30, -1, xmsk
	sand_b64 s34, s22, xmsk
	shl_b64 r212, 0, s14
	sor_b64 s30, s30, s34
	mov_b32 r64, r53
	sor_b64 xmsk, xmsk, s26
	and_xmsk s26, s30
	snop 0
	bra_xmskz LBB2_182
LBB2_255:                               ; %for.inc1156.6.sink.split
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp212:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r65, r212, r210
	addc_co_u32 r212, r213, r211
	add_co_u32 r65, r65, s4
	mov_b32 r213, s5
	addc_co_u32 r212, r212, r213
	add_co_u32 r28, 0x16c100, r65
	addc_co_u32 r29, r212, 0
	rfl_b32 s25, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s26
.Ltmp213:
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	and_xmsk s26, s20
	sxor_b64 s26, xmsk, s26
	bra_xmskz LBB2_183
LBB2_256:                               ; %if.else.i1830.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 103 14                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:103:14
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_258
; %bb.257:                              ; %if.then12.i1832.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp214:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r64, r60, s4
	mov_b32 r65, s5
	addc_co_u32 r65, r61, r65
	add_co_u32 r28, 0x188100, r64
	addc_co_u32 r29, r65, 0
	rfl_b32 s25, r55
	smov_b32 s3, md
	snop 2
	smov_b32 md, s25
	snop 0
	ldg_b128 r0, r28, 0x0 bsm
	smov_b32 md, s3
.Ltmp215:
LBB2_258:                               ; %Flow678
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:99:7
	or_xmsk s26, s26
	sxor_b64 xmsk, xmsk, s26
	snop 0
	bra_xmsks LBB2_184
	bra LBB2_185
.Ltmp216:
LBB2_259:                               ; %for.cond1164.preheader
	.loc	2 410 66                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:66
	ldp_b32 r0, s33, 0xc                    ; 4-byte Folded Reload
	ldp_b32 r2, s33, 0x10                   ; 4-byte Folded Reload
	sshl_b32 s3, 7, s24
	ssub_co_i32 s1, s1, s3
	sadd_co_i32 s1, s1, s2
	smov_b32 s2, 0x1e0
	shl_b32 r3, 10, r1
	shl_b32 r4, 11, r1
	shr_b32 r1, 2, r1
	sshl_b32 s4, 18, s24
	and_b32 r3, 0xf0000, r3
	and_b32 r4, 0x7800, r4
	sshl_b32 s0, 7, s0
	and_b32 r1, r1, 12
	or3_b32 r1, r4, r3, r1
	sadd_co_i32 s0, s0, s4
	arrive gvmcnt(0)
	and_or_b32 r0, r2, s2, r0
	.loc	2 410 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:95
	cmp_lt_i32 s2, r0, s1
	add_u32 r2, s0, r1
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	snop 2
	sand_b64 s2, s10, s2
	sand_b64 s2, s8, s2
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_277
; %bb.260:                              ; %if.end1350
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_278
LBB2_261:                               ; %if.end1350.1
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_279
LBB2_262:                               ; %if.end1350.2
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_280
LBB2_263:                               ; %if.end1350.3
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_281
LBB2_264:                               ; %if.end1350.4
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_282
LBB2_265:                               ; %if.end1350.5
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_283
LBB2_266:                               ; %if.end1350.6
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_268
LBB2_267:                               ; %if.then1287.7
	.loc	2 392 27 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r133
.Ltmp217:
	.file	5 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s2
	fmka_f32 r6, r133, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s2
	exp_f32 r6, r6
.Ltmp218:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r132
.Ltmp219:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp220:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r133, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r137
.Ltmp221:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s2
	fmka_f32 r7, r132, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s2
	exp_f32 r7, r7
.Ltmp222:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r131
.Ltmp223:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp224:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r132, r6
.Ltmp225:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s2
	fmka_f32 r8, r131, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s2
	exp_f32 r8, r8
.Ltmp226:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r130
.Ltmp227:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp228:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r131, r7
.Ltmp229:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s2
	fmka_f32 r5, r130, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s2
	exp_f32 r5, r5
.Ltmp230:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r130, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r134
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r135
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r136
.Ltmp231:
	.file	6 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp232:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp233:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp234:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp235:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r8, 0x70, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
LBB2_268:                               ; %if.end1350.7
	.loc	2 0 237                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:237
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:66
	or_b32 r0, r0, 16
	.loc	2 410 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:95
	cmp_lt_i32 s0, r0, s1
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	snop 3
	sand_b64 s0, s10, s0
	sand_b64 s0, s8, s0
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_284
; %bb.269:                              ; %if.end1350.8
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_285
LBB2_270:                               ; %if.end1350.9
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_286
LBB2_271:                               ; %if.end1350.10
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_287
LBB2_272:                               ; %if.end1350.11
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_288
LBB2_273:                               ; %if.end1350.12
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_289
LBB2_274:                               ; %if.end1350.13
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_290
LBB2_275:                               ; %if.end1350.14
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_291
LBB2_276:                               ; %if.end1350.15
	.loc	2 432 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:432:1
	snop 1
	endk
LBB2_277:                               ; %if.then1287
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r201
.Ltmp236:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r201, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp237:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r200
.Ltmp238:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp239:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r201, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r205
.Ltmp240:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r200, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp241:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r199
.Ltmp242:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp243:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r200, r6
.Ltmp244:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r199, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp245:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r198
.Ltmp246:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp247:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r199, r7
.Ltmp248:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r198, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp249:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r198, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r202
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r203
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r204
.Ltmp250:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp251:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp252:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp253:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp254:
	.loc	2 425 35 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r8, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r9, r3, r9
	.loc	2 425 237 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r5_hi, 0, 0
	or_b32 r5, r3, r5
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_261
LBB2_278:                               ; %if.then1287.1
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r181
.Ltmp255:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r181, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp256:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r180
.Ltmp257:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp258:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r181, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r185
.Ltmp259:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r180, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp260:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r179
.Ltmp261:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp262:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r180, r6
.Ltmp263:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r179, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp264:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r178
.Ltmp265:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp266:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r179, r7
.Ltmp267:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r178, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp268:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r178, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r182
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r183
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r184
.Ltmp269:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp270:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp271:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp272:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp273:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r8, r2, 16
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_262
LBB2_279:                               ; %if.then1287.2
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r173
.Ltmp274:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r173, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp275:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r172
.Ltmp276:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp277:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r173, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r177
.Ltmp278:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r172, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp279:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r171
.Ltmp280:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp281:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r172, r6
.Ltmp282:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r171, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp283:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r170
.Ltmp284:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp285:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r171, r7
.Ltmp286:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r170, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp287:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r170, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r174
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r175
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r176
.Ltmp288:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp289:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp290:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp291:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp292:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r8, r2, 32
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_263
LBB2_280:                               ; %if.then1287.3
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r165
.Ltmp293:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r165, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp294:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r164
.Ltmp295:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp296:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r165, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r169
.Ltmp297:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r164, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp298:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r163
.Ltmp299:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp300:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r164, r6
.Ltmp301:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r163, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp302:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r162
.Ltmp303:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp304:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r163, r7
.Ltmp305:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r162, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp306:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r162, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r166
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r167
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r168
.Ltmp307:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp308:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp309:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp310:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp311:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r8, r2, 48
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_264
LBB2_281:                               ; %if.then1287.4
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r157
.Ltmp312:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r157, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp313:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r156
.Ltmp314:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp315:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r157, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r161
.Ltmp316:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r156, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp317:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r155
.Ltmp318:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp319:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r156, r6
.Ltmp320:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r155, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp321:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r154
.Ltmp322:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp323:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r155, r7
.Ltmp324:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r154, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp325:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r154, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r158
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r159
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r160
.Ltmp326:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp327:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp328:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp329:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp330:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r8, r2, 64
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_265
LBB2_282:                               ; %if.then1287.5
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r149
.Ltmp331:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r149, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp332:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r148
.Ltmp333:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp334:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r149, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r153
.Ltmp335:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r148, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp336:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r147
.Ltmp337:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp338:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r148, r6
.Ltmp339:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r147, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp340:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r146
.Ltmp341:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp342:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r147, r7
.Ltmp343:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r146, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp344:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r146, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r150
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r151
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r152
.Ltmp345:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp346:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp347:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp348:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp349:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r8, 0x50, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_266
LBB2_283:                               ; %if.then1287.6
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r1, 0xbfb8aa3b, r141
.Ltmp350:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r141, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp351:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r6, 0xbfb8aa3b, r140
.Ltmp352:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp353:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r4, r141, r4
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r4, r4, r145
.Ltmp354:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r140, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp355:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r7, 0xbfb8aa3b, r139
.Ltmp356:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp357:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r6, r140, r6
.Ltmp358:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r139, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp359:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r8, 0xbfb8aa3b, r138
.Ltmp360:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp361:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r7, r139, r7
.Ltmp362:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r138, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp363:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r1, r138, r1
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r1, r1, r142
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r3, r7, r143
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r5, r6, r144
.Ltmp364:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp365:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp366:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp367:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp368:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r8, 0x60, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_267
	bra LBB2_268
LBB2_284:                               ; %if.then1287.8
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r125
.Ltmp369:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r125, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp370:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r124
.Ltmp371:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp372:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r125, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r129
.Ltmp373:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r124, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp374:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r123
.Ltmp375:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp376:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r124, r5
.Ltmp377:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r123, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp378:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r122
.Ltmp379:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp380:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r123, r6
.Ltmp381:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r122, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp382:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r122, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r126
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r127
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r128
.Ltmp383:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp384:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp385:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp386:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp387:
	.loc	2 425 173 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:173
	snop 0
	or_b32 r6, 0x8000, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_270
LBB2_285:                               ; %if.then1287.9
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r117
.Ltmp388:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r117, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp389:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r116
.Ltmp390:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp391:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r117, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r121
.Ltmp392:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r116, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp393:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r115
.Ltmp394:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp395:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r116, r5
.Ltmp396:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r115, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp397:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r114
.Ltmp398:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp399:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r115, r6
.Ltmp400:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r114, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp401:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r114, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r118
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r119
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r120
.Ltmp402:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp403:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp404:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp405:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp406:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r6, 0x8010, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_271
LBB2_286:                               ; %if.then1287.10
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r109
.Ltmp407:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r109, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp408:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r108
.Ltmp409:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp410:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r109, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r113
.Ltmp411:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r108, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp412:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r107
.Ltmp413:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp414:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r108, r5
.Ltmp415:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r107, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp416:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r106
.Ltmp417:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp418:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r107, r6
.Ltmp419:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r106, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp420:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r106, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r110
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r111
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r112
.Ltmp421:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp422:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp423:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp424:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp425:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r6, 0x8020, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_272
LBB2_287:                               ; %if.then1287.11
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r101
.Ltmp426:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r101, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp427:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r100
.Ltmp428:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp429:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r101, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r105
.Ltmp430:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r100, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp431:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r99
.Ltmp432:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp433:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r100, r5
.Ltmp434:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r99, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp435:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r98
.Ltmp436:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp437:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r99, r6
.Ltmp438:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r98, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp439:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r98, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r102
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r103
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r104
.Ltmp440:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp441:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp442:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp443:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp444:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r6, 0x8030, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_273
LBB2_288:                               ; %if.then1287.12
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r93
.Ltmp445:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r93, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp446:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r92
.Ltmp447:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp448:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r93, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r97
.Ltmp449:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r92, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp450:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r91
.Ltmp451:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp452:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r92, r5
.Ltmp453:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r91, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp454:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r90
.Ltmp455:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp456:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r91, r6
.Ltmp457:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r90, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp458:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r90, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r94
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r95
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r96
.Ltmp459:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp460:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp461:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp462:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp463:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r6, 0x8040, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_274
LBB2_289:                               ; %if.then1287.13
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r85
.Ltmp464:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r85, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp465:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r84
.Ltmp466:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp467:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r85, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r89
.Ltmp468:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r84, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp469:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r83
.Ltmp470:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp471:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r84, r5
.Ltmp472:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r83, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp473:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r82
.Ltmp474:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp475:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r83, r6
.Ltmp476:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r82, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp477:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r82, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r86
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r87
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r88
.Ltmp478:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp479:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp480:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp481:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp482:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r6, 0x8050, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_275
LBB2_290:                               ; %if.then1287.14
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r77
.Ltmp483:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r77, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp484:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r76
.Ltmp485:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp486:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r77, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r81
.Ltmp487:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r76, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp488:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r75
.Ltmp489:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp490:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r76, r5
.Ltmp491:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r75, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp492:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r74
.Ltmp493:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp494:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r75, r6
.Ltmp495:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r74, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp496:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r74, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r78
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r79
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r80
.Ltmp497:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp498:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp499:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp500:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp501:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r6, 0x8060, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 410 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:410:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_276
LBB2_291:                               ; %if.then1287.15
	.loc	2 392 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:392:27
	mul_f32 r0, 0xbfb8aa3b, r69
.Ltmp502:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r69, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s0
	exp_f32 r5, r5
.Ltmp503:
	.loc	2 400 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:400:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
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
	.loc	2 391 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:391:27
	mul_f32 r5, 0xbfb8aa3b, r68
.Ltmp504:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp505:
	.loc	2 404 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:404:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 408 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:408:20
	mul_f32 r3, r69, r3
	.loc	2 422 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:422:32
	mul_f32 r3, r3, r73
.Ltmp506:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r68, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s0
	exp_f32 r6, r6
.Ltmp507:
	.loc	2 399 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:399:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
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
	.loc	2 390 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:390:27
	mul_f32 r6, 0xbfb8aa3b, r67
.Ltmp508:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp509:
	.loc	2 403 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:403:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 407 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:407:20
	mul_f32 r5, r68, r5
.Ltmp510:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r67, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s0
	exp_f32 r7, r7
.Ltmp511:
	.loc	2 398 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:398:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
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
	.loc	2 389 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:389:27
	mul_f32 r7, 0xbfb8aa3b, r66
.Ltmp512:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp513:
	.loc	2 402 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:402:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 406 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:406:20
	mul_f32 r6, r67, r6
.Ltmp514:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r66, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s0
	exp_f32 r4, r4
.Ltmp515:
	.loc	2 397 26                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:397:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 401 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:401:24
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
	.loc	2 405 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:405:20
	mul_f32 r0, r66, r0
	.loc	2 419 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:419:32
	mul_f32 r0, r0, r70
	.loc	2 420 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:420:32
	mul_f32 r1, r6, r71
	.loc	2 421 32                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:421:32
	mul_f32 r4, r5, r72
.Ltmp516:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp517:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp518:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp519:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp520:
	.loc	2 425 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:194
	snop 0
	or_b32 r6, 0x8070, r2
	.loc	2 425 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r2, s7
	addc_co_u32 r7, r2, r7
	.loc	2 425 237                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:425:237
	shl_b32 r2, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 432 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:432:1
	snop 2
	endk
.Ltmp521:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 32
		.macahca_streg_size 3
		.macahca_priority 0
		.macahca_float_mode 240
		.macahca_privilege 0
		.macahca_debug_mode 0
		.macahca_ieee_mode 1
		.macahca_bulky_mode 0
		.macahca_fp16_overflow_mode 0
		.macahca_perf_on 0
		.macahca_priv_segm_on 1
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
		.macahca_streg_prvt_init_on 1
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
; codeLenInByte = 38552
; NumMTRegsForWarps/PEU: 256
; NumSTRegsForWarps/PEU: 40
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 434 0                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:434:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp522:
	.loc	2 446 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:446:25
	scmp_gt_u32 s5, 31
	.loc	2 446 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:446:7
	snop 0
	bra_smskz LBB3_2
; %bb.1:                                ; %if.else
	.loc	2 451 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:451:48
	sand_b32 s0, 1, s5
	cmp_eq_u32 s2, s0, 1
	.loc	2 450 49                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:450:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 450 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:450:75
	sand_b32 s1, s4, 1
	.loc	2 450 54                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:450:54
	sor_b32 s16, s0, s1
	.loc	2 451 75 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:451:75
	sshr_b32 s0, 1, s4
	.loc	2 451 48 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:451:48
	csel_b32 r1, 14, 0, s2
	.loc	2 451 54                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:451:54
	add_u32 r1, r1, s0
	.loc	2 446 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:446:7
	bra_xmskz LBB3_3
	bra LBB3_4
LBB3_2:
                                        ; implicit-def: $mtreg_32bit_1
                                        ; implicit-def: $streg_32bit_16
LBB3_3:                                 ; %if.then
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:0
	mov_b32 r1, s4
	smov_b32 s16, s5
LBB3_4:                                 ; %if.end
	.loc	2 455 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:455:19
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
	.loc	2 471 150                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:150
	and_or_b32 r36, r4, s1, r3
	shr_b32 r2, 1, r0
	and_b32 r30, r2, 24
	or_b32 r28, 0x8000, r36
	.loc	2 471 209 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:209
	or_b32 r4, r28, r30
	or_b32 r3, r36, r30
	.loc	2 471 67                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:67
	mad_i32 r4, r4, 2, s14
	mad_i32 r6, r3, 2, s14
	shl_b32 r31, 19, r1
	.loc	2 471 45                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:45
	ldg_b128 r152, r4, 0x0
	.loc	2 471 209                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:209
	or_b32 r4, r3, 32
	or_b32 r3, 0x8020, r3
	.loc	2 471 67                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:67
	mad_i32 r8, r3, 2, s14
	shl_b32 r3, 8, r0
	and_b32 r32, 0x3f800, r3
	shl_b32 r3, 3, r0
	.loc	2 471 45                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:45
	ldg_b128 r148, r6, 0x0
	.loc	2 471 67                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:67
	mad_i32 r6, r4, 2, s14
	and_b32 r4, r3, 56
	arrive slcnt(0)
	smul_i32 s7, 0xe00000, s0
	or3_b32 r4, r4, r32, r31
	add_u32 r4, r4, s7
	.loc	2 475 356 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:356
	mad_i32 r4, r4, 2, s40
	add_co_u32 r10, 0x20000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 475 339 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:339
	ldg_b128 r18, r4, 0x0
	.loc	2 471 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:45
	ldg_b128 r164, r6, 0x0
	.loc	2 475 339                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:339
	ldg_b128 r22, r10, 0x0
	.loc	2 475 356 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:356
	add_co_u32 r10, 0x40000, r4
	addc_co_u32 r11, r5, 0
	add_co_u32 r4, 0x60000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 475 339                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:339
	ldg_b128 r38, r10, 0x0
	.loc	2 471 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:471:45
	ldg_b128 r168, r8, 0x0
	.loc	2 475 339                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:339
	ldg_b128 r42, r4, 0x0
	.loc	2 455 19                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:455:19
	sashr_i32 s1, 31, s0
	.loc	2 456 20                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:456:20
	sshl_b64 s4, 2, s0
	sadd_co_u32 s0, s8, s4
	saddc_co_u32 s1, s9, s5
	ldu_b32 s2, s0, 0x0
	.loc	2 457 19                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:457:19
	sadd_co_u32 s0, s44, s4
	saddc_co_u32 s1, s45, s5
	.loc	2 458 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:458:22
	sadd_co_u32 s4, s46, s4
	saddc_co_u32 s5, s47, s5
	and_b32 r6, r3, 16
	and_b32 r16, r3, 32
	.loc	2 457 19                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:457:19
	ldu_b32 s1, s0, 0x0
	.loc	2 458 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:458:22
	ldu_b32 s0, s4, 0x0
	mul_u24 r4, r0, 9
	add_u32 r7, r16, r0
	add_u32 r6, r6, r0
	and_b32 r5, 0x1fc0, r3
	and_b32 r4, r4, 8
	and_b32 r7, r7, 32
	and_b32 r6, r6, 16
	.loc	2 475 47                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:47
	add_u32 r8, 0x800, r5
	add_u32 r9, 0x1000, r5
	add_u32 r10, 0x1800, r5
	.loc	2 475 83 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:83
	or_b32 r11, r7, r4
	.loc	2 475 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:27
	or_b32 r4, r6, r4
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 475 253                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:253
	or3_b32 r12, r11, r5, r6
	.loc	2 475 27                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:27
	or3_b32 r13, r11, r8, r6
	or3_b32 r6, r11, r9, r6
	mov_b32 r11, s3
	or3_b32 r4, r4, r10, r7
	shl_add_u32 r12, 1, r12, r11
	shl_add_u32 r13, 1, r13, r11
	shl_add_u32 r6, 1, r6, r11
	shl_add_u32 r4, 1, r4, r11
	.loc	2 475 339                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:475:339
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r18
	arrive gvmcnt(3)
	sts_b128 r13, 0x0, r22
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r38
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r42
.Ltmp523:
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
.Ltmp524:
	.loc	2 478 3                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:478:3
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
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:0
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
	.loc	2 478 3                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:478:3
	add_co_u32 r184, 0x88, r28
	shl_add_u32 r4, 1, r4, 0
	or3_b32 r180, r31, r32, r33
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:0
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
	.loc	2 478 3                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:478:3
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
	.loc	2 478 31                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:478:31
	sadd_co_u32 s14, 0x80, s14
	add_co_u32 r178, 0x100, r178
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r179, r179, 0
	add_co_u32 r184, 0x100, r184
	scmp_eq_u64 0x800, s14
	addc_co_u32 r185, r185, 0
	.loc	2 478 3                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:478:3
	bra_smsks LBB3_12
LBB3_6:                                 ; %for.cond147.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 480 487 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:480:487
	add_u32 r28, r180, s14
	mad_i32 r30, r28, 2, s8
.Ltmp525:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp526:
	.loc	2 480 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:480:487
	add_u32 r29, 0x10000, r28
.Ltmp527:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s7, md
.Ltmp528:
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	add_i32 r190, 0x4000, r9
.Ltmp529:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp530:
	.loc	2 480 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:480:487
	mad_i32 r30, r29, 2, s8
.Ltmp531:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp532:
	.loc	2 480 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:480:487
	add_u32 r30, 0x20000, r28
	mad_i32 r186, r30, 2, s8
	add_u32 r31, 0x30000, r28
.Ltmp533:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp534:
	.loc	2 480 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:480:487
	mad_i32 r186, r31, 2, s8
	.loc	2 484 71                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:71
	add_co_u32 r183, r176, s14
.Ltmp535:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp536:
	.loc	2 484 71                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:71
	mov_b32 r186, s15
	addc_co_u32 r187, r177, r186
	add_co_u32 r188, r182, s14
	addc_co_u32 r189, r181, r186
	.loc	2 484 233 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:233
	or_b32 r188, r188, 32
	.loc	2 484 71                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:71
	shl_b64 r204, 1, r188
	.loc	2 488 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	add_i32 r189, 0x4000, r8
	.loc	2 484 233                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:233
	or_b32 r186, r183, 32
	.loc	2 484 71 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:71
	shl_b64 r202, 1, r186
	.loc	2 488 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r192, r189, 0x0
	lds_b128 r196, r190, 0x0
	.loc	2 484 71                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:71
	add_co_u32 r186, s3, r202
	mov_b32 r183, s4
	addc_co_u32 r187, r183, r203
	add_co_u32 r188, s3, r204
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r172, r192, r148, r172
	.loc	2 484 71                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:71
	addc_co_u32 r189, r183, r205
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	add_i32 r183, 0x4000, r10
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	mma_16x16x16f16 r124, r192, r152, r124
	mma_16x16x16f16 r172, r194, r150, r172
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r11
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	mma_16x16x16f16 r124, r194, r154, r124
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r196, r148, r160
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	mma_16x16x16f16 r120, r196, r152, r120
	mma_16x16x16f16 r160, r198, r150, r160
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r13
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	mma_16x16x16f16 r120, r198, r154, r120
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r148, r156
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	mma_16x16x16f16 r116, r206, r152, r116
	mma_16x16x16f16 r156, r208, r150, r156
	mma_16x16x16f16 r116, r208, r154, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r148, r144
	mma_16x16x16f16 r112, r190, r152, r112
	mma_16x16x16f16 r144, r192, r150, r144
	mma_16x16x16f16 r112, r192, r154, r112
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r15
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r148, r140
	mma_16x16x16f16 r108, r194, r152, r108
	mma_16x16x16f16 r140, r196, r150, r140
	mma_16x16x16f16 r108, r196, r154, r108
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r148, r136
	mma_16x16x16f16 r104, r198, r152, r104
	mma_16x16x16f16 r136, r200, r150, r136
	mma_16x16x16f16 r104, r200, r154, r104
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r148, r132
	mma_16x16x16f16 r100, r190, r152, r100
	mma_16x16x16f16 r132, r192, r150, r132
	mma_16x16x16f16 r100, r192, r154, r100
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r148, r128
	mma_16x16x16f16 r96, r194, r152, r96
	mma_16x16x16f16 r128, r196, r150, r128
	mma_16x16x16f16 r96, r196, r154, r96
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r19
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r198, r164, r172
	mma_16x16x16f16 r124, r198, r168, r124
	mma_16x16x16f16 r172, r200, r166, r172
	mma_16x16x16f16 r124, r200, r170, r124
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r190, r164, r160
	mma_16x16x16f16 r120, r190, r168, r120
	mma_16x16x16f16 r160, r192, r166, r160
	mma_16x16x16f16 r120, r192, r170, r120
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r21
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r164, r156
	mma_16x16x16f16 r116, r194, r168, r116
	mma_16x16x16f16 r156, r196, r166, r156
	mma_16x16x16f16 r116, r196, r170, r116
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r164, r144
	mma_16x16x16f16 r112, r198, r168, r112
	mma_16x16x16f16 r144, r200, r166, r144
	mma_16x16x16f16 r112, r200, r170, r112
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r23
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r164, r140
	mma_16x16x16f16 r108, r190, r168, r108
	mma_16x16x16f16 r140, r192, r166, r140
	mma_16x16x16f16 r108, r192, r170, r108
	.loc	2 488 41                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:488:41
	lds_b128 r190, r183, 0x0
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r164, r136
	mma_16x16x16f16 r104, r194, r168, r104
	mma_16x16x16f16 r136, r196, r166, r136
	mma_16x16x16f16 r104, r196, r170, r104
	.loc	2 484 49                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:49
	ldg_b128 r194, r178, -0x8
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r198, r164, r132
	mma_16x16x16f16 r100, r198, r168, r100
	mma_16x16x16f16 r132, r200, r166, r132
	mma_16x16x16f16 r100, r200, r170, r100
	.loc	2 484 49                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:49
	ldg_b128 r198, r184, -0x8
	.loc	2 494 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:494:58
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r190, r164, r128
	mma_16x16x16f16 r96, r190, r168, r96
	mma_16x16x16f16 r128, r192, r166, r128
	mma_16x16x16f16 r96, r192, r170, r96
	.loc	2 484 49                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:484:49
	ldg_b128 r190, r186, 0x0
	ldg_b128 r186, r188, 0x0
.Ltmp537:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp538:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp539:
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r222, r8, 0x0
	lds_b128 r226, r9, 0x0
	lds_b128 r230, r10, 0x0
	.loc	2 507 488                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:507:488
	add_u32 r183, 0x10040, r28
	mad_i32 r210, r183, 2, s40
	add_u32 r183, 0x20040, r28
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r222, r148, r92
	.loc	2 507 488                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:507:488
	mad_i32 r214, r183, 2, s40
	add_u32 r183, 0x30040, r28
	mad_i32 r206, r28, 2, s40
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	mma_16x16x16f16 r60, r222, r152, r60
	.loc	2 507 488                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:507:488
	mad_i32 r218, r183, 2, s40
.Ltmp540:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r206, r206, 0x80
	ldg_b128 r210, r210, 0x0
.Ltmp541:
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	mma_16x16x16f16 r92, r224, r150, r92
.Ltmp542:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r214, r214, 0x0
	ldg_b128 r218, r218, 0x0
.Ltmp543:
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	mma_16x16x16f16 r60, r224, r154, r60
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r222, r11, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r226, r148, r88
	mma_16x16x16f16 r56, r226, r152, r56
	mma_16x16x16f16 r88, r228, r150, r88
	mma_16x16x16f16 r56, r228, r154, r56
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r226, r12, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r230, r148, r84
	mma_16x16x16f16 r52, r230, r152, r52
	mma_16x16x16f16 r84, r232, r150, r84
	mma_16x16x16f16 r52, r232, r154, r52
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r230, r13, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r222, r148, r80
	mma_16x16x16f16 r48, r222, r152, r48
	mma_16x16x16f16 r80, r224, r150, r80
	mma_16x16x16f16 r48, r224, r154, r48
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r222, r14, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r226, r148, r76
	mma_16x16x16f16 r44, r226, r152, r44
	mma_16x16x16f16 r76, r228, r150, r76
	mma_16x16x16f16 r44, r228, r154, r44
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r226, r15, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r230, r148, r72
	mma_16x16x16f16 r40, r230, r152, r40
	mma_16x16x16f16 r72, r232, r150, r72
	mma_16x16x16f16 r40, r232, r154, r40
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r230, r16, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r222, r148, r68
	mma_16x16x16f16 r36, r222, r152, r36
	mma_16x16x16f16 r68, r224, r150, r68
	mma_16x16x16f16 r36, r224, r154, r36
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r222, r17, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r226, r148, r64
	mma_16x16x16f16 r32, r226, r152, r32
	mma_16x16x16f16 r64, r228, r150, r64
	mma_16x16x16f16 r32, r228, r154, r32
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r226, r18, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r230, r164, r92
	mma_16x16x16f16 r60, r230, r168, r60
	mma_16x16x16f16 r92, r232, r166, r92
	mma_16x16x16f16 r60, r232, r170, r60
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r230, r19, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r222, r164, r88
	mma_16x16x16f16 r56, r222, r168, r56
	mma_16x16x16f16 r88, r224, r166, r88
	mma_16x16x16f16 r56, r224, r170, r56
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r222, r20, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r226, r164, r84
	mma_16x16x16f16 r52, r226, r168, r52
	mma_16x16x16f16 r84, r228, r166, r84
	mma_16x16x16f16 r52, r228, r170, r52
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r226, r21, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r230, r164, r80
	mma_16x16x16f16 r48, r230, r168, r48
	mma_16x16x16f16 r80, r232, r166, r80
	mma_16x16x16f16 r48, r232, r170, r48
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r230, r22, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r222, r164, r76
	mma_16x16x16f16 r44, r222, r168, r44
	mma_16x16x16f16 r76, r224, r166, r76
	mma_16x16x16f16 r44, r224, r170, r44
	.loc	2 511 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:511:43
	lds_b128 r222, r23, 0x0
	.loc	2 517 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:517:58
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
.Ltmp544:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:21:41
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r210
	arrive gvmcnt(1)
	sts_b128 r26, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r27, 0x0, r218
.Ltmp545:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp546:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp547:
	.loc	2 527 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:527:487
	mad_i32 r206, r28, 2, s18
	.loc	2 529 16                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:529:16
	mov_b32 r208, 0x780
	mov_b32 r209, 0
	cmp_lg_u64 s22, s14, r208
.Ltmp548:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp549:
	.loc	2 527 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:527:487
	mad_i32 r206, r29, 2, s18
.Ltmp550:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp551:
	.loc	2 527 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:527:487
	mad_i32 r206, r30, 2, s18
.Ltmp552:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp553:
	.loc	2 527 487                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:527:487
	mad_i32 r206, r31, 2, s18
.Ltmp554:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp555:
	.loc	4 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp556:
	.loc	2 529 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:529:9
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmskz LBB3_8
; %bb.7:                                ; %for.cond630.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 532 71                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:532:71
	add_co_u32 r166, s5, r202
	mov_b32 r164, s6
	addc_co_u32 r167, r164, r203
	add_co_u32 r168, s5, r204
	addc_co_u32 r169, r164, r205
	.loc	2 532 49 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:532:49
	ldg_b128 r148, r178, 0x78
	ldg_b128 r152, r184, 0x78
	ldg_b128 r164, r166, 0x0
	ldg_b128 r168, r168, 0x0
LBB3_8:                                 ; %if.end666
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 537 43 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	add_i32 r183, 0x4000, r8
	add_i32 r202, 0x4000, r9
	snop 0
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r10
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r11
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r204, r194, r172
	mma_16x16x16f16 r124, r204, r198, r124
	mma_16x16x16f16 r172, r206, r196, r172
	mma_16x16x16f16 r124, r206, r200, r124
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r204, r202, 0x0
	add_i32 r202, 0x4000, r13
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r208, r194, r160
	mma_16x16x16f16 r120, r208, r198, r120
	mma_16x16x16f16 r160, r210, r196, r160
	mma_16x16x16f16 r120, r210, r200, r120
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r212, r194, r156
	mma_16x16x16f16 r116, r212, r198, r116
	mma_16x16x16f16 r156, r214, r196, r156
	mma_16x16x16f16 r116, r214, r200, r116
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r15
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r194, r144
	mma_16x16x16f16 r112, r204, r198, r112
	mma_16x16x16f16 r144, r206, r196, r144
	mma_16x16x16f16 r112, r206, r200, r112
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r194, r140
	mma_16x16x16f16 r108, r208, r198, r108
	mma_16x16x16f16 r140, r210, r196, r140
	mma_16x16x16f16 r108, r210, r200, r108
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r19
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r194, r136
	mma_16x16x16f16 r104, r212, r198, r104
	mma_16x16x16f16 r136, r214, r196, r136
	mma_16x16x16f16 r104, r214, r200, r104
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r194, r132
	mma_16x16x16f16 r100, r204, r198, r100
	mma_16x16x16f16 r132, r206, r196, r132
	mma_16x16x16f16 r100, r206, r200, r100
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r208, r194, r128
	mma_16x16x16f16 r96, r208, r198, r96
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r96, r210, r200, r96
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r190, r172
	mma_16x16x16f16 r124, r212, r186, r124
	mma_16x16x16f16 r172, r214, r192, r172
	mma_16x16x16f16 r124, r214, r188, r124
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r21
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r204, r190, r160
	mma_16x16x16f16 r120, r204, r186, r120
	mma_16x16x16f16 r160, r206, r192, r160
	mma_16x16x16f16 r120, r206, r188, r120
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r208, r190, r156
	mma_16x16x16f16 r116, r208, r186, r116
	mma_16x16x16f16 r156, r210, r192, r156
	mma_16x16x16f16 r116, r210, r188, r116
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r23
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r212, r190, r144
	mma_16x16x16f16 r112, r212, r186, r112
	mma_16x16x16f16 r144, r214, r192, r144
	mma_16x16x16f16 r112, r214, r188, r112
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r212, r183, 0x0
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r190, r140
	mma_16x16x16f16 r108, r204, r186, r108
	.loc	2 537 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:537:43
	lds_b128 r202, r202, 0x0
	.loc	2 543 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:543:58
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
.Ltmp557:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp558:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp559:
	.loc	2 555 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:555:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond774.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp560:
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
.Ltmp561:
LBB3_10:                                ; %if.end857
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r28, r8, 0x0
	lds_b128 r202, r9, 0x0
	lds_b128 r206, r10, 0x0
	.loc	2 576 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:576:9
	sandn_b64 cmsk, xmsk, s22
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r28, r194, r92
	mma_16x16x16f16 r60, r28, r198, r60
	mma_16x16x16f16 r92, r30, r196, r92
	mma_16x16x16f16 r60, r30, r200, r60
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r28, r11, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r194, r88
	mma_16x16x16f16 r56, r202, r198, r56
	mma_16x16x16f16 r88, r204, r196, r88
	mma_16x16x16f16 r56, r204, r200, r56
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r202, r12, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r194, r84
	mma_16x16x16f16 r52, r206, r198, r52
	mma_16x16x16f16 r84, r208, r196, r84
	mma_16x16x16f16 r52, r208, r200, r52
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r206, r13, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r28, r194, r80
	mma_16x16x16f16 r48, r28, r198, r48
	mma_16x16x16f16 r80, r30, r196, r80
	mma_16x16x16f16 r48, r30, r200, r48
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r28, r14, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r194, r76
	mma_16x16x16f16 r44, r202, r198, r44
	mma_16x16x16f16 r76, r204, r196, r76
	mma_16x16x16f16 r44, r204, r200, r44
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r202, r15, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r194, r72
	mma_16x16x16f16 r40, r206, r198, r40
	mma_16x16x16f16 r72, r208, r196, r72
	mma_16x16x16f16 r40, r208, r200, r40
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r206, r16, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r28, r194, r68
	mma_16x16x16f16 r36, r28, r198, r36
	mma_16x16x16f16 r68, r30, r196, r68
	mma_16x16x16f16 r36, r30, r200, r36
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r28, r17, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r202, r194, r64
	mma_16x16x16f16 r32, r202, r198, r32
	mma_16x16x16f16 r64, r204, r196, r64
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r194, r18, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	mma_16x16x16f16 r32, r204, r200, r32
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r198, r19, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
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
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r28, r20, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r52, r194, r186, r52
	mma_16x16x16f16 r84, r196, r192, r84
	mma_16x16x16f16 r52, r196, r188, r52
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r194, r21, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r48, r198, r186, r48
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r188, r48
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r198, r22, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r28, r190, r76
	mma_16x16x16f16 r44, r28, r186, r44
	mma_16x16x16f16 r76, r30, r192, r76
	mma_16x16x16f16 r44, r30, r188, r44
	.loc	2 562 43                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:562:43
	lds_b128 r28, r23, 0x0
	.loc	2 568 58                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:568:58
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
	.loc	2 576 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:576:9
	bra_cmsks LBB3_5
; %bb.11:                               ; %for.body957.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp562:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
	barrier
	barrier
	barrier
.Ltmp563:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_5
.Ltmp564:
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
	.loc	2 585 92 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:585:92
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
	.loc	2 585 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:585:9
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then985
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sub_u32 r2, r6, s0
	.loc	2 587 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:587:15
	cmp_ge_i32 s14, r6, s0
	cmp_gt_i32 s18, 0x2380, r2
	mov_b32 r4, 0
	.loc	2 587 148 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:587:148
	snop 2
	sand_b64 s18, s14, s18
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1012
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:148
	shl_b64 r10, 2, r8
	add_co_u32 r10, s12, r10
	mov_b32 r2, s13
	addc_co_u32 r11, r2, r11
	.loc	2 588 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:588:19
	snop 1
	ldg_b32 r4, r10, 0x0
LBB3_15:                                ; %Flow523
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_16:                                ; %for.inc1036
	sor_b64 xmsk, xmsk, s8
	.loc	2 585 63 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:585:63
	or_b32 r10, r14, 16
	mov_b32 r11, r7
	.loc	2 585 92 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:585:92
	cmp_lt_i64 s14, r10, s4
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 585 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:585:9
	snop 2
	and_xmsk s8, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then985.1
	.loc	2 587 102 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:587:102
	add_u32 r2, r6, 16
	.loc	2 587 15 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:587:15
	cmp_ge_i32 s14, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x2380, r2
	mov_b32 r2, 0
	.loc	2 587 148                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:587:148
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1012.1
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:148
	shl_b64 r6, 2, r8
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 588 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:588:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow522
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:19
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
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1056
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(0)
	mul_f32 r1, r172, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r173, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r174, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r6, r175, r4
.Ltmp565:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp566:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp567:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp568:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp569:
LBB3_22:                                ; %if.end1111
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 22 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r6, r0, 2, s10
	.loc	2 613 226 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1056.1
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(1)
	mul_f32 r1, r160, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r161, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r162, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r10, r163, r4
.Ltmp570:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp571:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp572:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp573:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp574:
LBB3_24:                                ; %if.end1111.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 16
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r18, r1, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r18, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1056.2
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(2)
	mul_f32 r1, r156, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r157, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r158, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r10, r159, r4
.Ltmp575:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp576:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp577:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp578:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp579:
LBB3_26:                                ; %if.end1111.2
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 32
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r10, r1, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1056.3
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(3)
	mul_f32 r1, r144, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r145, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r146, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r12, r147, r4
.Ltmp580:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp581:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp582:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp583:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp584:
LBB3_28:                                ; %if.end1111.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 48
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r24, r1, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1056.4
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(4)
	mul_f32 r1, r140, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r141, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r142, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r12, r143, r4
.Ltmp585:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp586:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp587:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp588:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp589:
LBB3_30:                                ; %if.end1111.4
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 64
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r12, r1, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1056.5
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(5)
	mul_f32 r1, r136, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r137, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r138, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r15, r139, r4
.Ltmp590:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp591:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp592:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp593:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp594:
LBB3_32:                                ; %if.end1111.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, 0x50, r0
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 0
	stg_b64 r28, 0x0, r8 devc
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1056.6
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(6)
	mul_f32 r1, r132, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r133, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r134, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r8, r135, r4
.Ltmp595:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp596:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp597:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp598:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp599:
LBB3_34:                                ; %if.end1111.6
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, 0x60, r0
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r8, r1, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r8, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1056.7
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(7)
	mul_f32 r1, r128, r4
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r129, r4
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r130, r4
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r15, r131, r4
.Ltmp600:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp601:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp602:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp603:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp604:
LBB3_36:                                ; %if.end1111.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, 0x70, r0
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r26, r1, 2, s10
	.loc	2 597 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:66
	or_b32 r1, r14, 16
	.loc	2 597 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:95
	cmp_ge_i32 s0, r1, s4
	cmp_lt_i32 s4, r1, s4
	.loc	2 613 226 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	stg_b64 r26, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 597 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	snop 1
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1056.8
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(8)
	mul_f32 r1, r124, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r125, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r126, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r14, r127, r2
.Ltmp605:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp606:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp607:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp608:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp609:
LBB3_38:                                ; %if.end1111.8
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 162 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:162
	add_u32 r0, 0x1c000, r0
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r14, r0, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1056.9
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(9)
	mul_f32 r1, r120, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r121, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r122, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r20, r123, r2
.Ltmp610:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp611:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp612:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp613:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp614:
LBB3_40:                                ; %if.end1111.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 16
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1056.10
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(10)
	mul_f32 r1, r116, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r117, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r118, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r16, r119, r2
.Ltmp615:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp616:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp617:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp618:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp619:
LBB3_42:                                ; %if.end1111.10
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 32
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r16, r1, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r16, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1056.11
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(11)
	mul_f32 r1, r112, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r113, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r114, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r22, r115, r2
.Ltmp620:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp621:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp622:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp623:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp624:
LBB3_44:                                ; %if.end1111.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 48
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r112, r1, 2, s10
	shl_b64 r22, 0, 0
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 0
	stg_b64 r112, 0x0, r20 devc
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1056.12
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(12)
	mul_f32 r1, r108, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r109, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r110, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r20, r111, r2
.Ltmp625:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp626:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp627:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp628:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp629:
LBB3_46:                                ; %if.end1111.12
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, r0, 64
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r20, r1, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r20, 0x0, r22 devc
	shl_b64 r22, 0, 0
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1056.13
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(13)
	mul_f32 r1, r104, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r105, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r106, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r104, r107, r2
.Ltmp630:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp631:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp632:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp633:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r104
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp634:
LBB3_48:                                ; %if.end1111.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, 0x50, r0
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r104, r1, 2, s10
	shl_b64 r106, 0, 0
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 0
	stg_b64 r104, 0x0, r22 devc
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1056.14
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(14)
	mul_f32 r1, r100, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r101, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r102, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r22, r103, r2
.Ltmp635:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp636:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp637:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp638:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp639:
LBB3_50:                                ; %if.end1111.14
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r1, 0x60, r0
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r100, 0, 0
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 0
	stg_b64 r22, 0x0, r106 devc
	.loc	2 597 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:597:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1056.15
	.loc	2 602 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:602:22
	arrive gvmcnt(15)
	mul_f32 r1, r96, r2
	.loc	2 603 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:603:22
	mul_f32 r3, r97, r2
	.loc	2 604 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:604:22
	mul_f32 r5, r98, r2
	.loc	2 605 22                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:605:22
	mul_f32 r96, r99, r2
.Ltmp640:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp641:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp642:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp643:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp644:
LBB3_52:                                ; %if.end1111.15
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 613 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:183
	or_b32 r0, 0x70, r0
	.loc	2 613 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:22
	mad_i32 r0, r0, 2, s10
	.loc	2 613 226                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:613:226
	snop 1
	stg_b64 r0, 0x0, r100 devc
	.loc	2 617 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1219.1.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	shl_b64 r96, 0, 0
	snop 1
	stg_b64 r6, 0x100, r96 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow521
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s4, s4
	shl_b64 r96, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1158
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	arrive gvmcnt(16)
	mul_f32 r3, r92, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r93, r4
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r92, r94, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r93, r95, r4
.Ltmp645:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp646:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp647:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp648:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp649:
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r6, 0x100, r94 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r88, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r89, r4
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r6, r90, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r7, r91, r4
.Ltmp650:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp651:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp652:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp653:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp654:
LBB3_56:                                ; %if.end1219.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r18, 0x100, r96 devc
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1219.3.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r10, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_58:                                ; %Flow520
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1158.2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	arrive gvmcnt(17)
	mul_f32 r6, r86, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r7, r87, r4
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r84, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r85, r4
.Ltmp655:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp656:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp657:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp658:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp659:
	.loc	2 624 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	stg_b64 r10, 0x100, r18 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r80, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r81, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r10, r83, r4
.Ltmp660:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp661:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp662:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp663:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp664:
LBB3_60:                                ; %if.end1219.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1219.5.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r12, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_62:                                ; %Flow519
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1158.4
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	arrive gvmcnt(18)
	mul_f32 r6, r78, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r7, r79, r4
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r76, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r77, r4
.Ltmp665:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp666:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp667:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp668:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp669:
	.loc	2 624 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	stg_b64 r12, 0x100, r10 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r72, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r73, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r10, r75, r4
.Ltmp670:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp671:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp672:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp673:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp674:
LBB3_64:                                ; %if.end1219.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	and_xmsk s4, s2
	sxor_b64 s2, xmsk, s4
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1219.7.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r8, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_8
LBB3_66:                                ; %Flow518
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s2, s2
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1158.6
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	arrive gvmcnt(19)
	mul_f32 r6, r70, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r7, r71, r4
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r68, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r69, r4
.Ltmp675:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp676:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp677:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp678:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp679:
	.loc	2 624 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	snop 0
	mul_f32 r7, r66, r4
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	stg_b64 r8, 0x100, r10 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r64, r4
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r5, r65, r4
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r4, r67, r4
.Ltmp680:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp681:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp682:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp683:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp684:
LBB3_68:                                ; %if.end1219.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1219.9.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r14, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_70:                                ; %Flow517
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s2, s2
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1158.8
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r4, r61, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r5, r62, r2
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r60, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r6, r63, r2
.Ltmp685:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp686:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp687:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp688:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp689:
	.loc	2 623 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	stg_b64 r14, 0x100, r8 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r56, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r6, r58, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r7, r59, r2
.Ltmp690:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp691:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp692:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp693:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp694:
LBB3_72:                                ; %if.end1219.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1219.11.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow516
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1158.10
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r4, r53, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r5, r54, r2
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r52, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r6, r55, r2
.Ltmp695:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp696:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp697:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp698:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp699:
	.loc	2 623 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	stg_b64 r16, 0x100, r8 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r48, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r6, r50, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r7, r51, r2
.Ltmp700:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp701:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp702:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp703:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp704:
LBB3_76:                                ; %if.end1219.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r112, 0x100, r4 devc
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1219.13.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r20, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_20
LBB3_78:                                ; %Flow515
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1158.12
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r4, r45, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r5, r46, r2
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r44, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r6, r47, r2
.Ltmp705:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp706:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp707:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp708:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp709:
	.loc	2 623 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	stg_b64 r20, 0x100, r8 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r40, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r6, r42, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r7, r43, r2
.Ltmp710:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp711:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp712:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp713:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp714:
LBB3_80:                                ; %if.end1219.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r104, 0x100, r4 devc
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
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
	.loc	2 0 9 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 635 1                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:635:1
	snop 0
	endk
LBB3_83:                                ; %if.end1219.15.critedge
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r22, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_22
	.loc	2 617 9                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:617:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1158.14
	.loc	2 623 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	mul_f32 r4, r37, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r5, r38, r2
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r36, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r6, r39, r2
.Ltmp715:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp716:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp717:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp718:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp719:
	.loc	2 623 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:623:24
	snop 0
	mul_f32 r5, r33, r2
	.loc	2 633 234                       ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	stg_b64 r22, 0x100, r8 devc
	.loc	2 622 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:622:24
	mul_f32 r3, r32, r2
	.loc	2 624 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:624:24
	mul_f32 r6, r34, r2
	.loc	2 625 24                        ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:625:24
	mul_f32 r2, r35, r2
.Ltmp720:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp721:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp722:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp723:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp724:
	.loc	2 633 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:633:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 635 1                         ; /tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp:635:1
	snop 0
	endk
.Ltmp725:
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
	.byte	9                               ; Abbreviation Code
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
	.byte	10                              ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x54d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x60:0x234 DW_TAG_subprogram
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
	.byte	8                               ; Abbrev [8] 0xdf:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	264                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xf4:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x109:0x4b DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	268                             ; DW_AT_call_line
	.byte	11                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x116:0x25 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	113                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x122:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x12e:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	100                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x13b:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x147:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x154:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp100                        ; DW_AT_low_pc
	.long	.Ltmp101-.Ltmp100               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	272                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x169:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp100                        ; DW_AT_low_pc
	.long	.Ltmp101-.Ltmp100               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x17e:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp102                        ; DW_AT_low_pc
	.long	.Ltmp103-.Ltmp102               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	358                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x193:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp102                        ; DW_AT_low_pc
	.long	.Ltmp103-.Ltmp102               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x1a8:0x4b DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	362                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1b5:0x25 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	113                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1c1:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1cd:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	100                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1da:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x1e6:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x1f3:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	396                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x200:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	395                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x20d:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	394                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x21a:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	393                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x227:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	423                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x234:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x241:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x24e:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x25d:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	424                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x26a:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x277:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x284:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x294:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x29a:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2a0:0x6 DW_TAG_subprogram
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2a6:0x6 DW_TAG_subprogram
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2ac:0x6 DW_TAG_subprogram
	.long	.Linfo_string16                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x2b2:0x2a5 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string18                 ; DW_AT_name
	.byte	8                               ; Abbrev [8] 0x2c3:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp523                        ; DW_AT_low_pc
	.long	.Ltmp524-.Ltmp523               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	477                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x2d8:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp523                        ; DW_AT_low_pc
	.long	.Ltmp524-.Ltmp523               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x2ed:0x1a DW_TAG_inlined_subroutine
	.long	666                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	480                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x2fa:0xc DW_TAG_inlined_subroutine
	.long	660                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x307:0x2a DW_TAG_inlined_subroutine
	.long	678                             ; DW_AT_abstract_origin
	.quad	.Ltmp537                        ; DW_AT_low_pc
	.long	.Ltmp538-.Ltmp537               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	503                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x31c:0x14 DW_TAG_inlined_subroutine
	.long	672                             ; DW_AT_abstract_origin
	.quad	.Ltmp537                        ; DW_AT_low_pc
	.long	.Ltmp538-.Ltmp537               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x331:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp538                        ; DW_AT_low_pc
	.long	.Ltmp539-.Ltmp538               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	505                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x346:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp538                        ; DW_AT_low_pc
	.long	.Ltmp539-.Ltmp538               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x35b:0xd DW_TAG_inlined_subroutine
	.long	684                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	507                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x368:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp545                        ; DW_AT_low_pc
	.long	.Ltmp546-.Ltmp545               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	525                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x37d:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp545                        ; DW_AT_low_pc
	.long	.Ltmp546-.Ltmp545               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x392:0x1a DW_TAG_inlined_subroutine
	.long	666                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	527                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x39f:0xc DW_TAG_inlined_subroutine
	.long	660                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3ac:0x2a DW_TAG_inlined_subroutine
	.long	678                             ; DW_AT_abstract_origin
	.quad	.Ltmp557                        ; DW_AT_low_pc
	.long	.Ltmp558-.Ltmp557               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	552                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3c1:0x14 DW_TAG_inlined_subroutine
	.long	672                             ; DW_AT_abstract_origin
	.quad	.Ltmp557                        ; DW_AT_low_pc
	.long	.Ltmp558-.Ltmp557               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3d6:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp558                        ; DW_AT_low_pc
	.long	.Ltmp559-.Ltmp558               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	554                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3eb:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp558                        ; DW_AT_low_pc
	.long	.Ltmp559-.Ltmp558               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x400:0x2a DW_TAG_inlined_subroutine
	.long	666                             ; DW_AT_abstract_origin
	.quad	.Ltmp560                        ; DW_AT_low_pc
	.long	.Ltmp561-.Ltmp560               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	557                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x415:0x14 DW_TAG_inlined_subroutine
	.long	660                             ; DW_AT_abstract_origin
	.quad	.Ltmp560                        ; DW_AT_low_pc
	.long	.Ltmp561-.Ltmp560               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x42a:0x2a DW_TAG_inlined_subroutine
	.long	678                             ; DW_AT_abstract_origin
	.quad	.Ltmp562                        ; DW_AT_low_pc
	.long	.Ltmp563-.Ltmp562               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	578                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x43f:0x14 DW_TAG_inlined_subroutine
	.long	672                             ; DW_AT_abstract_origin
	.quad	.Ltmp562                        ; DW_AT_low_pc
	.long	.Ltmp563-.Ltmp562               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x454:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp563                        ; DW_AT_low_pc
	.long	.Ltmp564-.Ltmp563               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	580                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x469:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp563                        ; DW_AT_low_pc
	.long	.Ltmp564-.Ltmp563               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x47e:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	606                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x48b:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x498:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x4a5:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x4b4:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	607                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x4c1:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x4ce:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x4db:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x4ea:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges41                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	626                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x4f7:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges42                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x504:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges43                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x511:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges44                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x520:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges45                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	627                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x52d:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges46                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x53a:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges47                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x547:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges48                ; DW_AT_ranges
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
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
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
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
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
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
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
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
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
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
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
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
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
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
	.quad	0
	.quad	0
.Ldebug_ranges34:
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
	.quad	0
	.quad	0
.Ldebug_ranges35:
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
	.quad	0
	.quad	0
.Ldebug_ranges36:
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
	.quad	0
	.quad	0
.Ldebug_ranges37:
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
	.quad	0
	.quad	0
.Ldebug_ranges38:
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
	.quad	0
	.quad	0
.Ldebug_ranges39:
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
	.quad	0
	.quad	0
.Ldebug_ranges40:
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
	.quad	0
	.quad	0
.Ldebug_ranges41:
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
	.quad	0
	.quad	0
.Ldebug_ranges42:
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
	.quad	0
	.quad	0
.Ldebug_ranges43:
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
.Ldebug_ranges44:
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
.Ldebug_ranges45:
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
	.quad	0
	.quad	0
.Ldebug_ranges46:
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
	.quad	0
	.quad	0
.Ldebug_ranges47:
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
.Ldebug_ranges48:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/tile-moe-scratch-20260814/v056-work/codegen_candidate_case3/v056_candidate_case3_generated_device.cpp" ; string offset=32
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
    .mtreg_count:    256
    .name:           kernel_kernel
    .private_memory_size: 20
    .share_memory_size: 0
    .streg_count:    40
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
